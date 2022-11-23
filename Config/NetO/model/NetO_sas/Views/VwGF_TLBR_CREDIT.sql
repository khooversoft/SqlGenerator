-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLBR_CREDIT]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      HASHBYTES('SHA2_256', CAST(x.[F_SCORE] AS NVARCHAR(50))) AS [F_SCORE],
      HASHBYTES('SHA2_256', CAST(x.[B_SCORE] AS NVARCHAR(50))) AS [B_SCORE],
      x.[E_SCORE] AS [E_SCORE],
      x.[C_SCORE] AS [C_SCORE],
      HASHBYTES('SHA2_256', CAST(x.[L_SCORE] AS NVARCHAR(50))) AS [L_SCORE],
      x.[MAN_OVERRIDE] AS [MAN_OVERRIDE],
      HASHBYTES('SHA2_256', x.[CREDIT_SOURCE]) AS [CREDIT_SOURCE],
      x.[LINK] AS [LINK]
   FROM [clt_NetO].[GF_TLBR_CREDIT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
