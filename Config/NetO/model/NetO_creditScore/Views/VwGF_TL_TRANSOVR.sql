-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TL_TRANSOVR]
AS
   SELECT
      x.[LNUM],
      x.[REFIAMTOVRD],
      x.[ESTPREPDOVRD],
      x.[ESTCLCOSTOVRD],
      x.[MIFFOVRD],
      x.[SELLCOSTOVRD],
      x.[OTHCRDOVRT],
      x.[FINFEESOVRD],
      x.[IMPREPOVRD],
      x.[SUBFINOVRD],
      x.[DISCOVRD],
      HASHBYTES('SHA2_256', CAST(x.[CASHFROMTOBORR] AS NVARCHAR(50))) AS [CASHFROMTOBORR],
      x.[NONSPDEBTPAYOFFOVRD]
   FROM [clt_NetO].[GF_TL_TRANSOVR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
