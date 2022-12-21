-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwBORDEP]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[AGES] AS [AGES],
      x.[AGENCY] AS [AGENCY],
      HASHBYTES('SHA2_256', x.[CONTACT]) AS [CONTACT],
      x.[COST] AS [COST],
      x.[PAYFLAG] AS [PAYFLAG],
      HASHBYTES('SHA2_256', x.[NOPYDBID]) AS [NOPYDBID],
      HASHBYTES('SHA2_256', CAST(x.[NOPAYSN] AS NVARCHAR(50))) AS [NOPAYSN],
      HASHBYTES('SHA2_256', x.[AGYADD1]) AS [AGYADD1],
      HASHBYTES('SHA2_256', x.[AGYADD2]) AS [AGYADD2],
      HASHBYTES('SHA2_256', x.[AGYCITY]) AS [AGYCITY],
      HASHBYTES('SHA2_256', x.[AGYSTATE]) AS [AGYSTATE],
      HASHBYTES('SHA2_256', x.[AGYZIP]) AS [AGYZIP]
   FROM [clt_NetO].[BORDEP] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
