using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFactory.sdk.Model;

public record DataflowModel
{
    public string? Name { get; set; }
    public PropertiesModel? Properties { get; set; }
    
    public class Dataset
    {
        public string? ReferenceName { get; set; }
        public string? Type { get; set; }
    }

    public class PropertiesModel
    {
        public string? Type { get; set; }
        public TypeProperties? TypeProperties { get; set; }
    }

    public class Sink
    {
        public Dataset? Dataset { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
    }

    public class Source
    {
        public Dataset? Dataset { get; set; }
        public string? Name { get; set; }
    }

    public class Transformation
    {
        public string? Name { get; set; }
        public string? Description { get; set; }
    }

    public class TypeProperties
    {
        public IReadOnlyList<Source>? Sources { get; set; }
        public IReadOnlyList<Sink>? Sinks { get; set; }
        public IReadOnlyList<Transformation>? Transformations { get; set; }
        public IReadOnlyList<string>? ScriptLines { get; set; }
    }
}
