from typing import List, Dict, Tuple, Optional, Callable
import json
import ast
import os
import glob
import csv

schemaPath: str = "./schema.json"
schema: dict = {}
Parse = Callable[[str], Tuple[bool, str]]
Method: Dict[str, Parse] = {}


def register():
    Method["int"] = handleInt
    Method["float"] = handleFloat
    Method["bool"] = handleBool
    Method["double"] = handleDouble
    Method["string"] = handleString
    Method["uint"] = handleUint
    Method["long"] = handleLong
    Method["int32"] = handleInt
    Method["int64"] = handleLong
    Method["str"] = handleString
    Method["list"] = lambda d: handleList(d, "List<string>")
    Method["dict"] = lambda d: handleDict(d, "Dictionary<string,string>")
    Method["dic"] = Method["dict"]
    Method["object"] = handleObjectStr


def parse_value(data: str, field_type: str) -> Tuple[bool, str]:
    field_type = field_type.strip()

    if field_type in Method:
        return Method[field_type](data)

    lower = field_type.lower()
    if lower.startswith("list<"):
        return handleList(data, field_type)

    if lower.startswith("dict<") or lower.startswith("dictionary<"):
        return handleDict(data, field_type)

    # 外部 enum 引用（完全限定 C# enum 类型）
    return handleEnum(data, field_type)


def handleEnum(data: str, enum_type: str) -> Tuple[bool, str]:
    clean_data = str(data).strip()
    if not clean_data:
        return False, "单元格内容为空"
    # 纯数字 → 强转
    if clean_data.isdigit() or (clean_data.startswith('-') and clean_data[1:].isdigit()):
        return True, f"({enum_type}){clean_data}"
    # 枚举成员名 → 全限定引用（编译期安全）
    return True, f"{enum_type}.{clean_data}"


def handleObjectStr(data: str) -> Tuple[bool, str]:
    clean = str(data).strip()
    if not clean:
        return False, "数据为空"
    try:
        val = ast.literal_eval(clean)
    except:
        val = clean
    return _format_object_lit(val)


def _format_object_lit(val) -> Tuple[bool, str]:
    if isinstance(val, bool):
        return True, "true" if val else "false"
    if isinstance(val, int):
        return True, str(val)
    if isinstance(val, float):
        return True, f"{val}f"
    if isinstance(val, str):
        escaped = val.replace('\\', '\\\\').replace('"', '\\"')
        return True, f'"{escaped}"'
    if isinstance(val, (list, tuple)):
        items = ", ".join(_format_object_lit(x)[1] for x in val)
        return True, f"new object[] {{ {items} }}"
    if isinstance(val, dict):
        pairs = ", ".join(
            f"{{ {_format_object_lit(k)[1]}, {_format_object_lit(v)[1]} }}"
            for k, v in val.items()
        )
        return True, f"new Dictionary<object, object> {{ {pairs} }}"
    return False, f"不支持的对象类型: {type(val).__name__}"


def handleInt(data: str) -> Tuple[bool, str]:
    if data is None:
        return False, "数据为 None"
    clean_data = str(data).strip()
    if not clean_data:
        return False, "单元格内容为空"
    try:
        val = int(clean_data)
        return True, str(val)
    except ValueError:
        return False, f"非法值: '{data}'，无法解析"


def handleFloat(data: str) -> Tuple[bool, str]:
    if data is None:
        return False, "数据为 None"
    clean_data = str(data).strip()
    if not clean_data:
        return False, "单元格内容为空"
    try:
        if clean_data.lower().endswith('f'):
            clean_data = clean_data[:-1]
        val = float(clean_data)
        return True, f"{val}f"
    except ValueError:
        return False, f"非法值: '{data}'，无法解析"


def handleBool(data: str) -> Tuple[bool, str]:
    if data is None:
        return False, "数据为 None"
    clean_data = str(data).strip().lower()
    if not clean_data:
        return False, "单元格内容为空"
    if clean_data in ("true", "1"):
        return True, "true"
    elif clean_data in ("false", "0"):
        return True, "false"
    else:
        return False, f"非法值: '{data}'，无法解析为 bool"


