-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TS_CMS_CONTACT_EMAIL]
AS
   SELECT
      x.[CID] AS [CID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[S_EMAILTYPE] AS [S_EMAILTYPE],
      HASHBYTES('SHA2_256', x.[EMAILADDR]) AS [EMAILADDR]
   FROM [clt_NetO].[GF_TS_CMS_CONTACT_EMAIL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
