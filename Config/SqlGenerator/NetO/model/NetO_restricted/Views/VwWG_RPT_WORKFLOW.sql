-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_RPT_WORKFLOW]
AS
   SELECT
      x.[WORKTYPE_INSTANCE],
      x.[LNUM],
      x.[WORKTYPE_CODE],
      x.[EST_EFFORT_TIME],
      x.[EXP_RESOLVE_DATE],
      x.[PROC_GROUP],
      x.[QUEUED_DATE],
      x.[QUEUED_DATETIME],
      x.[QUEUED_TIME],
      x.[RESERVED_USER],
      x.[RESOLVE_DATE],
      x.[RESOLVE_TYPE],
      x.[WF_ACTIVITY],
      x.[WF_STATUS],
      x.[WORK_OPENED_DATE],
      x.[WORK_OPENED_DATETIME],
      x.[WORKED_TIME],
      x.[WORKTYPE],
      x.[RESERVED_USERID],
      x.[PROC_GROUP_CODE]
   FROM [clt_NetO].[WG_RPT_WORKFLOW] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
