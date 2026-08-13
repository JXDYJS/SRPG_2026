using System;
using Newtonsoft.Json;

namespace Core.Data
{
    /// <summary>Observable value container; fires OnValueChanged and serializes flat via the converter.</summary>
    [JsonConverter(typeof(ObservableValueConverter))]
    public class ObservableValue<T>
    {
        private T _value;

        /// <summary>Fires when the value actually changes.</summary>
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

    /// <summary>Serializes ObservableValue as its inner value (flat JSON structure).</summary>
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
