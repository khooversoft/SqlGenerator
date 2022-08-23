//using Microsoft.Extensions.Logging;
//using System;
//using System.Collections.Generic;
//using System.IO;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;
//using Toolbox.Extensions;
//using Toolbox.Tools;

//namespace SqlGenerator.sdk.Generator;

//public class SqlScriptBuilder
//{
//    private readonly ILogger<SqlScriptBuilder> _logger;

//    public SqlScriptBuilder(ILogger<SqlScriptBuilder> logger)
//    {
//        _logger = logger.NotNull();
//    }

//    public async Task Build(string baseFolder, Instructions instructions)
//    {
//        baseFolder.NotEmpty();
//        instructions.NotNull();
//        _logger.LogEntryExit();

//        _logger.LogTrace("Starting generator build, baseFolder={baseFolder}", baseFolder);
//        VerifyFolder(baseFolder);

//        await Build(instructions, baseFolder, 0);
//        CleanUpEmptyFolders(baseFolder);
//    }

//    private void CleanUpEmptyFolders(string baseFolder)
//    {
//        Directory.GetDirectories(baseFolder, "*.*", SearchOption.AllDirectories)
//            .Select(x => (Path: x, FileCount: Directory.GetFiles(x).Count(), FolderCount: Directory.GetDirectories(x).Count()))
//            .Where(x => x.FileCount == 0 && x.FolderCount == 0)
//            .ForEach(x => Directory.Delete(x.Path));
//    }

//    private async Task Build(Instructions instructions, string baseFolder, int indentLevel, StreamWriter? fileStream = null)
//    {
//        const int spacesPerIndentLevel = 3;

//        _logger.LogEntryExit();

//        var option = new StreamOption(fileStream, _logger);
//        var folderStack = new Stack<string>().Action(x => x.Push(baseFolder));

//        try
//        {
//            foreach (var instruction in instructions.Items)
//            {
//                switch (instruction)
//                {
//                    case Instruction i when i.Type == InstructionType.PushFolder:
//                        folderStack.Push(VerifyFolder(folderStack.Peek(), i.Text));

//                        _logger.LogTrace("Push folder, stack={stack}", folderStack.Peek());
//                        break;

//                    case Instruction i when i.Type == InstructionType.PopFolder:
//                        folderStack.Pop();

//                        _logger.LogTrace("Pop folder, stack={stack}", folderStack.Peek());
//                        break;

//                    case Instruction i when i.Type == InstructionType.Stream:
//                        string outputFile = Path.Combine(folderStack.Peek(), i.Text);
//                        option.Close();
//                        option = new StreamOption(new StreamWriter(outputFile), _logger, true);

//                        _logger.LogTrace("Opening file={file}", outputFile);
//                        break;

//                    case Instruction i when i.Type == InstructionType.Code:
//                        await option.Stream.WriteLineAsync(PrependSpaces(indentLevel * spacesPerIndentLevel) + i.Text);

//                        _logger.LogTrace("Writing code={code}", i.Text);
//                        break;

//                    case Instruction i when i.Type == InstructionType.TabPlus:
//                        indentLevel++;
//                        _logger.LogTrace("TabPlus={indentLevel}", indentLevel);
//                        break;

//                    case Instruction i when i.Type == InstructionType.TabMinus:
//                        indentLevel--;
//                        indentLevel.Assert(x => x >= 0, x => $"Invalid indentLevel={x}");

//                        _logger.LogTrace("TabMinus={indentLevel}", indentLevel);
//                        break;

//                    case Instructions instr:
//                        _logger.LogTrace("Building instruction set");

//                        await Build(instr, folderStack.Peek(), indentLevel, option);
//                        break;

//                    default:
//                        throw new ArgumentException($"Unknown instruction, type={instruction.GetType().FullName}");
//                }
//            }
//        }
//        finally
//        {
//            option.Close();
//        }

//        static string PrependSpaces(int spaces) => spaces == 0 ? string.Empty : new string(' ', spaces);
//    }

//    private string VerifyFolder(string currentFolder, string folder)
//    {
//        var path = Path.Combine(currentFolder, folder);
//        _logger.LogTrace("Current folder={currentFolder} + new folder={folder}, path={path}", currentFolder, folder, path);

//        return VerifyFolder(path);
//    }

//    private string VerifyFolder(string folder)
//    {
//        if (File.Exists(folder))
//        {
//            string msg = $"Folder {folder} is a file";
//            _logger.LogError(msg);
//            throw new InvalidOperationException(msg);
//        }

//        _logger.LogTrace("Deleting recursive, and creating path={path}", folder);

//        if (Directory.Exists(folder)) Directory.Delete(folder, true);
//        Directory.CreateDirectory(folder);

//        return folder;
//    }

//    private class StreamOption
//    {
//        private readonly ILogger _logger;
//        private readonly bool _close;
//        private StreamWriter? _stream;

//        public StreamOption(StreamWriter? streamWriter, ILogger logger, bool close = false)
//        {
//            _stream = streamWriter;
//            _logger = logger;
//            _close = close;
//        }

//        public StreamWriter Stream => _stream.NotNull(name: "no stream");
//        public bool HasValue => _stream != null;
//        public void Close()
//        {
//            if (!_close) return;

//            _logger.LogTrace("Closing stream");
//            Interlocked.Exchange(ref _stream, null)?.Close();
//        }

//        public static implicit operator StreamWriter?(StreamOption option) => option.HasValue ? option.Stream : null;
//    }
//}
