namespace DataTools.sdk.Model;

public enum Security
{
    Unrestricted,
    Restricted,
    PII,
    Data,
}

public static class SecurityExtensions
{
    public static bool ForTable(this Security subject) => subject == Security.Data;
    public static bool ForView(this Security subject) => subject != Security.Data;
}
