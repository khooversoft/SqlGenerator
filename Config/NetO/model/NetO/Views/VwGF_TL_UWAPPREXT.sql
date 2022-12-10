-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TL_UWAPPREXT]
AS
   SELECT
      x.[LNUM],
      x.[CNTR],
      x.[DBID],
      x.[FLOODMAPDATE],
      x.[FLOODMAPNUMBER],
      x.[NOTFLOODAREA],
      x.[PRIMARYAPPRAISAL],
      x.[REPAIRAMOUNT],
      x.[REPLACEMENTAMOUNT],
      x.[S_FLOODMAPZONE],
      A0.[Descript] AS [S_FLOODMAPZONE_X],
      x.[APP_SENT_BORROWER],
      x.[APPRAISAL_DELIVERED],
      x.[APP_TIME_WAIVE],
      x.[SELLER_ACQUIRED_PRC],
      x.[APP_DELIVERED_DATETYPE],
      A1.[Descript] AS [APP_DELIVERED_DATETYPE_X],
      x.[APP_WAIVED_OK],
      x.[UW_APPR_DOC_ID],
      x.[APPRSL_CENTRAL_AIR],
      x.[PERCENT_SINGLE_FAM],
      x.[PERCENT_TWO_FOUR_UNIT],
      x.[PERCENT_MULTI_FAM],
      x.[PERCENT_COMMERCIAL],
      x.[S_PROP_LOC_TYPE],
      A2.[Descript] AS [S_PROP_LOC_TYPE_X],
      x.[PROP_LTN_TYP_OTHDESC],
      x.[S_CAR_STORAGE_TYPE],
      A3.[Descript] AS [S_CAR_STORAGE_TYPE_X],
      x.[CARSTORAGE_TYPE_OTHR_DESC],
      x.[CARSTORAGE_NBR_CARS],
      x.[S_FOUNDATION_TYPE],
      A4.[Descript] AS [S_FOUNDATION_TYPE_X],
      x.[FNDN_TYPE_OTHER_DESC]
   FROM [clt_NetO].[GF_TL_UWAPPREXT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_FLOODMAPZONE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TL_UWAPPREXT' and A0.[COLUMNNAME] = 'S_FLOODMAPZONE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[APP_DELIVERED_DATETYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TL_UWAPPREXT' and A1.[COLUMNNAME] = 'APP_DELIVERED_DATETYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_PROP_LOC_TYPE] = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TL_UWAPPREXT' and A2.[COLUMNNAME] = 'S_PROP_LOC_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_CAR_STORAGE_TYPE] = A3.[DBSYMBOL] AND A3.[TableName] = 'GF_TL_UWAPPREXT' and A3.[COLUMNNAME] = 'S_CAR_STORAGE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A4 on x.[S_FOUNDATION_TYPE] = A4.[DBSYMBOL] AND A4.[TableName] = 'GF_TL_UWAPPREXT' and A4.[COLUMNNAME] = 'S_FOUNDATION_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
