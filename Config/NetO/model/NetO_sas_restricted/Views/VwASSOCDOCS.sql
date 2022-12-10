-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwASSOCDOCS]
AS
   SELECT
      x.[S_SUNDCON] AS [S_SUNDCON],
      x.[CNTR] AS [CNTR],
      x.[S_ASSOCDOC] AS [S_ASSOCDOC],
      x.[SRCENV] AS [SRCENV],
      x.[REC_CUSTOM] AS [REC_CUSTOM],
      x.[CREATE_DATE] AS [CREATE_DATE],
      x.[MODIFY_DATE] AS [MODIFY_DATE]
   FROM [clt_NetO].[ASSOCDOCS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
