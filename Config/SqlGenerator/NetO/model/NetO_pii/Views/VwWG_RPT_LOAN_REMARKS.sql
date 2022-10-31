-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_RPT_LOAN_REMARKS]
AS
   SELECT
      x.[LNUM],
      x.[RMKID],
      x.[ENTERED_DATE],
      x.[USRID],
      x.[USERNAME],
      x.[REMARK_TYPE],
      x.[ACTIVITY],
      x.[TASK],
      x.[REMARK],
      x.[REMARKS_TXT]
   FROM [clt_NetO].[WG_RPT_LOAN_REMARKS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
