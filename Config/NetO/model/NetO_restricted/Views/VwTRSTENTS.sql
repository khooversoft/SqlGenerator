-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwTRSTENTS]
AS
   SELECT
      x.[LNUM],
      x.[TRUSTNO],
      x.[DBID],
      x.[COUNTER],
      x.[TRFLAG],
      x.[FTRNAME],
      x.[LTRNAME],
      x.[TRSTTYPE],
      x.[TRSTINST],
      x.[MTRNAME],
      x.[TRNAME_SUFFIX],
      x.[POAFLAG],
      x.[POA],
      x.[ADDR],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[AUTHORIZED_SIGNEE],
      x.[TRSTTL],
      x.[TRUSTPHONE],
      x.[TRUST_FOREIGN_ADDRESS],
      x.[TRUST_FOREIGN_COUNTRY],
      x.[TRUST_STREET_ADDR2],
      x.[EMAIL],
      x.[S_TRUST_UNIT_TYPE],
      A0.Descript AS [D_TRUST_UNIT_TYPE],
      x.[TRUST_UNIT_NUM],
      x.[TRUST_COUNTRY_CODE],
      x.[LIVING_TRUST_BNUM],
      x.[TRST_STATE_FOR],
      x.[TRST_POSTCODE]
   FROM [clt_NetO].[TRSTENTS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_TRUST_UNIT_TYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'TRSTENTS' and A0.[COLUMNNAME] = 'S_TRUST_UNIT_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
