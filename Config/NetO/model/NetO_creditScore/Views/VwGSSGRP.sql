-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGSSGRP]
AS
   SELECT
      x.[GRPID],
      HASHBYTES('SHA2_256', x.[GRPNAME]) AS [GRPNAME],
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
