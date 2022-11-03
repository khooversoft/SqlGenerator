-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGSSUSR]
AS
   SELECT
      x.[USRID],
      x.[USRNAME],
      x.[FULLNAME],
      x.[DESCRIPT],
      x.[SECMASK],
      x.[CID]
   FROM [clt_NetO].[GSSUSR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
