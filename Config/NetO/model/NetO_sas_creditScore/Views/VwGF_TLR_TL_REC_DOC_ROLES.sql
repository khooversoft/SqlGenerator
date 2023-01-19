-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwGF_TLR_TL_REC_DOC_ROLES]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[TITLERESPONSEID] AS [TITLERESPONSEID],
      x.[DBID] AS [DBID],
      x.[RECDOCID] AS [RECDOCID],
      x.[RECDOCEXTID] AS [RECDOCEXTID],
      x.[EXTITEMSID] AS [EXTITEMSID],
      HASHBYTES('SHA2_256', x.[FIRSTNAME]) AS [FIRSTNAME],
      HASHBYTES('SHA2_256', x.[LASTNAME]) AS [LASTNAME],
      x.[VESTINGINFO] AS [VESTINGINFO],
      x.[COMMENTS] AS [COMMENTS],
      x.[UNPARSEDNAME] AS [UNPARSEDNAME],
      x.[EXTTYPE] AS [EXTTYPE]
   FROM [clt_NetO].[GF_TLR_TL_REC_DOC_ROLES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
