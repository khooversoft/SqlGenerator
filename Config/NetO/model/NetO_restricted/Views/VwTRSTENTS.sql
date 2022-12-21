-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwTRSTENTS]
AS
   SELECT
      x.[LNUM],
      HASHBYTES('SHA2_256', CAST(x.[TRUSTNO] AS NVARCHAR(50))) AS [TRUSTNO],
      x.[DBID],
      x.[COUNTER],
      x.[TRFLAG],
      HASHBYTES('SHA2_256', x.[FTRNAME]) AS [FTRNAME],
      x.[LTRNAME],
      x.[TRSTTYPE],
      HASHBYTES('SHA2_256', x.[TRSTINST]) AS [TRSTINST],
      HASHBYTES('SHA2_256', x.[MTRNAME]) AS [MTRNAME],
      x.[TRNAME_SUFFIX],
      x.[POAFLAG],
      x.[POA],
      HASHBYTES('SHA2_256', x.[ADDR]) AS [ADDR],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      HASHBYTES('SHA2_256', x.[STATE]) AS [STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      HASHBYTES('SHA2_256', x.[AUTHORIZED_SIGNEE]) AS [AUTHORIZED_SIGNEE],
      x.[TRSTTL],
      HASHBYTES('SHA2_256', x.[TRUSTPHONE]) AS [TRUSTPHONE],
      HASHBYTES('SHA2_256', x.[TRUST_FOREIGN_ADDRESS]) AS [TRUST_FOREIGN_ADDRESS],
      HASHBYTES('SHA2_256', x.[TRUST_FOREIGN_COUNTRY]) AS [TRUST_FOREIGN_COUNTRY],
      HASHBYTES('SHA2_256', x.[TRUST_STREET_ADDR2]) AS [TRUST_STREET_ADDR2],
      HASHBYTES('SHA2_256', x.[EMAIL]) AS [EMAIL],
      x.[S_TRUST_UNIT_TYPE],
      A0.[Descript] AS [S_TRUST_UNIT_TYPE_X],
      HASHBYTES('SHA2_256', x.[TRUST_UNIT_NUM]) AS [TRUST_UNIT_NUM],
      HASHBYTES('SHA2_256', x.[TRUST_COUNTRY_CODE]) AS [TRUST_COUNTRY_CODE],
      x.[LIVING_TRUST_BNUM],
      HASHBYTES('SHA2_256', x.[TRST_STATE_FOR]) AS [TRST_STATE_FOR],
      HASHBYTES('SHA2_256', x.[TRST_POSTCODE]) AS [TRST_POSTCODE]
   FROM [clt_NetO].[TRSTENTS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_TRUST_UNIT_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'TRSTENTS' and A0.[COLUMNNAME] = 'S_TRUST_UNIT_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
