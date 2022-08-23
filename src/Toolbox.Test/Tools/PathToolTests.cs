using FluentAssertions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Toolbox.Tools;

namespace Toolbox.Test.Tools;

public class PathToolTests
{
    [Theory]
    [InlineData("noextension", "txt", "noextension.txt")]
    [InlineData("file.ext", "json", "file.json")]
    [InlineData("file.ext", ".json", "file.json")]
    [InlineData("file.project.ext", "json", "file.project.json")]
    [InlineData("file.project.ext", "solution.json", "file.solution.json")]
    [InlineData("c:\\folder\\file.ext", "json", "c:\\folder\\file.json")]
    [InlineData("c:\\folder\\file.project.ext", "json", "c:\\folder\\file.project.json")]
    [InlineData("c:\\folder\\file.project.ext", "solution.json", "c:\\folder\\file.solution.json")]
    public void GivenGoodParameters_WillPass(string file, string extension, string expected)
    {
        string result = PathTool.SetFileExtension(file, extension);
        result.Should().Be(expected);
    }


    [Theory]
    [InlineData(null, null)]
    [InlineData("", null)]
    public void GivenBadParmaters_WillFail(string file, string extension)
    {
        Action act = () => PathTool.SetFileExtension(file, extension);
        act.Should().Throw<ArgumentException>();
    }
}
