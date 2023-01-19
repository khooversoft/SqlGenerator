-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwTAXINFO]
AS
   SELECT
      x.[LNUM],
      x.[REFUN3RD],
      x.[OTH3RDNM],
      x.[TRAN1040],
      HASHBYTES('SHA2_256', x.[TAXFORM]) AS [TAXFORM],
      x.[CERTCOPY],
      x.[VERIFNON],
      HASHBYTES('SHA2_256', x.[W2COPY]) AS [W2COPY],
      HASHBYTES('SHA2_256', x.[W2STATE]) AS [W2STATE],
      x.[SBAREQ],
      x.[DOEREQ],
      x.[FINREQ],
      x.[VAREQ],
      x.[FRMREQ1],
      x.[FRMREQ2],
      x.[FRMREQ3],
      x.[FRMREQ4],
      x.[PERCOST],
      x.[REQTIME],
      x.[TAXTYPE1],
      x.[TAXTYPE2],
      x.[TAXTYPE3],
      x.[TAXTYPE4],
      x.[BRTITLE1],
      x.[BRTITLE2],
      x.[CAFNUM],
      x.[PLANNUM],
      x.[APPNWADD],
      x.[APPNWPH],
      x.[TAXSPUSE],
      x.[TAXTOAPP],
      x.[TAXREVOK],
      x.[EXECMOU],
      HASHBYTES('SHA2_256', x.[MOUACCT]) AS [MOUACCT],
      HASHBYTES('SHA2_256', x.[REQPHONE]) AS [REQPHONE],
      x.[NUMPRDS],
      x.[APPNWFAX_CHK],
      x.[PERREQ1],
      x.[PERREQ2],
      x.[PERREQ3],
      x.[PERREQ4],
      x.[PERREQ5],
      x.[PERREQ6],
      x.[PERREQ7],
      x.[PERREQ8]
   FROM [clt_NetO].[TAXINFO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
