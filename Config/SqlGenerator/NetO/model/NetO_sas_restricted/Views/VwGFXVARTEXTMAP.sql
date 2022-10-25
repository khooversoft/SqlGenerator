-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGFXVARTEXTMAP]
AS
   SELECT
      x.[TABLENAME],
      x.[DBIDCOLUMN],
      x.[SERIALNOCOLUMN],
      x.[VARTEXTTABLE],
      x.[COMPROPERTYNAME],
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
