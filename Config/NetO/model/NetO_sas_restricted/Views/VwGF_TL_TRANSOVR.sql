-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TL_TRANSOVR]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[REFIAMTOVRD] AS [REFIAMTOVRD],
      x.[ESTPREPDOVRD] AS [ESTPREPDOVRD],
      x.[ESTCLCOSTOVRD] AS [ESTCLCOSTOVRD],
      x.[MIFFOVRD] AS [MIFFOVRD],
      x.[SELLCOSTOVRD] AS [SELLCOSTOVRD],
      x.[OTHCRDOVRT] AS [OTHCRDOVRT],
      x.[FINFEESOVRD] AS [FINFEESOVRD],
      x.[IMPREPOVRD] AS [IMPREPOVRD],
      x.[SUBFINOVRD] AS [SUBFINOVRD],
      x.[DISCOVRD] AS [DISCOVRD],
      x.[CASHFROMTOBORR] AS [CASHFROMTOBORR],
      x.[NONSPDEBTPAYOFFOVRD] AS [NONSPDEBTPAYOFFOVRD]
   FROM [clt_NetO].[GF_TL_TRANSOVR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
