***SQL Generator***

The SQL Generator will generate SQL DDL scripts for table & view creation.

Commands...

| Command           | Notes                                                  |
| ----------------- | ------------------------------------------------------ |
| /? (help)         | Display's help                                         |
| Generate (gen)    | Generate SQL script                                    |
| Import (i)        | Import XML XSD description from model                  |


**Input and Output**

The input file is the XSD of the physical model.  This is read and converted to a schema file.  This schema file
is a JSON file that has all the details of the physical schema including security levels per column.

The Generate command uses the JSON schema file to generate the SQL DLL commands for creating tables and views.


**Commands**

**generate** _\{input schema file\}_ _\{output to SQL script file\}_

**import** _\{import XML file\}_ _\{output to schema file\}_

