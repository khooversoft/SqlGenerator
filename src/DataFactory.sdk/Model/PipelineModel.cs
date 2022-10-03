using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFactory.sdk.Model;

public record PipelineModel
{
    public string? Name { get; set; }
    public PropertiesModel? Properties { get; set; }

    public class PropertiesModel
    {
        public IReadOnlyList<Activity>? Activities { get; set; }
        public IReadOnlyList<object>? Annotations { get; set; }
    }

    public class Activity
    {
        public string? Name { get; set; }
        public string? Type { get; set; }
        public IReadOnlyList<object>? DependsOn { get; set; }
        public Policy? Policy { get; set; }
        public IReadOnlyList<object>? UserProperties { get; set; }
        public TypeProperties? TypeProperties { get; set; }
    }

    public class Compute
    {
        public int? CoreCount { get; set; }
        public string? ComputeType { get; set; }
    }

    public class Dataflow
    {
        public string? ReferenceName { get; set; }
        public string? Type { get; set; }
    }

    public class Policy
    {
        public string? Timeout { get; set; }
        public int? Retry { get; set; }
        public int? RetryIntervalInSeconds { get; set; }
        public bool? SecureOutput { get; set; }
        public bool? SecureInput { get; set; }
    }

    public class TypeProperties
    {
        public Dataflow? Dataflow { get; set; }
        public Compute? Compute { get; set; }
        public string? TraceLevel { get; set; }
    }
}
