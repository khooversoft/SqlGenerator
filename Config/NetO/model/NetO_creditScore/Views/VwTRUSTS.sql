-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwTRUSTS]
AS
   SELECT
      x.[LNUM],
      x.[TRUSTCNT],
      HASHBYTES('SHA2_256', x.[TRSTDBID]) AS [TRSTDBID],
      x.[TRSTSERI],
      HASHBYTES('SHA2_256', x.[TRSTNAME]) AS [TRSTNAME],
      HASHBYTES('SHA2_256', CAST(x.[TRSTDATE] AS NVARCHAR(50))) AS [TRSTDATE],
      HASHBYTES('SHA2_256', x.[TRSTTXID]) AS [TRSTTXID],
      HASHBYTES('SHA2_256', CAST(x.[TRSTADT1] AS NVARCHAR(50))) AS [TRSTADT1],
      HASHBYTES('SHA2_256', CAST(x.[TRSTADT2] AS NVARCHAR(50))) AS [TRSTADT2],
      HASHBYTES('SHA2_256', x.[TRSTNUMB]) AS [TRSTNUMB],
      x.[S_TRSTYP],
      A0.[Descript] AS [S_TRSTYP_X],
      HASHBYTES('SHA2_256', x.[TRSTINST]) AS [TRSTINST],
      x.[TRSTREV],
      HASHBYTES('SHA2_256', x.[STATE]) AS [STATE],
      HASHBYTES('SHA2_256', x.[TRSTNOMINEE]) AS [TRSTNOMINEE],
      HASHBYTES('SHA2_256', x.[IDENTIFICATION_NUM]) AS [IDENTIFICATION_NUM],
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
