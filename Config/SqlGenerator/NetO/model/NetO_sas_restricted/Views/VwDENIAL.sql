-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwDENIAL]
AS
   SELECT
      x.[LNUM],
      x.[APPRGUIDE],
      x.[APPRINCON],
      x.[APPRCOMP],
      x.[APPRUNACC],
      x.[APPRRATIO],
      x.[APPROTHR],
      x.[APPRREASN],
      x.[CRDHISTRY],
      x.[BANKRPTCY],
      x.[PYMTPRES],
      x.[PYMTPREV],
      x.[CRDEXPLAN],
      x.[NONCRD],
      x.[OBLIGATN],
      x.[CRDOTHR],
      x.[CRDREASN],
      x.[IRREGEMP],
      x.[ESTINC],
      x.[STABLEINC],
      x.[EMPOTHR],
      x.[EMPREASN],
      x.[LIQASST],
      x.[CASH],
      x.[SECFINC],
      x.[ASSTOTHR],
      x.[ASSTREASN],
      x.[INCINSUF1],
      x.[INCINSUF2],
      x.[SHORTINC],
      x.[EXCESSRAT],
      x.[QUALOTHR],
      x.[QUALREASN],
      x.[APPLINCMP],
      x.[OTHER],
      x.[OTHERREASN]
   FROM [clt_NetO].[DENIAL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
