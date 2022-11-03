-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_SYMBOL_XREF]
AS
   SELECT
      x.[TABLENAME],
      x.[COLUMNNAME],
      x.[FLDNAME],
      x.[LKP_TABLE],
      x.[LKP_COLUMN],
      x.[LKP_DISPLAY_COLUMN]
   FROM [clt_NetO].[WG_SYMBOL_XREF] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
