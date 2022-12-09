-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwTRSTENTS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[TRUSTNO] AS [TRUSTNO],
      x.[DBID] AS [DBID],
      x.[COUNTER] AS [COUNTER],
      x.[TRFLAG] AS [TRFLAG],
      x.[FTRNAME] AS [FTRNAME],
      x.[LTRNAME] AS [LTRNAME],
      x.[TRSTTYPE] AS [TRSTTYPE],
      x.[TRSTINST] AS [TRSTINST],
      x.[MTRNAME] AS [MTRNAME],
      x.[TRNAME_SUFFIX] AS [TRNAME_SUFFIX],
      x.[POAFLAG] AS [POAFLAG],
      x.[POA] AS [POA],
      x.[ADDR] AS [ADDR],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE] AS [STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[AUTHORIZED_SIGNEE] AS [AUTHORIZED_SIGNEE],
      x.[TRSTTL] AS [TRSTTL],
      x.[TRUSTPHONE] AS [TRUSTPHONE],
      x.[TRUST_FOREIGN_ADDRESS] AS [TRUST_FOREIGN_ADDRESS],
      x.[TRUST_FOREIGN_COUNTRY] AS [TRUST_FOREIGN_COUNTRY],
      x.[TRUST_STREET_ADDR2] AS [TRUST_STREET_ADDR2],
      x.[EMAIL] AS [EMAIL],
      x.[S_TRUST_UNIT_TYPE] AS [S_TRUST_UNIT_TYPE],
      A0.Descript AS [TRUST_UNIT_TYPE],
      x.[TRUST_UNIT_NUM] AS [TRUST_UNIT_NUM],
      x.[TRUST_COUNTRY_CODE] AS [TRUST_COUNTRY_CODE],
      x.[LIVING_TRUST_BNUM] AS [LIVING_TRUST_BNUM],
      x.[TRST_STATE_FOR] AS [TRST_STATE_FOR],
      x.[TRST_POSTCODE] AS [TRST_POSTCODE]
   FROM [clt_NetO].[TRSTENTS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_TRUST_UNIT_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'TRSTENTS' and A0.[COLUMNNAME] = 'S_TRUST_UNIT_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
