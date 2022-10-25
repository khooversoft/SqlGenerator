-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwCONSREFI]
AS
   SELECT
      x.[LNUM],
      x.[ORIGCOST],
      x.[AMTEXLN],
      x.[PRESVAL],
      x.[CSTIMPRO],
      x.[IMPDESC],
      x.[S_REFPRP],
      x.[IMPMADE],
      x.[LOTACQUR],
      x.[REFIIMP],
      x.[CASHAMT],
      x.[S_GSE_REFINANCE_PURPOSE],
      x.[S_CONST_PERM_CLOSING],
      x.[INTERNREFI],
      HASHBYTES('SHA2_256', x.[ORIG_INVESTOR_LOAN_NBR]) AS [ORIG_INVESTOR_LOAN_NBR],
      x.[S_ORIG_INVESTOR],
      x.[OTHER_INVESTOR_DESC],
      x.[OTHERGSEREFIPURPTYPEDESC],
      x.[REPLACE_EXIST_CONSTR_LOAN],
      x.[FIR_MAX_MONTHLY_AMT],
      x.[PREVIOUS_REFI_MONTHS],
      x.[CO_REFI_PURCH_CONST],
      x.[S_CONST_PERM_FEATURE],
      x.[S_FNM_REFI_PGM],
      x.[S_FRE_REFI_PGM],
      x.[LIMIT_DESC],
      x.[REFI_LOAN_ACCT_NBR]
   FROM [clt_NetO].[CONSREFI] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
