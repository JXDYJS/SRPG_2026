#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Unity编译调试演示脚本
演示如何使用Unity技能进行编译和调试
"""

import json
import time
import requests

class UnityCompileDebugger:
    def __init__(self, port=8090):
        self.base_url = f"http://127.0.0.1:{port}"
        self.session = requests.Session()
        self.session.headers.update({
            'Content-Type': 'application/json; charset=utf-8',
            'X-Agent-Id': 'OpenCode-Debugger'
        })
    
    def call_skill(self, skill_name, **kwargs):
        """调用Unity技能"""
        url = f"{self.base_url}/skill/{skill_name}"
        try:
            response = self.session.post(url, data=json.dumps(kwargs, ensure_ascii=False))
            if response.status_code == 200:
                return response.json()
            else:
                return {"status": "error", "error": f"HTTP {response.status_code}", "text": response.text}
        except Exception as e:
            return {"status": "error", "error": str(e)}
    
    def force_recompile(self):
        """强制重新编译所有脚本"""
        print("1. 强制重新编译所有脚本...")
        result = self.call_skill("debug_force_recompile")
        if result.get("status") == "success":
            print("   ✓ 编译已触发")
            time.sleep(3)  # 等待编译开始
            return True
        else:
            print(f"   ✗ 失败: {result.get('error', '未知错误')}")
            return False
    
    def wait_for_compile(self, timeout=30):
        """等待编译完成"""
        print("2. 等待编译完成...")
        start_time = time.time()
        while time.time() - start_time < timeout:
            result = self.call_skill("debug_check_compilation")
            if result.get("status") == "success":
                data = result.get("result", {})
                if not data.get("isCompiling", False):
                    print("   ✓ 编译完成")
                    return True
            time.sleep(1)
        print("   ⚠ 编译超时")
        return False
    
    def check_errors(self):
        """检查编译错误"""
        print("3. 检查编译错误...")
        result = self.call_skill("debug_get_errors")
        if result.get("status") == "success":
            data = result.get("result", {})
            error_count = data.get("count", 0)
            if error_count > 0:
                print(f"   ⚠ 找到 {error_count} 个编译错误:")
                for error in data.get("logs", []):
                    print(f"     - {error.get('message', '未知错误')[:100]}")
                return False
            else:
                print("   ✓ 没有编译错误")
                return True
        else:
            print(f"   ✗ 检查失败: {result.get('error', '未知错误')}")
            return False
    
    def get_console_logs(self, limit=10, filter_type=None):
        """获取控制台日志"""
        params = {"limit": limit}
        if filter_type:
            params["filter"] = filter_type
        
        result = self.call_skill("console_get_logs", **params)
        if result.get("status") == "success":
            data = result.get("result", {})
            logs = data.get("logs", [])
            return logs
        return []
    
    def write_test_log(self, message):
        """写入测试日志"""
        result = self.call_skill("console_log", message=message, type="Log")
        return result.get("status") == "success"
    
    def create_test_script(self):
        """创建测试脚本"""
        print("4. 创建测试脚本...")
        result = self.call_skill("script_create", 
                                scriptName="DebugTestScript",
                                folder="Assets/Script",
                                template="MonoBehaviour")
        if result.get("status") == "success":
            print("   ✓ 测试脚本创建成功")
            time.sleep(3)  # 等待编译
            return True
        else:
            print(f"   ✗ 创建失败: {result.get('error', '未知错误')}")
            return False
    
    def run_full_debug_cycle(self):
        """运行完整的调试循环"""
        print("=" * 60)
        print("Unity编译调试演示")
        print("=" * 60)
        
        # 1. 强制重新编译
        if not self.force_recompile():
            return
        
        # 2. 等待编译完成
        if not self.wait_for_compile():
            return
        
        # 3. 检查编译错误
        has_errors = not self.check_errors()
        
        # 4. 获取控制台输出
        print("\n4. 控制台输出分析:")
        logs = self.get_console_logs(limit=5)
        for i, log in enumerate(logs, 1):
            log_type = log.get("type", "Unknown")
            message = log.get("message", "")
            print(f"   {i}. [{log_type}] {message[:80]}...")
        
        # 5. 写入测试日志
        print("\n5. 写入测试日志...")
        if self.write_test_log("OpenCode编译调试测试完成"):
            print("   ✓ 测试日志写入成功")
        
        # 6. 创建测试脚本
        print("\n6. 执行额外测试...")
        self.create_test_script()
        
        # 7. 最终状态检查
        print("\n7. 最终状态检查:")
        self.check_errors()
        
        print("\n" + "=" * 60)
        print("调试完成!")
        if has_errors:
            print("⚠ 注意: 项目中有编译错误需要修复")
        else:
            print("✓ 项目编译状态正常")
        print("=" * 60)

def main():
    """主函数"""
    print("连接到Unity技能服务器...")
    
    # 测试连接
    try:
        response = requests.get("http://127.0.0.1:8090/", timeout=2)
        print("✓ Unity技能服务器正在运行")
    except:
        print("✗ 无法连接到Unity技能服务器")
        print("请确保Unity编辑器正在运行且UnitySkills包已安装")
        return
    
    # 创建调试器实例
    debugger = UnityCompileDebugger(port=8090)
    
    # 运行调试循环
    debugger.run_full_debug_cycle()

if __name__ == "__main__":
    main()