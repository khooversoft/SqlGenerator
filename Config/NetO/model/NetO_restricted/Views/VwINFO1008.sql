-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwINFO1008]
AS
   SELECT
      x.[LNUM],
      x.[BASEINC],
      x.[OTHERINC],
      x.[POSINC],
      x.[C_BASEINC],
      x.[C_OTHERINC],
      x.[C_POSINC],
      x.[TBASEINC],
      x.[TOTHERINC],
      x.[TPOSINC],
      x.[TBORINC],
      x.[TCBORINC],
      x.[ALLINC],
      HASHBYTES('SHA2_256', CAST(x.[FIRSTMORT] AS NVARCHAR(50))) AS [FIRSTMORT],
      x.[SECMORT],
      x.[HAZINS],
      HASHBYTES('SHA2_256', CAST(x.[TAXES] AS NVARCHAR(50))) AS [TAXES],
      x.[MORTINS],
      x.[ASSDUES],
      x.[LEASE],
      x.[OTHEREXP],
      x.[THOUSEXP],
      x.[NEGCASH],
      x.[OTHERMTHY],
      x.[ALLPMT]
   FROM [clt_NetO].[INFO1008] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
