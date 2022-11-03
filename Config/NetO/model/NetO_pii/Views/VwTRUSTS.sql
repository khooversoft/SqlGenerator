-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwTRUSTS]
AS
   SELECT
      x.[LNUM],
      x.[TRUSTCNT],
      x.[TRSTDBID],
      x.[TRSTSERI],
      x.[TRSTNAME],
      x.[TRSTDATE],
      x.[TRSTTXID],
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
