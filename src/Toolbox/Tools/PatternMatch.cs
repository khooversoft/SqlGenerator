using System;
using System.Collections.Generic;
using System.IO.Enumeration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Extensions;

namespace Toolbox.Tools;

public class PatternMatch
{
    public static bool IsMatch(string matchFormat, string value) => FileSystemName.MatchesSimpleExpression(matchFormat, value);
}
