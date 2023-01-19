-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwHMDAXPRT]
AS
   SELECT
      x.[PRI_DBID],
      x.[ACODE],
      HASHBYTES('SHA2_256', x.[RNAME]) AS [RNAME],
      x.[RID],
      HASHBYTES('SHA2_256', x.[RADDR]) AS [RADDR],
      HASHBYTES('SHA2_256', x.[RCITY]) AS [RCITY],
      HASHBYTES('SHA2_256', x.[RSTATE]) AS [RSTATE],
      x.[RZIP],
      HASHBYTES('SHA2_256', x.[PNAME]) AS [PNAME],
      x.[PADDR],
      HASHBYTES('SHA2_256', x.[PCITY]) AS [PCITY],
      x.[PSTATE],
      x.[PZIP],
      HASHBYTES('SHA2_256', x.[CNAME]) AS [CNAME],
      x.[CPNUM],
      x.[SOFCR],
      x.[RGNUM],
      HASHBYTES('SHA2_256', x.[TAXID]) AS [TAXID],
      x.[FROMD],
      x.[TODATE],
      x.[FTYPE],
      x.[DBID],
      x.[QSERNUM],
      x.[DENLRSN],
      x.[SUBMITNA],
      x.[RPTYEAR],
      x.[CFPNUM],
      x.[S_CUSTOMQRY],
      A0.[Descript] AS [S_CUSTOMQRY_X],
      HASHBYTES('SHA2_256', x.[CEMAIL]) AS [CEMAIL],
      x.[HMDA_LAR_LEI]
   FROM [clt_NetO].[HMDAXPRT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_CUSTOMQRY] = A0.[DBSYMBOL] AND A0.[TableName] = 'HMDAXPRT' and A0.[COLUMNNAME] = 'S_CUSTOMQRY'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