def handleDouble(data: str) -> Tuple[bool, str]:
    if data is None:
        return False, "数据为 None"
    clean_data = str(data).strip()
    if not clean_data:
        return False, "单元格内容为空"
    try:
        if clean_data.lower().endswith('d'):
            clean_data = clean_data[:-1]
        val = float(clean_data)
        return True, str(val)
    except ValueError:
        return False, f"非法值: '{data}'，无法解析为 double"


def handleString(data: str) -> Tuple[bool, str]:
    if data is None:
        return False, "数据为 None"
    clean_data = str(data)
    escaped = clean_data.replace('\\', '\\\\').replace('"', '\\"')
    return True, f'"{escaped}"'


def handleUint(data: str) -> Tuple[bool, str]:
    if data is None:
        return False, "数据为 None"
    clean_data = str(data).strip()
    if not clean_data:
        return False, "单元格内容为空"
    try:
        if clean_data.lower().endswith('u'):
            clean_data = clean_data[:-1]
        val = int(clean_data)
        if 0 <= val <= 4294967295:
            return True, f"{val}u"
        return False, f"数值超出 uint 范围 (0 ~ 4294967295): '{data}'"
    except ValueError:
        return False, f"非法值: '{data}'，无法解析为 uint"


def handleLong(data: str) -> Tuple[bool, str]:
    if data is None:
        return False, "数据为 None"
    clean_data = str(data).strip()
    if not clean_data:
        return False, "单元格内容为空"
    try:
        if clean_data.lower().endswith('l'):
            clean_data = clean_data[:-1]
        val = int(clean_data)
        return True, f"{val}L"
    except ValueError:
        return False, f"非法值: '{data}'，无法解析为 long"


def handleList(data: str, field_type: str) -> Tuple[bool, str]:
    clean_data = str(data).strip()
    if not clean_data:
        return False, "单元格内容为空"

    sub_type = field_type[5:-1].strip()

    try:
        raw_list = ast.literal_eval(clean_data)
        if not isinstance(raw_list, (list, tuple)):
            return False, f"数据不是列表: '{data}'"
    except Exception as e:
        return False, f"列表语法错误: '{data}', {e}"

    converted_items = []
    for item in raw_list:
        if sub_type.lower() == "object":
            ok, res = _format_object_lit(item)
        else:
            ok, res = parse_value(str(item), sub_type)
        if not ok:
            return False, f"列表元素 [{item}] 解析失败 -> {res}"
        converted_items.append(res)

    items_str = ", ".join(converted_items)
    return True, f"new() {{ {items_str} }}"


def _split_dict_kv_types(inner_str: str) -> Tuple[str, str]:
    depth = 0
    for i, char in enumerate(inner_str):
        if char in ("<", "[", "{"):
            depth += 1
        elif char in (">", "]", "}"):
            depth -= 1
        elif char == "," and depth == 0:
            key_type = inner_str[:i].strip()
            val_type = inner_str[i + 1:].strip()
            return key_type, val_type
    return "", ""


def handleDict(data: str, field_type: str) -> Tuple[bool, str]:
    clean_data = str(data).strip()
    clean_type = str(field_type).strip()

    if not clean_data:
        return False, "单元格内容为空"

    prefix_len = 0
    lower = clean_type.lower()
    if lower.startswith("dict<"):
        prefix_len = 5
    elif lower.startswith("dictionary<"):
        prefix_len = 11
    else:
        return False, f"非法 Dict 类型定义: '{field_type}'"

    if not clean_type.endswith(">"):
        return False, f"Dict 类型定义缺少结尾 '>': '{field_type}'"

    inner_type = clean_type[prefix_len:-1].strip()
    key_type, val_type = _split_dict_kv_types(inner_type)

    if not key_type or not val_type:
        return False, f"无法解析 Dict 的 Key 和 Value 类型: '{field_type}'"

    try:
        raw_dict = ast.literal_eval(clean_data)
        if not isinstance(raw_dict, dict):
            return False, f"数据格式错误: '{data}' 不是合法的字典 {{...}}"
    except Exception as e:
        return False, f"字典语法解析错误: '{data}'，原因: {e}"

    kv_pairs = []
    for k, v in raw_dict.items():
        ok_k, res_k = parse_value(str(k), key_type)
        if not ok_k:
            return False, f"字典 Key [{k}] 解析失败 -> {res_k}"
        if val_type.lower() == "object":
            ok_v, res_v = _format_object_lit(v)
        else:
            ok_v, res_v = parse_value(str(v), val_type)
        if not ok_v:
            return False, f"字典 Value [{v}] 解析失败 -> {res_v}"
        kv_pairs.append(f"{{ {res_k}, {res_v} }}")

    pairs_str = ", ".join(kv_pairs)
    return True, f"new() {{ {pairs_str} }}"


