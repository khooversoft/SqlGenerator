using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace Toolbox.Extensions;

public static class SerializationExtensions
{
    /// <summary>
    /// Convert to Json
    /// </summary>
    /// <typeparam name="T">type</typeparam>
    /// <param name="subject">subject</param>
    /// <returns>json</returns>

    public static string ToJson<T>(this T subject) => Json.Default.Serialize(subject);

    /// <summary>
    /// Convert to Json formatted
    /// </summary>
    /// <typeparam name="T">type</typeparam>
    /// <param name="subject">subject</param>
    /// <returns>json</returns>
    public static string ToJsonFormat<T>(this T subject) => Json.Default.SerializeFormat(subject);

    /// <summary>
    /// Convert object to yaml
    /// </summary>
    /// <typeparam name="T">type</typeparam>
    /// <param name="subject">subject</param>
    /// <returns>yaml</returns>
    public static string ToYaml<T>(this T subject) => Json.Default.Serialize(subject);

    /// <summary>
    /// Covert json or yaml string to object
    /// </summary>
    /// <typeparam name="T">deserialize to type</typeparam>
    /// <param name="data">json string</param>
    /// <returns>object</returns>
    public static T? ToObject<T>(this string data, bool required = false)
    {
        if (data.IsEmpty()) return default;

        return (data.StartsWith('{') || data.StartsWith('[')) switch
        {
            true => data.JsonToObject<T>(required),
            false => data.YamlToObject<T>(required),
        };
    }

    /// <summary>
    /// Covert json string to object
    /// </summary>
    /// <typeparam name="T">deserialize to type</typeparam>
    /// <param name="json">json string</param>
    /// <returns>object</returns>
    public static T? JsonToObject<T>(this string json, bool required = false)
    {
        if (json.IsEmpty()) return default;

        var obj = Json.Default.Deserialize<T>(json);
        return required switch
        {
            false => obj,
            true => obj.NotNull(name: "Deserialize error"),
        };
    }

    /// <summary>
    /// Covert yaml string to object
    /// </summary>
    /// <typeparam name="T">deserialize to type</typeparam>
    /// <param name="yaml">json string</param>
    /// <returns>object</returns>
    public static T? YamlToObject<T>(this string yaml, bool required = false)
    {
        if (yaml.IsEmpty()) return default;

        var obj = Yaml.Default.Deserialize<T>(yaml);
        return required switch
        {
            false => obj,
            true => obj.NotNull(name: "Deserialize error"),
        };
    }


}
