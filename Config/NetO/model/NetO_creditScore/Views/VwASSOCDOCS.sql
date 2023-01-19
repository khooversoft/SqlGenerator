-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwASSOCDOCS]
AS
   SELECT
      x.[S_SUNDCON],
      x.[CNTR],
      x.[S_ASSOCDOC],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[ASSOCDOCS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