def register_class(class_name: str, fields_schema: Dict[str, str]):
    def handle_custom_class(data: str) -> Tuple[bool, str]:
        clean_data = str(data).strip()
        if not clean_data:
            return False, f"[{class_name}] 单元格内容为空"

        try:
            raw_obj = ast.literal_eval(clean_data)
        except Exception as e:
            return False, f"[{class_name}] 语法错误: '{data}'，原因: {e}"

        field_assignments = []

        if isinstance(raw_obj, (list, tuple)):
            if len(raw_obj) != len(fields_schema):
                return False, f"[{class_name}] 字段数量不匹配！定义了 {len(fields_schema)} 个，实际填了 {len(raw_obj)} 个"
            for (f_name, f_type), val in zip(fields_schema.items(), raw_obj):
                ok, res = parse_value(str(val), f_type)
                if not ok:
                    return False, f"[{class_name}] 字段 '{f_name}' 解析失败 -> {res}"
                field_assignments.append(f"{f_name} = {res}")

        elif isinstance(raw_obj, dict):
            for f_name, f_type in fields_schema.items():
                if f_name not in raw_obj:
                    return False, f"[{class_name}] 缺少必填字段 '{f_name}'"
                val = raw_obj[f_name]
                ok, res = parse_value(str(val), f_type)
                if not ok:
                    return False, f"[{class_name}] 字段 '{f_name}' 解析失败 -> {res}"
                field_assignments.append(f"{f_name} = {res}")
        else:
            return False, f"[{class_name}] 数据格式错误: 期望 [...] 或 {{...}}，实际为 {type(raw_obj).__name__}"

        assignments_str = ", ".join(field_assignments)
        return True, f"new() {{ {assignments_str} }}"

    Method[class_name] = handle_custom_class


def appendClassMethod(schema_classes_json: Dict[str, Dict[str, str]]):
    for class_name, fields in schema_classes_json.items():
        register_class(class_name, fields)


def _to_csharp_type(raw: str) -> str:
    low = raw.lower()
    if low.startswith("dict<") or low.startswith("dictionary<"):
        return "Dictionary<" + raw[raw.index("<") + 1:]
    if low.startswith("list<"):
        return "List<" + raw[raw.index("<") + 1:]
    return raw


def genStructDefineCode(struct_name: str, fields_schema: Dict[str, str]) -> str:
    field_lines = []
    for f_name, f_type in fields_schema.items():
        csharp_type = _to_csharp_type(f_type)
        field_lines.append(f"            public {csharp_type} {f_name};")
    body = "\n".join(field_lines)
    return f"        public struct {struct_name}\n        {{\n{body}\n        }}"


def parse_csv(filepath: str) -> Tuple[str, str, Optional[str], Optional[str], List[str], List[str], List[Dict[str, str]], List[int]]:
    with open(filepath, "r", encoding="utf-8-sig") as f:
        reader = list(csv.reader(f))

    if len(reader) < 2:
        raise ValueError(f"CSV 文件至少需要 2 行 (title + type): {filepath}")

    titles = [t.strip() for t in reader[0]]
    types = [t.strip() for t in reader[1]]

    class_name = None
    table_name = None
    is_dic = None
    regular_indices = []

    for i, title in enumerate(titles):
        if title == "_className":
            v = types[i] if i < len(types) else ""
            if v:
                class_name = v
        elif title == "_tableName":
            v = types[i] if i < len(types) else ""
            if v:
                table_name = v
        elif title == "_isDic":
            v = types[i] if i < len(types) else ""
            if v:
                is_dic = v.lower()
        else:
            regular_indices.append(i)

    base_name = os.path.splitext(os.path.basename(filepath))[0]
    if class_name is None:
        class_name = base_name
    if table_name is None:
        table_name = class_name + "s"

    field_names = []
    field_types = []
    key_field = None

    for i in regular_indices:
        title = titles[i]
        if title.startswith("*"):
            field_name = title[1:]
            if key_field is None:
                key_field = field_name
        else:
            field_name = title
        field_names.append(field_name)
        field_types.append(types[i] if i < len(types) else "string")

    data_rows = []
    for row in reader[2:]:
        if not any(v.strip() for v in row):
            continue
        row_data = {}
        for idx in regular_indices:
            if idx < len(row):
                row_data[idx] = row[idx].strip()
        data_rows.append(row_data)

    return class_name, table_name, is_dic, key_field, field_names, field_types, data_rows, regular_indices


