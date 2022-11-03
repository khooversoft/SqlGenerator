-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_SYMBOL_XREF]
AS
   SELECT
      x.[TABLENAME] AS [TABLENAME],
      x.[COLUMNNAME] AS [COLUMNNAME],
      x.[FLDNAME] AS [FLDNAME],
      x.[LKP_TABLE] AS [LKP_TABLE],
      x.[LKP_COLUMN] AS [LKP_COLUMN],
      x.[LKP_DISPLAY_COLUMN] AS [LKP_DISPLAY_COLUMN]
   FROM [clt_NetO].[WG_SYMBOL_XREF] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
