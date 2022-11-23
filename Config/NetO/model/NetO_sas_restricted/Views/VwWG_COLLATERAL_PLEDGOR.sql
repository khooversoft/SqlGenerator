-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_COLLATERAL_PLEDGOR]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[ROWSERIALNO] AS [ROWSERIALNO],
      x.[CHILDROWSERIALNO] AS [CHILDROWSERIALNO],
      x.[PLEDGOR_TYPE] AS [PLEDGOR_TYPE],
      x.[PLEDGOR_MID_NAME] AS [PLEDGOR_MID_NAME],
      x.[PLEDGOR_LAST_NAME] AS [PLEDGOR_LAST_NAME],
      x.[PLEDGOR_ENTITY_NAME] AS [PLEDGOR_ENTITY_NAME],
      x.[PLEDGOR_SIGN_CAP] AS [PLEDGOR_SIGN_CAP],
      x.[PLEDGOR_ENTITY_TTL] AS [PLEDGOR_ENTITY_TTL],
      x.[PLEDGOR_FIRST_NAME] AS [PLEDGOR_FIRST_NAME]
   FROM [clt_NetO].[WG_COLLATERAL_PLEDGOR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
