-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGSSGRP]
AS
   SELECT
      x.[GRPID] AS [GRPID],
      x.[GRPNAME] AS [GRPNAME],
      x.[DESCRIPT] AS [DESCRIPT],
      x.[GRPABBR] AS [GRPABBR],
      x.[SRCENV] AS [SRCENV],
      x.[REC_CUSTOM] AS [REC_CUSTOM],
      x.[CREATE_DATE] AS [CREATE_DATE],
      x.[MODIFY_DATE] AS [MODIFY_DATE]
   FROM [clt_NetO].[GSSGRP] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
