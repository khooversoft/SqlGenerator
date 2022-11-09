-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_CREDIT]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[F_SCORE] AS [F_SCORE],
      x.[B_SCORE] AS [B_SCORE],
      x.[E_SCORE] AS [E_SCORE],
      x.[C_SCORE] AS [C_SCORE],
      x.[L_SCORE] AS [L_SCORE],
      x.[MAN_OVERRIDE] AS [MAN_OVERRIDE],
      x.[CREDIT_SOURCE] AS [CREDIT_SOURCE],
      x.[LINK] AS [LINK]
   FROM [clt_NetO].[GF_TLBR_CREDIT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
