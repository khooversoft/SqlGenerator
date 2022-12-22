-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwACTIVITY]
AS
   SELECT
      x.[S_ACTIVI],
      x.[TIMEALLT],
      x.[TIMETYPE],
      x.[INITIALACT],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[ACTIVITY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
