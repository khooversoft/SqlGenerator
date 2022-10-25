-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwUNDCOND2]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[CNTR],
      x.[S_SUNDCON],
      x.[S_UNDCAT],
      x.[S_UNDTYP],
      x.[CUUSRID],
      x.[CUUSGRP],
      x.[CUDATE],
      HASHBYTES('SHA2_256', x.[CUSTATE]) AS [CUSTATE],
      x.[SIGNDT],
      x.[WAIVEDDT],
      x.[LOANTYPE],
      x.[UWCKLIST],
      x.[ISACTIVE],
      x.[S_ASSOCDOC],
      x.[SHWWAIVE],
      x.[DISCLOSE],
      x.[S_COMFLG],
      x.[RESPONSIBLE_P],
      x.[DUEDATE],
      x.[ERRORCAUSEBY],
      x.[S_CONDITION_SRC],
      x.[CREATED_DATE],
      x.[CREATED_USER],
      x.[RECEIVED_DT],
      x.[IMGSTATUS],
      x.[REVIEWED_DT],
      x.[WAIVE_REASON_TEXT],
      x.[CONDITION_TEXT],
      x.[PUBLISHED],
      x.[REASON_ADD_COND],
      x.[REJECTED_DT],
      x.[RESET_DT]
   FROM [clt_NetO].[UNDCOND2] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
