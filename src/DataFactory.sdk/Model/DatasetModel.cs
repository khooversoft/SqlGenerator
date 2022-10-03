using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFactory.sdk.Model;

public record DatasetModel
{
    public string? Name { get; init; }
    public PropertiesModel? Properties { get; init; }

    public record LinkedServiceName
    {
        public string? ReferenceName { get; init; }
        public string? Type { get; init; }
    }

    public record Location
    {
        public string? Type { get; init; }
        public string? FolderPath { get; init; }
        public string? FileSystem { get; init; }
    }

    public record PropertiesModel
    {
        public LinkedServiceName? linkedServiceName { get; init; }
        public IReadOnlyList<object>? Annotations { get; init; }
        public string? Type { get; init; }
        public TypeProperties? TypeProperties { get; init; }
        public IReadOnlyList<Schema>? Schema { get; init; }
    }

    public record Schema
    {
        public string? Name { get; init; }
        public string? Type { get; init; }
        public int? Precision { get; init; }
        public int? Scale { get; init; }
    }

    public record TypeProperties
    {
        public Location? Location { get; init; }
        public string? CompressionCodec { get; init; }
    }
}