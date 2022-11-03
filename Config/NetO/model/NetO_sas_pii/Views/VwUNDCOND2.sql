-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwUNDCOND2]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[CNTR] AS [CNTR],
      x.[S_SUNDCON] AS [S_SUNDCON],
      x.[S_UNDCAT] AS [S_UNDCAT],
      x.[S_UNDTYP] AS [S_UNDTYP],
      x.[CUUSRID] AS [CUUSRID],
      x.[CUUSGRP] AS [CUUSGRP],
      x.[CUDATE] AS [CUDATE],
      x.[CUSTATE] AS [CUSTATE],
      x.[SIGNDT] AS [SIGNDT],
      x.[WAIVEDDT] AS [WAIVEDDT],
      x.[LOANTYPE] AS [LOANTYPE],
      x.[UWCKLIST] AS [UWCKLIST],
      x.[ISACTIVE] AS [ISACTIVE],
      x.[S_ASSOCDOC] AS [S_ASSOCDOC],
      x.[SHWWAIVE] AS [SHWWAIVE],
      x.[DISCLOSE] AS [DISCLOSE],
      x.[S_COMFLG] AS [S_COMFLG],
      x.[RESPONSIBLE_P] AS [RESPONSIBLE_P],
      x.[DUEDATE] AS [DUEDATE],
      x.[ERRORCAUSEBY] AS [ERRORCAUSEBY],
      x.[S_CONDITION_SRC] AS [S_CONDITION_SRC],
      x.[CREATED_DATE] AS [CREATED_DATE],
      x.[CREATED_USER] AS [CREATED_USER],
      x.[RECEIVED_DT] AS [RECEIVED_DT],
      x.[IMGSTATUS] AS [IMGSTATUS],
      x.[REVIEWED_DT] AS [REVIEWED_DT],
      x.[WAIVE_REASON_TEXT] AS [WAIVE_REASON_TEXT],
      x.[CONDITION_TEXT] AS [CONDITION_TEXT],
      x.[PUBLISHED] AS [PUBLISHED],
      x.[REASON_ADD_COND] AS [REASON_ADD_COND],
      x.[REJECTED_DT] AS [REJECTED_DT],
      x.[RESET_DT] AS [RESET_DT]
   FROM [clt_NetO].[UNDCOND2] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
