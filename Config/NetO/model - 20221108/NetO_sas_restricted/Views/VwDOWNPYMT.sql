-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwDOWNPYMT]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[DPYMTCTR] AS [DPYMTCTR],
      x.[S_TYPE] AS [S_TYPE],
      x.[AMOUNT] AS [AMOUNT],
      HASHBYTES('SHA2_256', x.[NAME]) AS [NAME],
      x.[ADDR1] AS [ADDR1],
      x.[ADDR2] AS [ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE] AS [STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[PHONE] AS [PHONE],
      x.[RELATION] AS [RELATION],
      x.[INCASS] AS [INCASS],
      x.[FNDGIVEN] AS [FNDGIVEN],
      x.[DTAVAIL] AS [DTAVAIL],
      x.[FININST] AS [FININST],
      x.[ACCTNUM] AS [ACCTNUM],
      x.[BANKNAME] AS [BANKNAME],
      x.[FIADDR1] AS [FIADDR1],
      x.[FIADDR2] AS [FIADDR2],
      x.[FICITY] AS [FICITY],
      x.[FISTATE] AS [FISTATE],
      x.[FIZIP] AS [FIZIP],
      x.[FIACCTYP] AS [FIACCTYP],
      x.[VERIFYFND] AS [VERIFYFND],
      x.[OTHERDOWNPAYTYPEDESC] AS [OTHERDOWNPAYTYPEDESC],
      x.[S_DOWN_PMT_SRC_TYP] AS [S_DOWN_PMT_SRC_TYP],
      x.[S_DOWN_PMT_SRC_OTH] AS [S_DOWN_PMT_SRC_OTH],
      x.[S_DOWN_PMT_TYP] AS [S_DOWN_PMT_TYP],
      x.[S_TYPE_OTH] AS [S_TYPE_OTH],
      x.[PRIMARY_SRC] AS [PRIMARY_SRC],
      x.[DOWNPAYMENTPERCENT] AS [DOWNPAYMENTPERCENT],
      x.[S_DOWN_PMT_SRC] AS [S_DOWN_PMT_SRC],
      x.[S_TYPENM] AS [S_TYPENM],
      x.[DOWNPAYTYPENMOTHERDESC] AS [DOWNPAYTYPENMOTHERDESC],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[TOTAL_GIFT_FUNDS] AS [TOTAL_GIFT_FUNDS],
      x.[ASSETCTR] AS [ASSETCTR]
   FROM [clt_NetO].[DOWNPYMT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
