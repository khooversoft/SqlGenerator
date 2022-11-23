-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLBR_CREDIT]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      HASHBYTES('SHA2_256', CAST(x.[F_SCORE] AS NVARCHAR(50))) AS [F_SCORE],
      HASHBYTES('SHA2_256', CAST(x.[B_SCORE] AS NVARCHAR(50))) AS [B_SCORE],
      x.[E_SCORE],
      x.[C_SCORE],
      HASHBYTES('SHA2_256', CAST(x.[L_SCORE] AS NVARCHAR(50))) AS [L_SCORE],
      x.[MAN_OVERRIDE],
      HASHBYTES('SHA2_256', x.[CREDIT_SOURCE]) AS [CREDIT_SOURCE],
      x.[LINK]
   FROM [clt_NetO].[GF_TLBR_CREDIT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
