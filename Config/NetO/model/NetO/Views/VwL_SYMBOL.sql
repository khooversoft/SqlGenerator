-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwL_SYMBOL]
AS
   SELECT
      x.[FLDNAME],
      x.[DBSYMBOL],
      HASHBYTES('SHA2_256', x.[ALIAS]) AS [ALIAS],
      x.[SYMBOLID],
      x.[PROFID],
      x.[DESCRIPT],
      x.[REFCODE],
      x.[CATEGORY],
      x.[MISMO_VALUE],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[L_SYMBOL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
