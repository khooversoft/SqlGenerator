-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLB_EQ_RES_EDAS]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[EDAS_SCORE],
      x.[REGION_IND_TEXT],
      x.[REGION_IND_CODE],
      x.[REASON1],
      x.[REASON2],
      x.[REASON3],
      x.[REASON4],
      x.[REJECT_MSG_CODE],
      x.[REASON_TEXT1],
      x.[REASON_TEXT2],
      x.[REASON_TEXT3],
      x.[REASON_TEXT4],
      x.[ENHANCED_DAS_IND]
   FROM [clt_NetO].[GF_TLB_EQ_RES_EDAS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
