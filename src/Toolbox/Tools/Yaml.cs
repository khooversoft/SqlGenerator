using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Text.Json;
using System.Threading.Tasks;
using YamlDotNet.Serialization;
using YamlDotNet.Serialization.NamingConventions;

namespace Toolbox.Tools;

public class Yaml
{
    public static Yaml Default { get; } = new Yaml();

    public static ISerializer Serializer() => new SerializerBuilder()
        .WithNamingConvention(CamelCaseNamingConvention.Instance)
        .Build();

    public static IDeserializer Deserializer() => new DeserializerBuilder()
        .WithNamingConvention(CamelCaseNamingConvention.Instance)
        .Build();

    public T? Deserialize<T>(string subject) => Deserializer().Deserialize<T>(subject);
    public string Serialize<T>(T subject) => Serializer().Serialize(subject.NotNull());
}
