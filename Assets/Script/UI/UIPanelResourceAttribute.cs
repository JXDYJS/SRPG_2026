using System;

namespace UI.Panel
{
    [AttributeUsage(AttributeTargets.Class, Inherited = false)]
    public class UIPanelResourceAttribute : Attribute
    {
        public string Path { get; }

        public UIPanelResourceAttribute(string path)
        {
            Path = path;
        }
    }
}
