-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TS_WF_PROCESS_MODEL]
AS
   SELECT
      x.[S_PROCESS_MODEL] AS [S_PROCESS_MODEL],
      x.[IS_ACTIVE] AS [IS_ACTIVE],
      x.[EST_TO_COMPLETE] AS [EST_TO_COMPLETE]
   FROM [clt_NetO].[GF_TS_WF_PROCESS_MODEL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
