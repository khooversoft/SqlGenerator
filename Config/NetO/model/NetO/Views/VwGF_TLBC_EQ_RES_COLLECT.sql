-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLBC_EQ_RES_COLLECT]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWCOUNTER],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[ECOA_DESIGNATOR],
      x.[ASSIGNED_DT],
      HASHBYTES('SHA2_256', CAST(x.[ORIG_AMT] AS NVARCHAR(50))) AS [ORIG_AMT],
      x.[FIRST_DELINQUENCY_DT],
      x.[AGENCY_CUST_NUM],
      x.[AUTO_UPDATE_IND],
      x.[CLIENT_ID],
      x.[REPORTED_DT],
      x.[BALANCE],
      x.[ACCT_NUM],
      x.[STATUS_CODE],
      x.[STATUS_CODE_TEXT],
      x.[NARRATIVE_CODE1],
      x.[NARRATIVE_TEXT1],
      x.[NARRATIVE_CODE2],
      x.[NARRATIVE_TEXT2],
      x.[CREDITOR_CLASS_CODE],
      x.[CRECITOR_CLASS_TEXT],
      x.[LAST_PMT_DT]
   FROM [clt_NetO].[GF_TLBC_EQ_RES_COLLECT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
