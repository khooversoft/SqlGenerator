-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLB_MAILING]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[MAILADDR1],
      x.[MAILADDR2],
      x.[MAILCITY],
      x.[MAILSTATE],
      x.[MAILCNTY],
      x.[MAILZIP],
      x.[MAILCOUNTRY],
      x.[MAIL_FADDR_INDICATOR],
      x.[S_MAIL_UNIT_TYPE],
      x.[MAIL_UNIT_NUM],
      x.[MAIL_COUNTRY_CODE],
      x.[BOR_MAIL_STATE_FOREIN],
      x.[MAIL_POST_CODE_FOREIN]
   FROM [clt_NetO].[GF_TLB_MAILING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;