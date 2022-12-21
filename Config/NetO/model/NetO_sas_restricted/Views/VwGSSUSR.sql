-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGSSUSR]
AS
   SELECT
      x.[USRID] AS [USRID],
      HASHBYTES('SHA2_256', x.[USRNAME]) AS [USRNAME],
      HASHBYTES('SHA2_256', x.[FULLNAME]) AS [FULLNAME],
      x.[DESCRIPT] AS [DESCRIPT],
      x.[SECMASK] AS [SECMASK],
      x.[CID] AS [CID]
   FROM [clt_NetO].[GSSUSR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
