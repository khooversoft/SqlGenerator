-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_RPT_LOAN_REMARKS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[RMKID] AS [RMKID],
      x.[ENTERED_DATE] AS [ENTERED_DATE],
      x.[USRID] AS [USRID],
      x.[USERNAME] AS [USERNAME],
      x.[REMARK_TYPE] AS [REMARK_TYPE],
      x.[ACTIVITY] AS [ACTIVITY],
      x.[TASK] AS [TASK],
      x.[REMARK] AS [REMARK],
      x.[REMARKS_TXT] AS [REMARKS_TXT]
   FROM [clt_NetO].[WG_RPT_LOAN_REMARKS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
