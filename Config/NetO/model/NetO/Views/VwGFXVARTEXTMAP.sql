-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGFXVARTEXTMAP]
AS
   SELECT
      x.[TABLENAME],
      x.[DBIDCOLUMN],
      HASHBYTES('SHA2_256', x.[SERIALNOCOLUMN]) AS [SERIALNOCOLUMN],
      x.[VARTEXTTABLE],
      HASHBYTES('SHA2_256', x.[COMPROPERTYNAME]) AS [COMPROPERTYNAME],
      x.[VARTEXTPROPERTYCOLUMN],
      x.[LOGICALFIELDNAME],
      x.[ISPROPERTYREADONLY],
      x.[ROWWRAPPERORDER],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[GFXVARTEXTMAP] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
