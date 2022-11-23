-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwBORDEP]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[AGES] AS [AGES],
      x.[AGENCY] AS [AGENCY],
      x.[CONTACT] AS [CONTACT],
      x.[COST] AS [COST],
      x.[PAYFLAG] AS [PAYFLAG],
      x.[NOPYDBID] AS [NOPYDBID],
      x.[NOPAYSN] AS [NOPAYSN],
      x.[AGYADD1] AS [AGYADD1],
      x.[AGYADD2] AS [AGYADD2],
      x.[AGYCITY] AS [AGYCITY],
      x.[AGYSTATE] AS [AGYSTATE],
      x.[AGYZIP] AS [AGYZIP]
   FROM [clt_NetO].[BORDEP] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
