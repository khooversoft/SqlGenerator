-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLR_TL_REC_DOC_ROLES]
AS
   SELECT
      x.[LNUM],
      x.[RESPONSEID],
      x.[TITLERESPONSEID],
      x.[DBID],
      x.[RECDOCID],
      x.[RECDOCEXTID],
      x.[EXTITEMSID],
      x.[FIRSTNAME],
      x.[LASTNAME],
      x.[VESTINGINFO],
      x.[COMMENTS],
      x.[UNPARSEDNAME],
      x.[EXTTYPE]
   FROM [clt_NetO].[GF_TLR_TL_REC_DOC_ROLES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