def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    schema_path = os.path.join(script_dir, "schema.json")
    output_path = os.path.join(script_dir, "..", "..", "Script", "Core", "Data", "Table", "TableData.cs")

    if not os.path.exists(schema_path):
        print(f"[gen] schema.json not found at {schema_path}, skip")
        return

    with open(schema_path, "r", encoding="utf-8") as f:
        schema_classes = json.load(f)

    print(f"[gen] Loaded schema: {list(schema_classes.keys())}")

    register()
    appendClassMethod(schema_classes)

    schema_structs = []
    for class_name, fields in schema_classes.items():
        schema_structs.append(genStructDefineCode(class_name, fields))
        print(f"[gen] Registered struct: {class_name}")

    csv_files = sorted(glob.glob(os.path.join(script_dir, "*.csv")))
    table_structs = []
    table_fields = []

    for csv_file in csv_files:
        cname, tname, is_dic, key_field, fnames, ftypes, drows, regular_indices = parse_csv(csv_file)

        fields_schema = dict(zip(fnames, ftypes))
        register_class(cname, fields_schema)
        table_structs.append(genStructDefineCode(cname, fields_schema))

        entries = []
        for row_data in drows:
            assignments = []
            kv = None
            for i, (fn, ft) in enumerate(zip(fnames, ftypes)):
                col_idx = regular_indices[i]
                if col_idx not in row_data:
                    continue
                val = row_data[col_idx]
                if key_field and fn == key_field:
                    ok, kv = parse_value(val, ft)
                    if not ok:
                        print(f"  [WARN] Key parse error: {kv}")
                        kv = None
                ok, parsed = parse_value(val, ft)
                if not ok:
                    print(f"  [WARN] Field '{fn}' parse failed: {parsed}")
                    continue
                assignments.append(f"{fn} = {parsed}")

            if not assignments:
                continue

            entry = f"new() {{ {', '.join(assignments)} }}"
            if is_dic == "true" or (is_dic is None and key_field is not None):
                if kv is not None:
                    entry = f"{{ {kv}, {entry} }}"
            entries.append(entry)

        if is_dic == "true" or (is_dic is None and key_field is not None):
            assert key_field is not None
            key_type = ftypes[fnames.index(key_field)]
            key_type_cs = key_type.replace("Dict<", "Dictionary<")
            field_code = f"        public readonly Dictionary<{key_type_cs}, {cname}> {tname} = new()\n        {{"
            if entries:
                field_code += "\n            " + ",\n            ".join(entries)
            field_code += "\n        };"
        else:
            field_code = f"        public readonly List<{cname}> {tname} = new()\n        {{"
            if entries:
                field_code += "\n            " + ",\n            ".join(entries)
            field_code += "\n        };"

        table_fields.append(field_code)
        print(f"[gen] Parsed CSV: {os.path.basename(csv_file)} -> {cname}")

    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    with open(output_path, "w", encoding="utf-8") as f:
        f.write("using System.Collections.Generic;\n\n")
        f.write("namespace Core.Data\n{\n")
        f.write("    public class TableData\n    {\n")

        for s in schema_structs + table_structs:
            f.write(f"\n{s}\n")

        for tf in table_fields:
            f.write(f"\n{tf}\n")

        f.write("    }\n}\n")

    print(f"[gen] Done! Generated: {output_path}")


if __name__ == "__main__":
    main()
