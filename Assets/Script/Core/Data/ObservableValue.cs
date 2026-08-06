using System;
using Newtonsoft.Json;

namespace Core.Data
{
    /// <summary>
    /// ObservableValue — 可观察值容器
    ///
    /// 值变化时触发 OnValueChanged，供 UI 绑定等场景监听数据变更。
    /// 通过 ObservableValueConverter 在 JSON 中保持扁平结构（只序列化内部值），
    /// 因此存档文件仍表现为 "gold": 5 而不是 "gold": {"Value": 5}。
    /// </summary>
    [JsonConverter(typeof(ObservableValueConverter))]
    public class ObservableValue<T>
    {
        private T _value;

        /// <summary>值变化回调（仅在实际值改变时触发）</summary>
        public event Action<T> OnValueChanged;

        public ObservableValue()
        {
        }

        public ObservableValue(T initialValue)
        {
            _value = initialValue;
        }

        public T Value
        {
            get => _value;
            set
            {
                if (Equals(_value, value))
                {
                    return;
                }
                _value = value;
                OnValueChanged?.Invoke(_value);
            }
        }
    }

    /// <summary>
    /// ObservableValueConverter — 让 ObservableValue 序列化为内部值（扁平结构）
    /// 序列化: "gold": 5  反序列化: 5 -> ObservableValue{Value=5}
    /// </summary>
    public class ObservableValueConverter : JsonConverter
    {
        public override bool CanConvert(Type objectType)
        {
            return objectType.IsGenericType
                && objectType.GetGenericTypeDefinition() == typeof(ObservableValue<>);
        }

        public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
        {
            object inner = value.GetType().GetProperty("Value")?.GetValue(value);
            serializer.Serialize(writer, inner);
        }

        public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer)
        {
            object instance = Activator.CreateInstance(objectType);
            object inner = serializer.Deserialize(reader, objectType.GetGenericArguments()[0]);
            objectType.GetProperty("Value")?.SetValue(instance, inner);
            return instance;
        }
    }
}
