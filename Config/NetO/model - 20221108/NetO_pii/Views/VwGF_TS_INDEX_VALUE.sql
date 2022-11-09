-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_INDEX_VALUE]
AS
   SELECT
      x.[S_INDEX],
      x.[INDEX_ID],
      x.[EFFECTIVE_DATE],
      x.[INDEX_VALUE]
   FROM [clt_NetO].[GF_TS_INDEX_VALUE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
