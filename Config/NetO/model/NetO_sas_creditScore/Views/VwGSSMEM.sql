-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwGSSMEM]
AS
   SELECT
      x.[GRPID] AS [GRPID],
      x.[USRID] AS [USRID]
   FROM [clt_NetO].[GSSMEM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
