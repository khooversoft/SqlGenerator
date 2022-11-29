-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLR_REG_O]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[BOD_APPROVAL],
      x.[O_DATE],
      x.[OFFICER_TITLE],
      x.[NUMBER_OF_SHARES],
      x.[REG_O_BORROWER],
      x.[EMPLOYEE_BORROWER],
      x.[S_EMP_REGO_TYPE],
      A0.Descript AS [EMP_REGO_TYPE],
      x.[EXEC_EDUC],
      x.[EXEC_OFFIC_OTH],
      x.[EXEC_OFFIC_YN],
      x.[EXEC_FIRST_LIEN],
      x.[BOD_APPROVAL_DATE],
      x.[COMMITTEE_APPROVAL]
   FROM [clt_NetO].[GF_TLR_REG_O] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_EMP_REGO_TYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_REG_O' and A0.[COLUMNNAME] = 'S_EMP_REGO_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
