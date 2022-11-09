-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwDOWNPYMT]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[DPYMTCTR],
      x.[S_TYPE],
      x.[AMOUNT],
      HASHBYTES('SHA2_256', x.[NAME]) AS [NAME],
      x.[ADDR1],
      x.[ADDR2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[PHONE],
      x.[RELATION],
      x.[INCASS],
      x.[FNDGIVEN],
      x.[DTAVAIL],
      x.[FININST],
      x.[ACCTNUM],
      x.[BANKNAME],
      x.[FIADDR1],
      x.[FIADDR2],
      x.[FICITY],
      x.[FISTATE],
      x.[FIZIP],
      x.[FIACCTYP],
      x.[VERIFYFND],
      x.[OTHERDOWNPAYTYPEDESC],
      x.[S_DOWN_PMT_SRC_TYP],
      x.[S_DOWN_PMT_SRC_OTH],
      x.[S_DOWN_PMT_TYP],
      x.[S_TYPE_OTH],
      x.[PRIMARY_SRC],
      x.[DOWNPAYMENTPERCENT],
      x.[S_DOWN_PMT_SRC],
      x.[S_TYPENM],
      x.[DOWNPAYTYPENMOTHERDESC],
      x.[RECORD_CREATED],
      x.[TOTAL_GIFT_FUNDS],
      x.[ASSETCTR]
   FROM [clt_NetO].[DOWNPYMT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
