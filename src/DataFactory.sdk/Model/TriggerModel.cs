using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFactory.sdk.Model;

public record TriggerModel
{
    public string? Name { get; set; }
    public PropertiesModel? Properties { get; set; }

    public class PropertiesModel
    {
        public IReadOnlyList<object>? Annotations { get; set; }
        public string? RuntimeState { get; set; }
        public IReadOnlyList<Pipeline>? Pipelines { get; set; }
        public string? Type { get; set; }
        public TypeProperties? TypeProperties { get; set; }
    }

    public class Pipeline
    {
        public PipelineReference? PipelineReference { get; set; }
    }

    public class PipelineReference
    {
        public string? ReferenceName { get; set; }
        public string? Type { get; set; }
    }

    public class TypeProperties
    {
        public string? BlobPathBeginsWith { get; set; }
        public string? BlobPathEndsWith { get; set; }
        public bool? IgnoreEmptyBlobs { get; set; }
        public string? Scope { get; set; }
        public IReadOnlyList<string>? Events { get; set; }
    }
}
