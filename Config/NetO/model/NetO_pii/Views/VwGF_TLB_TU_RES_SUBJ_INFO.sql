-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLB_TU_RES_SUBJ_INFO]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[CUSTOMER_ID],
      x.[SUBJ_IDENTIFIER],
      x.[FILE_NUM],
      x.[FILE_HIT],
      x.[SSN_MATCH_IND],
      x.[CONS_STMT_IND],
      x.[BUR_MKT_FILE_CNTRL],
      x.[BUR_SUBMKT_FILE_CNTRL],
      x.[SUPPRESSION_IND],
      x.[FILE_SINCE_DT],
      x.[SUBJ_HIT_STATUS],
      x.[SUBJ_RESTRICT_STATUS],
      x.[SUBJ_COUNTRY],
      x.[CRDTDATASTS_MINOR],
      x.[CRDTDATASTS_DISPUTED],
      x.[DO_NOT_PROMOTE_IND],
      x.[DONOTPROMOTE_DTOFEXPIRE],
      x.[CRDTDATASTS_FREEZE_IND],
      x.[CRDTDATASTS_FREEZE_TYPE]
   FROM [clt_NetO].[GF_TLB_TU_RES_SUBJ_INFO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
