-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_PNP_IPG_PROGRAM]
AS
   SELECT
      x.[PROGRAMCODE],
      x.[PROGRAMNAME],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[GF_TS_PNP_IPG_PROGRAM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
