-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGSSUSR]
AS
   SELECT
      x.[USRID] AS [USRID],
      x.[USRNAME] AS [USRNAME],
      x.[FULLNAME] AS [FULLNAME],
      x.[DESCRIPT] AS [DESCRIPT],
      x.[SECMASK] AS [SECMASK],
      x.[CID] AS [CID]
   FROM [clt_NetO].[GSSUSR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
