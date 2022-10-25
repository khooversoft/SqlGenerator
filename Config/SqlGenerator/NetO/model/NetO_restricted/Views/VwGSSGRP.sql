-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGSSGRP]
AS
   SELECT
      x.[GRPID],
      x.[GRPNAME],
      x.[DESCRIPT],
      x.[GRPABBR],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[GSSGRP] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
