﻿using SqlGenerator.sdk.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlGenerator.sdk.Application;

public static class ImportOptionDefaults
{
    public static IReadOnlyList<ColumnDefinitionModel> Prefix { get; } = new[]
    {
        new ColumnDefinitionModel { Name = "ASAP_RecordEffectiveDateTime", DataType = "datetime2(7)", NotNull = true, Private = true },
        new ColumnDefinitionModel { Name = "ASAP_DeleteDateTime", DataType = "nvarchar(10)", Private = true },
    };

    public static IReadOnlyList<ColumnDefinitionModel> Sufix { get; } = new[]
    {
        new ColumnDefinitionModel { Name = "ASAP_ROW_HASH", DataType = "nvarchar(64)", Private = true },
        new ColumnDefinitionModel { Name = "ASAP_DML_FLAG", DataType = "nvarchar(2)", Private = true },
        new ColumnDefinitionModel { Name = "ASAP_CREATED_DATE", DataType = "datetime2(7)", Private = true },
        new ColumnDefinitionModel { Name = "ASAP_UPDATED_DATE", DataType = "datetime2(7)", Private = true },
        new ColumnDefinitionModel { Name = "ASAP_LINEAGE_ID", DataType = "nvarchar(36)", Private = true },
        new ColumnDefinitionModel { Name = "ASAP_ACTIVITY_ID", DataType = "nvarchar(36)", Private = true },
        new ColumnDefinitionModel { Name = "ASAP_TRIGGER_ID", DataType = "nvarchar(36)", Private = true },
        new ColumnDefinitionModel { Name = "ASAP_SRC_FILEPATH", DataType = "nvarchar(1000)", Private = true },
        new ColumnDefinitionModel { Name = "ASAP_SRC_FILE_DATE", DataType = "datetime2(7)", Private = true },
        new ColumnDefinitionModel { Name = "ASAP_SRC_NAME", DataType = "nvarchar(36)", Private = false },
    };

