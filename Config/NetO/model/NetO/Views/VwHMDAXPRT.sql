-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwHMDAXPRT]
AS
   SELECT
      x.[PRI_DBID],
      x.[ACODE],
      x.[RNAME],
      x.[RID],
      x.[RADDR],
      x.[RCITY],
      x.[RSTATE],
      x.[RZIP],
      x.[PNAME],
      x.[PADDR],
      x.[PCITY],
      x.[PSTATE],
      x.[PZIP],
      x.[CNAME],
      x.[CPNUM],
      x.[SOFCR],
      x.[RGNUM],
      x.[TAXID],
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
      A0.Descript AS [S_CUSTOMQRYDescription],
      x.[CEMAIL],
      x.[HMDA_LAR_LEI]
   FROM [clt_NetO].[HMDAXPRT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_CUSTOMQRY = A0.[DBSYMBOL] AND A0.[TableName] = 'HMDAXPRT' and A0.[COLUMNNAME] = 'S_CUSTOMQRY'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
