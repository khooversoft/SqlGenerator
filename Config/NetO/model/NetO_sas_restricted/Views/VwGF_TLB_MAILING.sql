-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLB_MAILING]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[MAILADDR1] AS [MAILADDR1],
      x.[MAILADDR2] AS [MAILADDR2],
      x.[MAILCITY] AS [MAILCITY],
      x.[MAILSTATE] AS [MAILSTATE],
      x.[MAILCNTY] AS [MAILCNTY],
      x.[MAILZIP] AS [MAILZIP],
      x.[MAILCOUNTRY] AS [MAILCOUNTRY],
      x.[MAIL_FADDR_INDICATOR] AS [MAIL_FADDR_INDICATOR],
      x.[S_MAIL_UNIT_TYPE] AS [S_MAIL_UNIT_TYPE],
      x.[MAIL_UNIT_NUM] AS [MAIL_UNIT_NUM],
      x.[MAIL_COUNTRY_CODE] AS [MAIL_COUNTRY_CODE],
      x.[BOR_MAIL_STATE_FOREIN] AS [BOR_MAIL_STATE_FOREIN],
      x.[MAIL_POST_CODE_FOREIN] AS [MAIL_POST_CODE_FOREIN]
   FROM [clt_NetO].[GF_TLB_MAILING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
