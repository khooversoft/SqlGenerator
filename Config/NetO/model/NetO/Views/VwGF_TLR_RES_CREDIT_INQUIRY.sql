-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLR_RES_CREDIT_INQUIRY]
AS
   SELECT
      x.[LNUM],
      x.[RESPONSEID],
      HASHBYTES('SHA2_256', CAST(x.[CREDITRESPONSEID] AS NVARCHAR(50))) AS [CREDITRESPONSEID],
      x.[INQUIRYID],
      x.[DBID],
      x.[PRIMARY_BNUM],
      x.[PRIMARY_DBID],
      x.[SECONDARY_BNUM],
      x.[SECONDARY_DBID],
      HASHBYTES('SHA2_256', x.[NAME]) AS [NAME],
      HASHBYTES('SHA2_256', x.[ADDRESS1]) AS [ADDRESS1],
      HASHBYTES('SHA2_256', x.[ADDRESS2]) AS [ADDRESS2],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      HASHBYTES('SHA2_256', x.[STATE]) AS [STATE],
      x.[POSTAL_CODE],
      x.[DATE_OF_INQUIRY],
      x.[INQUIRY_RESULT_TYPE],
      A0.[Descript] AS [INQUIRY_RESULT_TYPE_X],
      x.[CREDIT_BUSINESS_TYPE],
      A1.[Descript] AS [CREDIT_BUSINESS_TYPE_X],
      x.[CREDIT_LOAN_TYPE],
      x.[TYPE_OTHER_DESC],
      x.[CREDITLIABILITYID]
   FROM [clt_NetO].[GF_TLR_RES_CREDIT_INQUIRY] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[INQUIRY_RESULT_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_RES_CREDIT_INQUIRY' and A0.[COLUMNNAME] = 'INQUIRY_RESULT_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[CREDIT_BUSINESS_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TLR_RES_CREDIT_INQUIRY' and A1.[COLUMNNAME] = 'CREDIT_BUSINESS_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
