-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwTAXINFO]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[REFUN3RD] AS [REFUN3RD],
      x.[OTH3RDNM] AS [OTH3RDNM],
      x.[TRAN1040] AS [TRAN1040],
      x.[TAXFORM] AS [TAXFORM],
      x.[CERTCOPY] AS [CERTCOPY],
      x.[VERIFNON] AS [VERIFNON],
      x.[W2COPY] AS [W2COPY],
      x.[W2STATE] AS [W2STATE],
      x.[SBAREQ] AS [SBAREQ],
      x.[DOEREQ] AS [DOEREQ],
      x.[FINREQ] AS [FINREQ],
      x.[VAREQ] AS [VAREQ],
      x.[FRMREQ1] AS [FRMREQ1],
      x.[FRMREQ2] AS [FRMREQ2],
      x.[FRMREQ3] AS [FRMREQ3],
      x.[FRMREQ4] AS [FRMREQ4],
      x.[PERCOST] AS [PERCOST],
      x.[REQTIME] AS [REQTIME],
      x.[TAXTYPE1] AS [TAXTYPE1],
      x.[TAXTYPE2] AS [TAXTYPE2],
      x.[TAXTYPE3] AS [TAXTYPE3],
      x.[TAXTYPE4] AS [TAXTYPE4],
      x.[BRTITLE1] AS [BRTITLE1],
      x.[BRTITLE2] AS [BRTITLE2],
      x.[CAFNUM] AS [CAFNUM],
      x.[PLANNUM] AS [PLANNUM],
      x.[APPNWADD] AS [APPNWADD],
      x.[APPNWPH] AS [APPNWPH],
      x.[TAXSPUSE] AS [TAXSPUSE],
      x.[TAXTOAPP] AS [TAXTOAPP],
      x.[TAXREVOK] AS [TAXREVOK],
      x.[EXECMOU] AS [EXECMOU],
      x.[MOUACCT] AS [MOUACCT],
      x.[REQPHONE] AS [REQPHONE],
      x.[NUMPRDS] AS [NUMPRDS],
      x.[APPNWFAX_CHK] AS [APPNWFAX_CHK],
      x.[PERREQ1] AS [PERREQ1],
      x.[PERREQ2] AS [PERREQ2],
      x.[PERREQ3] AS [PERREQ3],
      x.[PERREQ4] AS [PERREQ4],
      x.[PERREQ5] AS [PERREQ5],
      x.[PERREQ6] AS [PERREQ6],
      x.[PERREQ7] AS [PERREQ7],
      x.[PERREQ8] AS [PERREQ8]
   FROM [clt_NetO].[TAXINFO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
