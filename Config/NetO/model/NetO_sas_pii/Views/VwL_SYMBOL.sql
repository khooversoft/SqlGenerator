-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwL_SYMBOL]
AS
   SELECT
      x.[FLDNAME] AS [FLDNAME],
      x.[DBSYMBOL] AS [DBSYMBOL],
      x.[ALIAS] AS [ALIAS],
      x.[SYMBOLID] AS [SYMBOLID],
      x.[PROFID] AS [PROFID],
      x.[DESCRIPT] AS [DESCRIPT],
      x.[REFCODE] AS [REFCODE],
      x.[CATEGORY] AS [CATEGORY],
      x.[MISMO_VALUE] AS [MISMO_VALUE],
      x.[SRCENV] AS [SRCENV],
      x.[REC_CUSTOM] AS [REC_CUSTOM],
      x.[CREATE_DATE] AS [CREATE_DATE],
      x.[MODIFY_DATE] AS [MODIFY_DATE]
   FROM [clt_NetO].[L_SYMBOL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
