-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TL_UWAPPREXT]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[CNTR] AS [CNTR],
      x.[DBID] AS [DBID],
      x.[FLOODMAPDATE] AS [FLOODMAPDATE],
      x.[FLOODMAPNUMBER] AS [FLOODMAPNUMBER],
      x.[NOTFLOODAREA] AS [NOTFLOODAREA],
      x.[PRIMARYAPPRAISAL] AS [PRIMARYAPPRAISAL],
      x.[REPAIRAMOUNT] AS [REPAIRAMOUNT],
      x.[REPLACEMENTAMOUNT] AS [REPLACEMENTAMOUNT],
      x.[S_FLOODMAPZONE] AS [S_FLOODMAPZONE],
      A0.Descript AS [S_FLOODMAPZONE_Description],
      x.[APP_SENT_BORROWER] AS [APP_SENT_BORROWER],
      x.[APPRAISAL_DELIVERED] AS [APPRAISAL_DELIVERED],
      x.[APP_TIME_WAIVE] AS [APP_TIME_WAIVE],
      x.[SELLER_ACQUIRED_PRC] AS [SELLER_ACQUIRED_PRC],
      x.[APP_DELIVERED_DATETYPE] AS [APP_DELIVERED_DATETYPE],
      x.[APP_WAIVED_OK] AS [APP_WAIVED_OK],
      x.[UW_APPR_DOC_ID] AS [UW_APPR_DOC_ID],
      x.[APPRSL_CENTRAL_AIR] AS [APPRSL_CENTRAL_AIR],
      x.[PERCENT_SINGLE_FAM] AS [PERCENT_SINGLE_FAM],
      x.[PERCENT_TWO_FOUR_UNIT] AS [PERCENT_TWO_FOUR_UNIT],
      x.[PERCENT_MULTI_FAM] AS [PERCENT_MULTI_FAM],
      x.[PERCENT_COMMERCIAL] AS [PERCENT_COMMERCIAL],
      x.[S_PROP_LOC_TYPE] AS [S_PROP_LOC_TYPE],
      A1.Descript AS [S_PROP_LOC_TYPE_Description],
      x.[PROP_LTN_TYP_OTHDESC] AS [PROP_LTN_TYP_OTHDESC],
      x.[S_CAR_STORAGE_TYPE] AS [S_CAR_STORAGE_TYPE],
      A2.Descript AS [S_CAR_STORAGE_TYPE_Description],
      x.[CARSTORAGE_TYPE_OTHR_DESC] AS [CARSTORAGE_TYPE_OTHR_DESC],
      x.[CARSTORAGE_NBR_CARS] AS [CARSTORAGE_NBR_CARS],
      x.[S_FOUNDATION_TYPE] AS [S_FOUNDATION_TYPE],
      A3.Descript AS [S_FOUNDATION_TYPE_Description],
      x.[FNDN_TYPE_OTHER_DESC] AS [FNDN_TYPE_OTHER_DESC]
   FROM [clt_NetO].[GF_TL_UWAPPREXT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_FLOODMAPZONE = A0.DBSYMBOL AND A0.[TableName] = 'GF_TL_UWAPPREXT' and A0.[COLUMNNAME] = 'S_FLOODMAPZONE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_PROP_LOC_TYPE = A1.DBSYMBOL AND A1.[TableName] = 'GF_TL_UWAPPREXT' and A1.[COLUMNNAME] = 'S_PROP_LOC_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_CAR_STORAGE_TYPE = A2.DBSYMBOL AND A2.[TableName] = 'GF_TL_UWAPPREXT' and A2.[COLUMNNAME] = 'S_CAR_STORAGE_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.S_FOUNDATION_TYPE = A3.DBSYMBOL AND A3.[TableName] = 'GF_TL_UWAPPREXT' and A3.[COLUMNNAME] = 'S_FOUNDATION_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
