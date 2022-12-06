-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLR_RES_TITLE_TAX]
AS
   SELECT
      x.[LNUM],
      x.[RESPONSEID],
      x.[DBID],
      x.[TITLERESPONSEID],
      x.[TAXID],
      x.[LANDVALUE],
      x.[IMPROVEDVALUE],
      x.[TOTALVALUE]
   FROM [clt_NetO].[GF_TLR_RES_TITLE_TAX] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
