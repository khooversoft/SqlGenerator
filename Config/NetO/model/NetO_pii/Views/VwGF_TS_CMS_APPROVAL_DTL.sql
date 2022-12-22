-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_CMS_APPROVAL_DTL]
AS
   SELECT
      x.[CID],
      x.[S_CMSTYPE],
      x.[S_APPROVEDCO],
      x.[S_APPRSTAT],
      A0.[Descript] AS [S_APPRSTAT_X],
      x.[APPRDATE],
      x.[APPRLIMIT]
   FROM [clt_NetO].[GF_TS_CMS_APPROVAL_DTL] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_APPRSTAT] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_CMS_APPROVAL_DTL' and A0.[COLUMNNAME] = 'S_APPRSTAT'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
