-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGSSUSR]
AS
   SELECT
      x.[USRID],
      HASHBYTES('SHA2_256', x.[USRNAME]) AS [USRNAME],
      HASHBYTES('SHA2_256', x.[FULLNAME]) AS [FULLNAME],
      x.[DESCRIPT],
      x.[SECMASK],
      x.[CID]
   FROM [clt_NetO].[GSSUSR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
