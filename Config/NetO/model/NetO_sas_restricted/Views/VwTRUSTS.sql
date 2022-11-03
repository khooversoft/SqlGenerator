-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwTRUSTS]
AS
   SELECT
      x.[LNUM],
      x.[TRUSTCNT],
      x.[TRSTDBID],
      x.[TRSTSERI],
      HASHBYTES('SHA2_256', x.[TRSTNAME]) AS [TRSTNAME],
      x.[TRSTDATE],
      HASHBYTES('SHA2_256', x.[TRSTTXID]) AS [TRSTTXID],
      x.[TRSTADT1],
      x.[TRSTADT2],
      x.[TRSTNUMB],
      x.[S_TRSTYP],
      x.[TRSTINST],
      x.[TRSTREV],
      x.[STATE],
      x.[TRSTNOMINEE],
      x.[IDENTIFICATION_NUM],
      x.[QPRT_IND],
      x.[QPRT_EXP_DATE],
      x.[QPRT_BEN_WAIVER],
      x.[LIVTRST]
   FROM [clt_NetO].[TRUSTS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
