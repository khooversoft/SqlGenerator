-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLB_EQ_RES_EDAS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[EDAS_SCORE] AS [EDAS_SCORE],
      x.[REGION_IND_TEXT] AS [REGION_IND_TEXT],
      x.[REGION_IND_CODE] AS [REGION_IND_CODE],
      x.[REASON1] AS [REASON1],
      x.[REASON2] AS [REASON2],
      x.[REASON3] AS [REASON3],
      x.[REASON4] AS [REASON4],
      x.[REJECT_MSG_CODE] AS [REJECT_MSG_CODE],
      x.[REASON_TEXT1] AS [REASON_TEXT1],
      x.[REASON_TEXT2] AS [REASON_TEXT2],
      x.[REASON_TEXT3] AS [REASON_TEXT3],
      x.[REASON_TEXT4] AS [REASON_TEXT4],
      x.[ENHANCED_DAS_IND] AS [ENHANCED_DAS_IND]
   FROM [clt_NetO].[GF_TLB_EQ_RES_EDAS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
