using Microsoft.Extensions.Configuration;
using SqlGenerator.sdk.Import;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Toolbox.Extensions;
using Toolbox.Tools;

namespace SqlGenerator.Data;

public class DefaultImportOption
{
    private const string _id = "SqlGenerator.Data.ImportOption.json";

    public static ImportOption Default { get; } = Get();

    private static Stream GetStream() => Assembly.GetAssembly(typeof(DefaultImportOption))
            .NotNull(name: "Assembly cannot be loaded")!
            .GetManifestResourceStream(_id)!
            .NotNull(name: $"Cannot find {_id} resource");

    private static ImportOption Get()
    {
        using Stream stream = GetStream();

        return new ConfigurationBuilder()
            .AddJsonStream(stream)
            .Build()
            .Bind<ImportOption>();
    }
}
