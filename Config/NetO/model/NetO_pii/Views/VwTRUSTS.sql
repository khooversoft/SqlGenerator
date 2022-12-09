-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwTRUSTS]
AS
   SELECT
      x.[LNUM],
      x.[TRUSTCNT],
      x.[TRSTDBID],
      x.[TRSTSERI],
      x.[TRSTNAME],
      x.[TRSTDATE],
      x.[TRSTTXID],
      x.[TRSTADT1],
      x.[TRSTADT2],
      x.[TRSTNUMB],
      x.[S_TRSTYP],
      A0.Descript AS [TRSTYP],
      x.[TRSTINST],
      x.[TRSTREV],
      x.[STATE],
      x.[TRSTNOMINEE],
      x.[IDENTIFICATION_NUM],
      x.[QPRT_IND],
      x.[QPRT_EXP_DATE],
      x.[QPRT_BEN_WAIVER],
      x.[LIVTRST]
   FROM [clt_NetO].[TRUSTS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_TRSTYP] = A0.[DBSYMBOL] AND A0.[TableName] = 'TRUSTS' and A0.[COLUMNNAME] = 'S_TRSTYP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
