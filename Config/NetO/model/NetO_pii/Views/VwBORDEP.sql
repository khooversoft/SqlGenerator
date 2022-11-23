-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwBORDEP]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[AGES],
      x.[AGENCY],
      x.[CONTACT],
      x.[COST],
      x.[PAYFLAG],
      x.[NOPYDBID],
      x.[NOPAYSN],
      x.[AGYADD1],
      x.[AGYADD2],
      x.[AGYCITY],
      x.[AGYSTATE],
      x.[AGYZIP]
   FROM [clt_NetO].[BORDEP] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
