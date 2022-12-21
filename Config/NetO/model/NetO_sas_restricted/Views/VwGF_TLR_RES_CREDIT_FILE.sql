-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLR_RES_CREDIT_FILE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[RESPONSEID] AS [RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      HASHBYTES('SHA2_256', x.[CREDITFILEID]) AS [CREDITFILEID],
      HASHBYTES('SHA2_256', x.[BORROWER_ID]) AS [BORROWER_ID],
      HASHBYTES('SHA2_256', x.[CREDITSCOREID]) AS [CREDITSCOREID],
      x.[REPOSITORY_SOURCE_TYPE] AS [REPOSITORY_SOURCE_TYPE],
      x.[INFILE_DATE] AS [INFILE_DATE],
      x.[BNUM] AS [BNUM],
      x.[S_RESULTSTATUSTYPE] AS [S_RESULTSTATUSTYPE],
      A0.[Descript] AS [S_RESULTSTATUSTYPE_X],
      x.[RESULTSTATUSTTHERDESC] AS [RESULTSTATUSTTHERDESC],
      HASHBYTES('SHA2_256', x.[CREDREPOSSRCTYPEOTHERDESC]) AS [CREDREPOSSRCTYPEOTHERDESC]
   FROM [clt_NetO].[GF_TLR_RES_CREDIT_FILE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_RESULTSTATUSTYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_RES_CREDIT_FILE' and A0.[COLUMNNAME] = 'S_RESULTSTATUSTYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
