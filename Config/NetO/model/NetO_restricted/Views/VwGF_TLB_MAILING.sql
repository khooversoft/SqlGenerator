-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLB_MAILING]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', x.[MAILADDR1]) AS [MAILADDR1],
      HASHBYTES('SHA2_256', x.[MAILADDR2]) AS [MAILADDR2],
      HASHBYTES('SHA2_256', x.[MAILCITY]) AS [MAILCITY],
      HASHBYTES('SHA2_256', x.[MAILSTATE]) AS [MAILSTATE],
      HASHBYTES('SHA2_256', x.[MAILCNTY]) AS [MAILCNTY],
      HASHBYTES('SHA2_256', x.[MAILZIP]) AS [MAILZIP],
      HASHBYTES('SHA2_256', x.[MAILCOUNTRY]) AS [MAILCOUNTRY],
      x.[MAIL_FADDR_INDICATOR],
      x.[S_MAIL_UNIT_TYPE],
      A0.[Descript] AS [S_MAIL_UNIT_TYPE_X],
      HASHBYTES('SHA2_256', x.[MAIL_UNIT_NUM]) AS [MAIL_UNIT_NUM],
      HASHBYTES('SHA2_256', x.[MAIL_COUNTRY_CODE]) AS [MAIL_COUNTRY_CODE],
      HASHBYTES('SHA2_256', x.[BOR_MAIL_STATE_FOREIN]) AS [BOR_MAIL_STATE_FOREIN],
      HASHBYTES('SHA2_256', x.[MAIL_POST_CODE_FOREIN]) AS [MAIL_POST_CODE_FOREIN]
   FROM [clt_NetO].[GF_TLB_MAILING] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_MAIL_UNIT_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLB_MAILING' and A0.[COLUMNNAME] = 'S_MAIL_UNIT_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
