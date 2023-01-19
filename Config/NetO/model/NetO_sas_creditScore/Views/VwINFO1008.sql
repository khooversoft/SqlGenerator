-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwINFO1008]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BASEINC] AS [BASEINC],
      x.[OTHERINC] AS [OTHERINC],
      x.[POSINC] AS [POSINC],
      x.[C_BASEINC] AS [C_BASEINC],
      x.[C_OTHERINC] AS [C_OTHERINC],
      x.[C_POSINC] AS [C_POSINC],
      x.[TBASEINC] AS [TBASEINC],
      x.[TOTHERINC] AS [TOTHERINC],
      x.[TPOSINC] AS [TPOSINC],
      x.[TBORINC] AS [TBORINC],
      x.[TCBORINC] AS [TCBORINC],
      x.[ALLINC] AS [ALLINC],
      HASHBYTES('SHA2_256', CAST(x.[FIRSTMORT] AS NVARCHAR(50))) AS [FIRSTMORT],
      x.[SECMORT] AS [SECMORT],
      x.[HAZINS] AS [HAZINS],
      HASHBYTES('SHA2_256', CAST(x.[TAXES] AS NVARCHAR(50))) AS [TAXES],
      x.[MORTINS] AS [MORTINS],
      x.[ASSDUES] AS [ASSDUES],
      x.[LEASE] AS [LEASE],
      x.[OTHEREXP] AS [OTHEREXP],
      x.[THOUSEXP] AS [THOUSEXP],
      x.[NEGCASH] AS [NEGCASH],
      x.[OTHERMTHY] AS [OTHERMTHY],
      x.[ALLPMT] AS [ALLPMT]
   FROM [clt_NetO].[INFO1008] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
