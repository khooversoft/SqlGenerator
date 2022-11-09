-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGSSMEM]
AS
   SELECT
      x.[GRPID],
      x.[USRID]
   FROM [clt_NetO].[GSSMEM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
