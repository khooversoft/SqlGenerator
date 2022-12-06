-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLR_RES_TITLE_TAX]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[DBID] AS [DBID],
      x.[TITLERESPONSEID] AS [TITLERESPONSEID],
      x.[TAXID] AS [TAXID],
      x.[LANDVALUE] AS [LANDVALUE],
      x.[IMPROVEDVALUE] AS [IMPROVEDVALUE],
      x.[TOTALVALUE] AS [TOTALVALUE]
   FROM [clt_NetO].[GF_TLR_RES_TITLE_TAX] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
