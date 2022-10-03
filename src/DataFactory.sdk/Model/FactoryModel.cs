using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataFactory.sdk.Model;

public record FactoryModel
{
    public string? Name { get; set; }
    public string? Location { get; set; }
    public IdentityModel? Identity { get; set; }

    public class IdentityModel
    {
        public string? Type { get; set; }
        public string? PrincipalId { get; set; }
        public string? TenantId { get; set; }
    }
}
