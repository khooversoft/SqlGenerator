-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwACTIVITY]
AS
   SELECT
      x.[S_ACTIVI] AS [S_ACTIVI],
      x.[TIMEALLT] AS [TIMEALLT],
      x.[TIMETYPE] AS [TIMETYPE],
      x.[INITIALACT] AS [INITIALACT],
      x.[SRCENV] AS [SRCENV],
      x.[REC_CUSTOM] AS [REC_CUSTOM],
      x.[CREATE_DATE] AS [CREATE_DATE],
      x.[MODIFY_DATE] AS [MODIFY_DATE]
   FROM [clt_NetO].[ACTIVITY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
