-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwDENIAL]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[APPRGUIDE] AS [APPRGUIDE],
      x.[APPRINCON] AS [APPRINCON],
      x.[APPRCOMP] AS [APPRCOMP],
      x.[APPRUNACC] AS [APPRUNACC],
      x.[APPRRATIO] AS [APPRRATIO],
      x.[APPROTHR] AS [APPROTHR],
      x.[APPRREASN] AS [APPRREASN],
      HASHBYTES('SHA2_256', x.[CRDHISTRY]) AS [CRDHISTRY],
      HASHBYTES('SHA2_256', x.[BANKRPTCY]) AS [BANKRPTCY],
      x.[PYMTPRES] AS [PYMTPRES],
      x.[PYMTPREV] AS [PYMTPREV],
      x.[CRDEXPLAN] AS [CRDEXPLAN],
      x.[NONCRD] AS [NONCRD],
      x.[OBLIGATN] AS [OBLIGATN],
      x.[CRDOTHR] AS [CRDOTHR],
      x.[CRDREASN] AS [CRDREASN],
      x.[IRREGEMP] AS [IRREGEMP],
      x.[ESTINC] AS [ESTINC],
      x.[STABLEINC] AS [STABLEINC],
      x.[EMPOTHR] AS [EMPOTHR],
      x.[EMPREASN] AS [EMPREASN],
      x.[LIQASST] AS [LIQASST],
      x.[CASH] AS [CASH],
      x.[SECFINC] AS [SECFINC],
      x.[ASSTOTHR] AS [ASSTOTHR],
      x.[ASSTREASN] AS [ASSTREASN],
      x.[INCINSUF1] AS [INCINSUF1],
      x.[INCINSUF2] AS [INCINSUF2],
      x.[SHORTINC] AS [SHORTINC],
      x.[EXCESSRAT] AS [EXCESSRAT],
      x.[QUALOTHR] AS [QUALOTHR],
      x.[QUALREASN] AS [QUALREASN],
      x.[APPLINCMP] AS [APPLINCMP],
      x.[OTHER] AS [OTHER],
      x.[OTHERREASN] AS [OTHERREASN]
   FROM [clt_NetO].[DENIAL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
