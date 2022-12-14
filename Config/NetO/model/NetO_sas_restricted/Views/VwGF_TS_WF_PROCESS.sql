-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TS_WF_PROCESS]
AS
   SELECT
      x.[S_PROCESS] AS [S_PROCESS],
      A0.[Descript] AS [S_PROCESS_X],
      x.[IS_ACTIVE] AS [IS_ACTIVE],
      x.[EST_TO_COMPLETE] AS [EST_TO_COMPLETE]
   FROM [clt_NetO].[GF_TS_WF_PROCESS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_PROCESS] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TS_WF_PROCESS' and A0.[COLUMNNAME] = 'S_PROCESS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
