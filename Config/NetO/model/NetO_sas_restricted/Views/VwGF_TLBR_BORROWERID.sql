-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLBR_BORROWERID]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      x.[PADBID] AS [PADBID],
      x.[PASERIALNO] AS [PASERIALNO],
      HASHBYTES('SHA2_256', x.[IDENTIFICATION_TYPE]) AS [IDENTIFICATION_TYPE],
      A0.[Descript] AS [IDENTIFICATION_TYPE_X],
      HASHBYTES('SHA2_256', x.[IDENTIFICATION_NUMBER]) AS [IDENTIFICATION_NUMBER],
      HASHBYTES('SHA2_256', x.[IDENTIFICATION_ORIGIN]) AS [IDENTIFICATION_ORIGIN],
      HASHBYTES('SHA2_256', CAST(x.[IDENTIFICATION_DATE] AS NVARCHAR(50))) AS [IDENTIFICATION_DATE],
      HASHBYTES('SHA2_256', CAST(x.[IDENTIFICATION_EXP] AS NVARCHAR(50))) AS [IDENTIFICATION_EXP],
      x.[PICTUREID] AS [PICTUREID],
      HASHBYTES('SHA2_256', x.[COUNTRY_DBCODE]) AS [COUNTRY_DBCODE],
      HASHBYTES('SHA2_256', x.[COUNTRY_CODE_A2]) AS [COUNTRY_CODE_A2],
      HASHBYTES('SHA2_256', x.[BORROWERID_STATE]) AS [BORROWERID_STATE]
   FROM [clt_NetO].[GF_TLBR_BORROWERID] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[IDENTIFICATION_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_BORROWERID' and A0.[COLUMNNAME] = 'IDENTIFICATION_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
