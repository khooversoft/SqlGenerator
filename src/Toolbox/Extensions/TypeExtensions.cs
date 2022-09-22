using System.ComponentModel;
using System.Dynamic;
using Toolbox.Tools;

namespace Toolbox.Extensions;

public static class TypeExtensions
{
    public static string GetTypeName(this Type type)
    {
        return type switch
        {
            Type t when t.IsGenericType => t.Name + ":" + t.GetGenericArguments().Select(x => x.Name).Join(","),
            _ => type.Name,
        };
    }

    public static string GetTypeName<T>(this T _) => typeof(T).GetTypeName();

    public static dynamic ToDynamic(this IEnumerable<KeyValuePair<string, object>> values)
    {
        values.NotNull();

        dynamic record = new ExpandoObject();

        foreach (var item in values)
        {
            ((ICollection<KeyValuePair<string, object>>)record).Add(item);
        }

        return record;
    }

    public static dynamic ToDynamic(this object value)
    {
        IDictionary<string, object?> expando = new ExpandoObject();

        foreach (PropertyDescriptor property in TypeDescriptor.GetProperties(value.GetType()).NotNull())
            expando.Add(property.Name, property.GetValue(value));

        return (ExpandoObject)expando;
    }
}
