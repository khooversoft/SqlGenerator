-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TS_INDEX_VALUE]
AS
   SELECT
      x.[S_INDEX] AS [S_INDEX],
      x.[INDEX_ID] AS [INDEX_ID],
      x.[EFFECTIVE_DATE] AS [EFFECTIVE_DATE],
      x.[INDEX_VALUE] AS [INDEX_VALUE]
   FROM [clt_NetO].[GF_TS_INDEX_VALUE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
