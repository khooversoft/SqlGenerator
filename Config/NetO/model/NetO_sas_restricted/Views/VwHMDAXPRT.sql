-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwHMDAXPRT]
AS
   SELECT
      x.[PRI_DBID] AS [PRI_DBID],
      x.[ACODE] AS [ACODE],
      x.[RNAME] AS [RNAME],
      x.[RID] AS [RID],
      x.[RADDR] AS [RADDR],
      x.[RCITY] AS [RCITY],
      x.[RSTATE] AS [RSTATE],
      x.[RZIP] AS [RZIP],
      x.[PNAME] AS [PNAME],
      x.[PADDR] AS [PADDR],
      x.[PCITY] AS [PCITY],
      x.[PSTATE] AS [PSTATE],
      x.[PZIP] AS [PZIP],
      x.[CNAME] AS [CNAME],
      x.[CPNUM] AS [CPNUM],
      x.[SOFCR] AS [SOFCR],
      x.[RGNUM] AS [RGNUM],
      x.[TAXID] AS [TAXID],
      x.[FROMD] AS [FROMD],
      x.[TODATE] AS [TODATE],
      x.[FTYPE] AS [FTYPE],
      x.[DBID] AS [DBID],
      x.[QSERNUM] AS [QSERNUM],
      x.[DENLRSN] AS [DENLRSN],
      x.[SUBMITNA] AS [SUBMITNA],
      x.[RPTYEAR] AS [RPTYEAR],
      x.[CFPNUM] AS [CFPNUM],
      x.[S_CUSTOMQRY] AS [S_CUSTOMQRY],
      x.[CEMAIL] AS [CEMAIL],
      x.[HMDA_LAR_LEI] AS [HMDA_LAR_LEI]
   FROM [clt_NetO].[HMDAXPRT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
