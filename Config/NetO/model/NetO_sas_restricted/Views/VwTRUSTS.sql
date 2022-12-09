-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwTRUSTS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[TRUSTCNT] AS [TRUSTCNT],
      x.[TRSTDBID] AS [TRSTDBID],
      x.[TRSTSERI] AS [TRSTSERI],
      HASHBYTES('SHA2_256', x.[TRSTNAME]) AS [TRSTNAME],
      x.[TRSTDATE] AS [TRSTDATE],
      HASHBYTES('SHA2_256', x.[TRSTTXID]) AS [TRSTTXID],
      x.[TRSTADT1] AS [TRSTADT1],
      x.[TRSTADT2] AS [TRSTADT2],
      x.[TRSTNUMB] AS [TRSTNUMB],
      x.[S_TRSTYP] AS [S_TRSTYP],
      A0.Descript AS [TRSTYP],
      x.[TRSTINST] AS [TRSTINST],
      x.[TRSTREV] AS [TRSTREV],
      x.[STATE] AS [STATE],
      x.[TRSTNOMINEE] AS [TRSTNOMINEE],
      x.[IDENTIFICATION_NUM] AS [IDENTIFICATION_NUM],
      x.[QPRT_IND] AS [QPRT_IND],
      x.[QPRT_EXP_DATE] AS [QPRT_EXP_DATE],
      x.[QPRT_BEN_WAIVER] AS [QPRT_BEN_WAIVER],
      x.[LIVTRST] AS [LIVTRST]
   FROM [clt_NetO].[TRUSTS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_TRSTYP] = A0.[DBSYMBOL] AND A0.[TableName] = 'TRUSTS' and A0.[COLUMNNAME] = 'S_TRSTYP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
