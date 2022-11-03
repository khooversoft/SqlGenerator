-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_CRM_CUSTOMER_ACCT_DETAIL_S_]
AS
   SELECT
      HASHBYTES('SHA2_256', x.[CURRENT_CUSTOMERID]) AS [CURRENT_CUSTOMERID],
      x.[AG_DA_ACCT_TYPE] AS [AG_DA_ACCT_TYPE],
      x.[AG_DA_ACCT_TOTALASSETS] AS [AG_DA_ACCT_TOTALASSETS],
      x.[TOTALASSETSDAVGLAST60DAYS] AS [TOTALASSETSDAVGLAST60DAYS],
      x.[TOTALASSETSDAVGLAST180DAYS] AS [TOTALASSETSDAVGLAST180DAYS],
      x.[SAVINGACCBALDAVGLAST60DAYS] AS [SAVINGACCBALDAVGLAST60DAYS],
      x.[SAVINGACCBALDAVGLAST180DAYS] AS [SAVINGACCBALDAVGLAST180DAYS],
      x.[AGDIRECRDEPOSITVLAST30DAYS] AS [AGDIRECRDEPOSITVLAST30DAYS],
      x.[AGGREGATEDIREALUELAST60DAYS] AS [AGGREGATEDIREALUELAST60DAYS],
      x.[AGDEPOSITVALUELAST30DAYS] AS [AGDEPOSITVALUELAST30DAYS],
      x.[AGDEPOSITVALUELAST60DAYS] AS [AGDEPOSITVALUELAST60DAYS],
      x.[AGDEPOSITVALUELAST180DAYS] AS [AGDEPOSITVALUELAST180DAYS]
   FROM [clt_NetO].[WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
