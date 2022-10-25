-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwSERVICNG]
AS
   SELECT
      x.[LNUM],
      x.[SELLSERV],
      x.[SERVABLE],
      x.[SERVLOAN],
      x.[NSERLOAN],
      x.[NSERLNS3],
      x.[SELLSOME],
      x.[PERTRANS],
      x.[PERCT],
      x.[DOESSELL],
      x.[PREVIOUS],
      x.[YEAR1],
      x.[PERC_YR1],
      x.[YEAR2],
      x.[PERC_YR2],
      x.[YEAR3],
      x.[PERC_YR3],
      x.[INFODOES],
      x.[FORMSTOP],
      x.[NEWSTART],
      x.[AFFCTSN],
      x.[AFFTDBID],
      x.[ACTIONSN],
      x.[ACTNDBID],
      x.[CHNGHOLD],
      x.[CHNGMORT],
      x.[ASSUMPTN],
      x.[TRANSDAT],
      x.[SELRETTR],
      x.[WILTRANS],
      x.[BATCH_ID_SER_NUM],
      x.[SERVICING_TYPE],
      x.[RETAINED_SERVICING_RATE],
      x.[RETAINED_SERVICING_MULTIPLIER],
      x.[RETAINED_SERVICING_VALUE],
      x.[HEDGE_CANDIDATE_YN],
      x.[COUPON_RATE],
      x.[GUARANTEE_FEE],
      x.[DOCS_SENT],
      x.[INDEMNF_AMT],
      x.[PC_FEDEX_NUM]
   FROM [clt_NetO].[SERVICNG] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
