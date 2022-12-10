-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwUNDCOND2]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[CNTR],
      x.[S_SUNDCON],
      A0.[Descript] AS [S_SUNDCON_X],
      x.[S_UNDCAT],
      A1.[Descript] AS [S_UNDCAT_X],
      x.[S_UNDTYP],
      A2.[Descript] AS [S_UNDTYP_X],
      x.[CUUSRID],
      x.[CUUSGRP],
      x.[CUDATE],
      x.[CUSTATE],
      x.[SIGNDT],
      x.[WAIVEDDT],
      x.[LOANTYPE],
      x.[UWCKLIST],
      x.[ISACTIVE],
      x.[S_ASSOCDOC],
      x.[SHWWAIVE],
      x.[DISCLOSE],
      x.[S_COMFLG],
      A3.[Descript] AS [S_COMFLG_X],
      x.[RESPONSIBLE_P],
      A4.[Descript] AS [RESPONSIBLE_P_X],
      x.[DUEDATE],
      x.[ERRORCAUSEBY],
      A5.[Descript] AS [ERRORCAUSEBY_X],
      x.[S_CONDITION_SRC],
      A6.[Descript] AS [S_CONDITION_SRC_X],
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
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_SUNDCON] = A0.[DBSYMBOL] AND A0.[TableName] = 'UNDCOND2' and A0.[COLUMNNAME] = 'S_SUNDCON'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_UNDCAT] = A1.[DBSYMBOL] AND A1.[TableName] = 'UNDCOND2' and A1.[COLUMNNAME] = 'S_UNDCAT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_UNDTYP] = A2.[DBSYMBOL] AND A2.[TableName] = 'UNDCOND2' and A2.[COLUMNNAME] = 'S_UNDTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_COMFLG] = A3.[DBSYMBOL] AND A3.[TableName] = 'UNDCOND2' and A3.[COLUMNNAME] = 'S_COMFLG'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[RESPONSIBLE_P] = A4.[DBSYMBOL] AND A4.[TableName] = 'UNDCOND2' and A4.[COLUMNNAME] = 'RESPONSIBLE_P'
      LEFT JOIN [clt_NetO].[SymbolLookup] A5 on x.[ERRORCAUSEBY] = A5.[DBSYMBOL] AND A5.[TableName] = 'UNDCOND2' and A5.[COLUMNNAME] = 'ERRORCAUSEBY'
      LEFT JOIN [clt_NetO].[SymbolLookup] A6 on x.[S_CONDITION_SRC] = A6.[DBSYMBOL] AND A6.[TableName] = 'UNDCOND2' and A6.[COLUMNNAME] = 'S_CONDITION_SRC'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
