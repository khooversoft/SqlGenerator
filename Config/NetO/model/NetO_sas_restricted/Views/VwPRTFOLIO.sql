-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwPRTFOLIO]
AS
   SELECT
      x.[LNUM],
      x.[PNUM],
      x.[NOTERATE],
      x.[UPB],
      x.[OMA],
      x.[OIR],
      x.[OICD],
      x.[OPCD],
      x.[FPDD],
      x.[IRCP],
      x.[IRCD],
      x.[MARGIN],
      x.[TP],
      x.[FLOOR],
      x.[RMNGTERM],
      x.[BALLDATE],
      x.[PCD],
      x.[PCP],
      x.[UNITS],
      x.[LOANTERM],
      x.[AMTERM],
      x.[RF],
      x.[TYPEAQ],
      x.[MATDATE],
      x.[REFIAMT],
      x.[RDF],
      x.[ORIGDATE],
      x.[DUEDATE],
      x.[MATTERM],
      x.[OLTV],
      x.[CLTV],
      x.[MKT],
      x.[COMDATE],
      x.[NAC],
      x.[LCA],
      x.[SPST],
      x.[MTHPYMT],
      x.[NEWPIPMT],
      x.[NEWIRATE],
      x.[SRP],
      x.[ICO],
      x.[EXCS],
      x.[BUYUPDN],
      x.[COCODE],
      x.[ARMFLAG],
      x.[CEILING],
      x.[COMDT]
   FROM [clt_NetO].[PRTFOLIO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
