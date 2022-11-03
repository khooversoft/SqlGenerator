-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwPRTFOLIO]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[PNUM] AS [PNUM],
      x.[NOTERATE] AS [NOTERATE],
      x.[UPB] AS [UPB],
      x.[OMA] AS [OMA],
      x.[OIR] AS [OIR],
      x.[OICD] AS [OICD],
      x.[OPCD] AS [OPCD],
      x.[FPDD] AS [FPDD],
      x.[IRCP] AS [IRCP],
      x.[IRCD] AS [IRCD],
      x.[MARGIN] AS [MARGIN],
      x.[TP] AS [TP],
      x.[FLOOR] AS [FLOOR],
      x.[RMNGTERM] AS [RMNGTERM],
      x.[BALLDATE] AS [BALLDATE],
      x.[PCD] AS [PCD],
      x.[PCP] AS [PCP],
      x.[UNITS] AS [UNITS],
      x.[LOANTERM] AS [LOANTERM],
      x.[AMTERM] AS [AMTERM],
      x.[RF] AS [RF],
      x.[TYPEAQ] AS [TYPEAQ],
      x.[MATDATE] AS [MATDATE],
      x.[REFIAMT] AS [REFIAMT],
      x.[RDF] AS [RDF],
      x.[ORIGDATE] AS [ORIGDATE],
      x.[DUEDATE] AS [DUEDATE],
      x.[MATTERM] AS [MATTERM],
      x.[OLTV] AS [OLTV],
      x.[CLTV] AS [CLTV],
      x.[MKT] AS [MKT],
      x.[COMDATE] AS [COMDATE],
      x.[NAC] AS [NAC],
      x.[LCA] AS [LCA],
      x.[SPST] AS [SPST],
      x.[MTHPYMT] AS [MTHPYMT],
      x.[NEWPIPMT] AS [NEWPIPMT],
      x.[NEWIRATE] AS [NEWIRATE],
      x.[SRP] AS [SRP],
      x.[ICO] AS [ICO],
      x.[EXCS] AS [EXCS],
      x.[BUYUPDN] AS [BUYUPDN],
      x.[COCODE] AS [COCODE],
      x.[ARMFLAG] AS [ARMFLAG],
      x.[CEILING] AS [CEILING],
      x.[COMDT] AS [COMDT]
   FROM [clt_NetO].[PRTFOLIO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
