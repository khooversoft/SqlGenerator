-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TL_TRANSOVR]
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
      x.[CASHFROMTOBORR],
      x.[NONSPDEBTPAYOFFOVRD]
   FROM [clt_NetO].[GF_TL_TRANSOVR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