    public static IReadOnlyList<NameMapRecord> NameMaps { get; } = new[]
    {
        new NameMapRecord { Long="Amount", Short="Amt" },
        new NameMapRecord { Long="Accessibility", Short="Access" },
        new NameMapRecord { Long="Account", Short="Acct" },
        new NameMapRecord { Long="Address", Short="Addr" },
        new NameMapRecord { Long="Agreement", Short="Agree" },
        new NameMapRecord { Long="Application", Short="App" },
        new NameMapRecord { Long="Balance", Short="Bal" },
        new NameMapRecord { Long="Borrower", Short="Bor" },
        new NameMapRecord { Long="Branch", Short="Brnch" },
        new NameMapRecord { Long="Branch Network Score", Short="BNS" },
        new NameMapRecord { Long="Business", Short="Bus" },
        new NameMapRecord { Long="Category", Short="Cat" },
        new NameMapRecord { Long="Channel", Short="Ch" },
        new NameMapRecord { Long="Collateral", Short="Coll" },
        new NameMapRecord { Long="Code", Short="Cd" },
        new NameMapRecord { Long="Consumer", Short="Cnsmr" },
        new NameMapRecord { Long="Count", Short="Cnt" },
        new NameMapRecord { Long="Country", Short="Cntry" },
        new NameMapRecord { Long="CurrentRecoveryOption", Short="CurrRecOpt" },
        new NameMapRecord { Long="CurrentRecoveryResponseRef", Short="CurrRecRespRef" },
        new NameMapRecord { Long="Daily", Short="Dly" },
        new NameMapRecord { Long="Datetime/Timestamp", Short="Dttm" },
        new NameMapRecord { Long="Decision", Short="Dsn" },
        new NameMapRecord { Long="Delinquency,Delinquent", Short="Delq" },
        new NameMapRecord { Long="Delivery", Short="Dlvry" },
        new NameMapRecord { Long="Description", Short="Desc" },
        new NameMapRecord { Long="Detail", Short="Dtl" },
        new NameMapRecord { Long="EasytoUnderstand Score", Short="EUS" },
        new NameMapRecord { Long="Employee", Short="EMP" },
        new NameMapRecord { Long="Exclude", Short="Excl" },
        new NameMapRecord { Long="Earthquake", Short="EQ" },
        new NameMapRecord { Long="Factor", Short="Fctr" },
        new NameMapRecord { Long="Field", Short="Fld" },
        new NameMapRecord { Long="FitNeedsScore", Short="FNS" },
        new NameMapRecord { Long="FormerMemberScore", Short="FMS" },
        new NameMapRecord { Long="Frequency", Short="Freq" },
        new NameMapRecord { Long="From", Short="Fm" },
        new NameMapRecord { Long="Group", Short="Grp" },
        new NameMapRecord { Long="Holder", Short="Hlrd" },
        new NameMapRecord { Long="Include, Included", Short="Incl" },
        new NameMapRecord { Long="Identifier", Short="Id" },
        new NameMapRecord { Long="Income", Short="Incm" },
        new NameMapRecord { Long="Indicator", Short="Ind" },
        new NameMapRecord { Long="Insurance", Short="Ins" },
        new NameMapRecord { Long="International", Short="Intl" },
        new NameMapRecord { Long="Liability", Short="Liab" },
        new NameMapRecord { Long="Limit", Short="Lmt" },
        new NameMapRecord { Long="Marijuana", Short="Mrjn" },
        new NameMapRecord { Long="Member", Short="Mbr" },
        new NameMapRecord { Long="Monthly", Short="Mthly" },
        new NameMapRecord { Long="Mortgage", Short="Mtg" },
        new NameMapRecord { Long="Name", Short="Nm" },
        new NameMapRecord { Long="Net Promoter Score", Short="NPS" },
        new NameMapRecord { Long="Number", Short="Nbr" },
        new NameMapRecord { Long="Office", Short="Offc" },
        new NameMapRecord { Long="Operating, Operate", Short="Oper" },
        new NameMapRecord { Long="Origination", Short="Orig" },
        new NameMapRecord { Long="Percent", Short="Pct" },
        new NameMapRecord { Long="Person", Short="Per" },
        new NameMapRecord { Long="Previously", Short="Prev" },
        new NameMapRecord { Long="Primary", Short="Prim" },
        new NameMapRecord { Long="Quantity", Short="Qty" },
        new NameMapRecord { Long="Rank", Short="Rnk" },
        new NameMapRecord { Long="Rate", Short="Rt" },
        new NameMapRecord { Long="Real Estate", Short="RE" },
        new NameMapRecord { Long="Reason", Short="Rsn" },
        new NameMapRecord { Long="Receive", Short="Rcv" },
        new NameMapRecord { Long="Residential", Short="Res" },
        new NameMapRecord { Long="Responsible", Short="Resp" },
        new NameMapRecord { Long="Retail", Short="RTL" },
        new NameMapRecord { Long="Review", Short="Rvw" },
        new NameMapRecord { Long="Revenue", Short="Rev" },
        new NameMapRecord { Long="Service", Short="Svc" },
        new NameMapRecord { Long="Shared", Short="Shrd" },
        new NameMapRecord { Long="Source", Short="Src" },
        new NameMapRecord { Long="Space", Short="Spc" },
        new NameMapRecord { Long="Status", Short="Stat" },
        new NameMapRecord { Long="Subdivision", Short="Subdiv" },
        new NameMapRecord { Long="Surrogate ID", Short="Sid" },
        new NameMapRecord { Long="Text", Short="Txt" },
        new NameMapRecord { Long="Time", Short="Tm" },
        new NameMapRecord { Long="Transaction", Short="Txn" },
        new NameMapRecord { Long="TransactionData", Short="TxnData" },
        new NameMapRecord { Long="TransactionData_DisputedAmountInfo", Short="TxnData_DispAmtInfo" },
        new NameMapRecord { Long="TransactionData_MasterComAuthData", Short="TxnData_MstCmAthDta" },
        new NameMapRecord { Long="TransactionData_MasterComClearingData", Short="TxnData_MstCmClrDta" },
        new NameMapRecord { Long="TransactionData_OriginalDisputedAmount", Short="TxnData_OrigDispAmt" },
        new NameMapRecord { Long="TransactionData_RemainingRecoveryAmount", Short="TxnData_RmngRecAmt" },
        new NameMapRecord { Long="Transfer", Short="Xfer" },
        new NameMapRecord { Long="Type", Short="Typ" },
        new NameMapRecord { Long="Verify", Short="Vrfy" },
        new NameMapRecord { Long="Weight", Short="Wt" },
        new NameMapRecord { Long="Warehouse", Short="WH" },
        new NameMapRecord { Long="Withdrawal", Short="Wthd" },
    }.ToList();
}
