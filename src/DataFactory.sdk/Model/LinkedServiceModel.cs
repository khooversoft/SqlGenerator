using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFactory.sdk.Model;

public record LinkedServiceModel
{
    public string? Name { get; set; }
    public string? Type { get; set; }
    public PropertiesModel? Properties { get; set; }

    public class PropertiesModel
    {
        public IReadOnlyList<object>? Annotations { get; set; }
        public string? Type { get; set; }
        public TypeProperties? TypeProperties { get; set; }
    }

    public class TypeProperties
    {
        public string? Url { get; set; }
        public string? EncryptedCredential { get; set; }
    }
}
