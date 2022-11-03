-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGFXVARTEXTMAP]
AS
   SELECT
      x.[TABLENAME] AS [TABLENAME],
      x.[DBIDCOLUMN] AS [DBIDCOLUMN],
      x.[SERIALNOCOLUMN] AS [SERIALNOCOLUMN],
      x.[VARTEXTTABLE] AS [VARTEXTTABLE],
      x.[COMPROPERTYNAME] AS [COMPROPERTYNAME],
      x.[VARTEXTPROPERTYCOLUMN] AS [VARTEXTPROPERTYCOLUMN],
      x.[LOGICALFIELDNAME] AS [LOGICALFIELDNAME],
      x.[ISPROPERTYREADONLY] AS [ISPROPERTYREADONLY],
      x.[ROWWRAPPERORDER] AS [ROWWRAPPERORDER],
      x.[SRCENV] AS [SRCENV],
      x.[REC_CUSTOM] AS [REC_CUSTOM],
      x.[CREATE_DATE] AS [CREATE_DATE],
      x.[MODIFY_DATE] AS [MODIFY_DATE]
   FROM [clt_NetO].[GFXVARTEXTMAP] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
