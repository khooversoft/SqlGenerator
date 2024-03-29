﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using Toolbox.Tools;

namespace Toolbox.Extensions
{
    public static class StringExtensions
    {
        /// <summary>
        /// Is string null or just white spaces
        /// </summary>
        /// <param name="subject">subject</param>
        /// <returns>true or false</returns>
        [DebuggerStepThrough]
        public static bool IsEmpty([NotNullWhen(false)] this string? subject) => string.IsNullOrWhiteSpace(subject);

        /// <summary>
        /// Convert to null if string is "empty"
        /// </summary>
        /// <param name="subject">subject to test</param>
        /// <returns>null or subject</returns>
        [DebuggerStepThrough]
        public static string? ToNullIfEmpty(this string? subject) => string.IsNullOrWhiteSpace(subject) ? null : subject;

        /// <summary>
        /// Convert string to guid
        /// </summary>
        /// <param name="self">string to convert, empty string will return empty guid</param>
        /// <returns>guid or empty guid</returns>
        [DebuggerStepThrough]
        public static Guid ToGuid(this string self)
        {
            if (self.IsEmpty()) return Guid.Empty;

            using (var md5 = MD5.Create())
            {
                byte[] data = md5.ComputeHash(Encoding.UTF8.GetBytes(self));
                return new Guid(data);
            }
        }

        /// <summary>Join
        /// Convert property string ex "property1=value1;property2=value2";
        /// </summary>
        /// <param name="subject"></param>
        /// <param name="propertyDelimiter"></param>
        /// <param name="valueDelimiter"></param>
        /// <returns></returns>
        [DebuggerStepThrough]
        public static IReadOnlyDictionary<string, string> ToDictionary(this string subject, string propertyDelimiter = ";", string valueDelimiter = "=")
        {
            if (subject.IsEmpty()) return new Dictionary<string, string>();

            KeyValuePair<string, string> GetKeyValue(string property)
            {
                int index = property.IndexOf(valueDelimiter).Assert(x => x >= 0, $"Syntax error, no {valueDelimiter} for {property}");
                return new KeyValuePair<string, string>(property[0..index], property[(index + 1)..^0]);
            }

            return subject
                .Split(propertyDelimiter, StringSplitOptions.RemoveEmptyEntries)
                .Select(x => GetKeyValue(x))
                .ToDictionary(x => x.Key, x => x.Value);
        }

        /// <summary>
        /// Join vector(s) to string with delimiter
        /// </summary>
        /// <param name="values">values</param>
        /// <param name="delimiter">delimiter to use in join</param>
        /// <returns>result</returns>
        [DebuggerStepThrough]
        public static string Join(this IEnumerable<string?> values, string delimiter = "") => string.Join(delimiter, values.Where(x => x != null));

        /// <summary>
        /// Return string's hash in hex numeric form
        /// </summary>
        /// <param name="subject"></param>
        /// <returns>hex values for hash</returns>
        [DebuggerStepThrough]
        public static string ToHashHex(this string subject) => subject
            .NotEmpty()
            .ToBytes()
            .ToHash()
            .ToHex();

        /// <summary>
        /// Ignore case equals
        /// </summary>
        /// <param name="subject">subject to compare</param>
        /// <param name="value">value to compare to</param>
        /// <returns>true or false</returns>
        [DebuggerStepThrough]
        public static bool EqualsIgnoreCase(this string subject, string value) => subject.Equals(value, StringComparison.OrdinalIgnoreCase);

        /// <summary>
        /// Compute hash for multiple objects, using string representations
        /// </summary>
        /// <param name="values">values</param>
        /// <returns>hash bytes</returns>
        [DebuggerStepThrough]
        public static byte[] ComputeHash(this IEnumerable<string?> values)
        {
            values.NotNull();

            var ms = new MemoryStream();
            values.ForEach(x => ms.Write(x.ToBytes()));

            ms.Seek(0, SeekOrigin.Begin);
            return MD5.Create().ComputeHash(ms);
        }

        [DebuggerStepThrough]
        public static string? Trim(this string? subject, int? maxLength, string marker = "...") => subject switch
        {
            null => null,
            string v1 => maxLength switch
            {
                null => v1,
                int length when v1.Length < length => v1,
                int length => string.Concat(v1.AsSpan(0, length - marker.Length), marker),
            }
        };

        [DebuggerStepThrough]
        public static string? Find(this string? subject, string? findValue, StringComparison comparisonType = StringComparison.CurrentCulture)
        {
            return subject switch
            {
                null => null,
                string s1 => findValue switch
                {
                    null => null,
                    string s2 => s1.IndexOf(s2, comparisonType) switch
                    {
                        -1 => null,
                        int index => s1[index..(index + s2.Length)],
                    }
                }
            };
        }
    }
}
