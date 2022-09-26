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

    [Fact]
    public void GivenFile_WhenVersioned_ShouldPass()
    {
        string version = DateTime.Now.ToString("yyyyMMdd");

        string file = "file1";
        string fileResult = PathTool.VersionFile(file);
        fileResult.Should().Be($"file1-{version}");

        file = "file1.csv";
        fileResult = PathTool.VersionFile(file);
        fileResult.Should().Be($"file1-{version}.csv");

        file = @"d:\work\file1.csv";
        fileResult = PathTool.VersionFile(file);
        fileResult.Should().Be(@$"d:\work\file1-{version}.csv");

        file = @$"d:\work\file1-{version}.csv";
        fileResult = PathTool.VersionFile(file);
        fileResult.Should().Be(@$"d:\work\file1-{version}-00.csv");

        file = @$"d:\work\file1-{version}-00.csv";
        fileResult = PathTool.VersionFile(file);
        fileResult.Should().Be(@$"d:\work\file1-{version}-01.csv");

        file = @$"D:\Work\SqlGenerator\NetO\TableUpdate\..\NetO.project.json";
        fileResult = PathTool.VersionFile(file);
        fileResult.Should().Be(@$"D:\Work\SqlGenerator\NetO\TableUpdate\..\NetO-{version}.project.json");

        file = @$"D:\Work\SqlGenerator\NetO\TableUpdate\..\NetO-{version}.project.json";
        fileResult = PathTool.VersionFile(file);
        fileResult.Should().Be(@$"D:\Work\SqlGenerator\NetO\TableUpdate\..\NetO-{version}-00.project.json");
    }
}
