-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_HMDAINFO_EXT]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[TOTAL_LOAN_COSTS] AS [TOTAL_LOAN_COSTS],
      x.[TOTAL_POINTS_AND_FEES] AS [TOTAL_POINTS_AND_FEES],
      x.[ORIGINATION_CHARGES] AS [ORIGINATION_CHARGES],
      HASHBYTES('SHA2_256', x.[DISCOUNT_POINTS]) AS [DISCOUNT_POINTS],
      x.[LENDER_CREDITS] AS [LENDER_CREDITS],
      x.[INTEREST_RATE] AS [INTEREST_RATE],
      x.[HMDARATESPREAD] AS [HMDARATESPREAD],
      x.[PURCHCD] AS [PURCHCD],
      x.[HMDAHOEPASTATUS] AS [HMDAHOEPASTATUS],
      x.[REPORTABLEYR] AS [REPORTABLEYR],
      x.[HMDAREPORTABLEDESC] AS [HMDAREPORTABLEDESC],
      x.[REPORTABLEYROVR] AS [REPORTABLEYROVR],
      A0.[Descript] AS [REPORTABLEYROVR_X],
      x.[HMDA_LEI] AS [HMDA_LEI],
      x.[HMDA_ULI] AS [HMDA_ULI],
      x.[HMDA_MLONMLS] AS [HMDA_MLONMLS],
      x.[APPDATE] AS [APPDATE],
      x.[HMDALOANTYPECODE] AS [HMDALOANTYPECODE],
      x.[HMDALOANPURPCODE] AS [HMDALOANPURPCODE],
      x.[HMDAPREAPPREQUESTED] AS [HMDAPREAPPREQUESTED],
      x.[HMDAREPORTABLELA] AS [HMDAREPORTABLELA],
      x.[HMDAREPORTABLELNAOVR] AS [HMDAREPORTABLELNAOVR],
      x.[HMDAACTIONTAKENCODE] AS [HMDAACTIONTAKENCODE],
      x.[HMDAACTIONDATE] AS [HMDAACTIONDATE],
      x.[DENIALCODE1] AS [DENIALCODE1],
      x.[DENIALCODE2] AS [DENIALCODE2],
      x.[DENIALCODE3] AS [DENIALCODE3],
      x.[DENIALCODE4] AS [DENIALCODE4],
      x.[SUBMISSION_OF_APPL_CODE] AS [SUBMISSION_OF_APPL_CODE],
      x.[INITIAL_PAYABLE] AS [INITIAL_PAYABLE],
      x.[REVERSE_MORTGAGE_CODE] AS [REVERSE_MORTGAGE_CODE],
      x.[OPENEND_LOC_CODE] AS [OPENEND_LOC_CODE],
      x.[PURP_BUSINSCOMERCL_CODE] AS [PURP_BUSINSCOMERCL_CODE],
      HASHBYTES('SHA2_256', x.[STADDLINE1]) AS [STADDLINE1],
      HASHBYTES('SHA2_256', x.[STADDLINE2]) AS [STADDLINE2],
      x.[CYCODE] AS [CYCODE],
      HASHBYTES('SHA2_256', x.[ZIPCODE]) AS [ZIPCODE],
      x.[STCODE] AS [STCODE],
      HASHBYTES('SHA2_256', x.[COUNTY]) AS [COUNTY],
      x.[CENTRACT] AS [CENTRACT],
      x.[PROPERTYVALUE] AS [PROPERTYVALUE],
      x.[CONS_METHOD_CODE] AS [CONS_METHOD_CODE],
      HASHBYTES('SHA2_256', CAST(x.[OCCU_TYPE_CODE] AS NVARCHAR(50))) AS [OCCU_TYPE_CODE],
      x.[LIEN_STATUS_CODE] AS [LIEN_STATUS_CODE],
      x.[TOTAL_UNITS] AS [TOTAL_UNITS],
      x.[AFFORTABLE_UNITS] AS [AFFORTABLE_UNITS],
      x.[LAND_PROPINS_CODE] AS [LAND_PROPINS_CODE],
      x.[SEC_PROPTYPE_CODE] AS [SEC_PROPTYPE_CODE],
      x.[OTHERDENIALDESC] AS [OTHERDENIALDESC],
      x.[HMDACOMBINEDLTV] AS [HMDACOMBINEDLTV],
      x.[HMDAINCOME] AS [HMDAINCOME],
      x.[HMDADTIRATIO] AS [HMDADTIRATIO],
      HASHBYTES('SHA2_256', CAST(x.[HMDA_APPCRDTSCORE] AS NVARCHAR(50))) AS [HMDA_APPCRDTSCORE],
      HASHBYTES('SHA2_256', CAST(x.[HMDA_COAPPCRDTSCORE] AS NVARCHAR(50))) AS [HMDA_COAPPCRDTSCORE],
      HASHBYTES('SHA2_256', CAST(x.[APPCREDIT_MODEL_CODE] AS NVARCHAR(50))) AS [APPCREDIT_MODEL_CODE],
      HASHBYTES('SHA2_256', CAST(x.[COAPPCREDIT_MODEL_CODE] AS NVARCHAR(50))) AS [COAPPCREDIT_MODEL_CODE],
      HASHBYTES('SHA2_256', x.[APPCREDIT_MODEL_OTHERDESC]) AS [APPCREDIT_MODEL_OTHERDESC],
      HASHBYTES('SHA2_256', x.[COAPPCREDIT_MODEL_OTHERDESC]) AS [COAPPCREDIT_MODEL_OTHERDESC],
      x.[INTRODUCTORY_RATEPERIOD] AS [INTRODUCTORY_RATEPERIOD],
      x.[PREPAYMENT_PENALTYTERM] AS [PREPAYMENT_PENALTYTERM],
      x.[HMDA_BALLOONCODE] AS [HMDA_BALLOONCODE],
      x.[INTEREST_ONLY_PAYMENTSCODE] AS [INTEREST_ONLY_PAYMENTSCODE],
      x.[NEGATIVE_AMORTIZATIONCODE] AS [NEGATIVE_AMORTIZATIONCODE],
      x.[OTH_NONFULLAMORT_CODE] AS [OTH_NONFULLAMORT_CODE],
      x.[AUS_CODE] AS [AUS_CODE],
      x.[HMDA_AUS_OTHERDESC] AS [HMDA_AUS_OTHERDESC],
      x.[AUS_DECISION_CODE] AS [AUS_DECISION_CODE],
      x.[HMDA_OTHAUS_DECISION_DESC] AS [HMDA_OTHAUS_DECISION_DESC],
      x.[HMDA_ULI_OVD] AS [HMDA_ULI_OVD],
      HASHBYTES('SHA2_256', CAST(x.[APPBORRRACE1] AS NVARCHAR(50))) AS [APPBORRRACE1],
      HASHBYTES('SHA2_256', CAST(x.[APPBORRRACE2] AS NVARCHAR(50))) AS [APPBORRRACE2],
      HASHBYTES('SHA2_256', CAST(x.[APPBORRRACE3] AS NVARCHAR(50))) AS [APPBORRRACE3],
      HASHBYTES('SHA2_256', CAST(x.[APPBORRRACE4] AS NVARCHAR(50))) AS [APPBORRRACE4],
      HASHBYTES('SHA2_256', CAST(x.[APPBORRRACE5] AS NVARCHAR(50))) AS [APPBORRRACE5],
      HASHBYTES('SHA2_256', CAST(x.[COAPPBORRRACE1] AS NVARCHAR(50))) AS [COAPPBORRRACE1],
      HASHBYTES('SHA2_256', CAST(x.[COAPPBORRRACE2] AS NVARCHAR(50))) AS [COAPPBORRRACE2],
      HASHBYTES('SHA2_256', CAST(x.[COAPPBORRRACE3] AS NVARCHAR(50))) AS [COAPPBORRRACE3],
      HASHBYTES('SHA2_256', CAST(x.[COAPPBORRRACE4] AS NVARCHAR(50))) AS [COAPPBORRRACE4],
      HASHBYTES('SHA2_256', CAST(x.[COAPPBORRRACE5] AS NVARCHAR(50))) AS [COAPPBORRRACE5],
      HASHBYTES('SHA2_256', CAST(x.[BORRETHNICITY1] AS NVARCHAR(50))) AS [BORRETHNICITY1],
      HASHBYTES('SHA2_256', CAST(x.[BORRETHNICITY2] AS NVARCHAR(50))) AS [BORRETHNICITY2],
      HASHBYTES('SHA2_256', CAST(x.[BORRETHNICITY3] AS NVARCHAR(50))) AS [BORRETHNICITY3],
      HASHBYTES('SHA2_256', CAST(x.[BORRETHNICITY4] AS NVARCHAR(50))) AS [BORRETHNICITY4],
      HASHBYTES('SHA2_256', CAST(x.[BORRETHNICITY5] AS NVARCHAR(50))) AS [BORRETHNICITY5],
      HASHBYTES('SHA2_256', CAST(x.[COBORRETHNICITY1] AS NVARCHAR(50))) AS [COBORRETHNICITY1],
      HASHBYTES('SHA2_256', CAST(x.[COBORRETHNICITY2] AS NVARCHAR(50))) AS [COBORRETHNICITY2],
      HASHBYTES('SHA2_256', CAST(x.[COBORRETHNICITY3] AS NVARCHAR(50))) AS [COBORRETHNICITY3],
      HASHBYTES('SHA2_256', CAST(x.[COBORRETHNICITY4] AS NVARCHAR(50))) AS [COBORRETHNICITY4],
      HASHBYTES('SHA2_256', CAST(x.[COBORRETHNICITY5] AS NVARCHAR(50))) AS [COBORRETHNICITY5],
      x.[BOAGE] AS [BOAGE],
      HASHBYTES('SHA2_256', CAST(x.[COBOAGE] AS NVARCHAR(50))) AS [COBOAGE],
      x.[BOETHNICITYVIOB] AS [BOETHNICITYVIOB],
      HASHBYTES('SHA2_256', CAST(x.[BORACEVIOB] AS NVARCHAR(50))) AS [BORACEVIOB],
      HASHBYTES('SHA2_256', CAST(x.[BOSEXVIOB] AS NVARCHAR(50))) AS [BOSEXVIOB],
      HASHBYTES('SHA2_256', CAST(x.[COBOETHNICITYVIOB] AS NVARCHAR(50))) AS [COBOETHNICITYVIOB],
      HASHBYTES('SHA2_256', CAST(x.[COBORACEVIOB] AS NVARCHAR(50))) AS [COBORACEVIOB],
      HASHBYTES('SHA2_256', CAST(x.[COBOSEXVIOB] AS NVARCHAR(50))) AS [COBOSEXVIOB],
      HASHBYTES('SHA2_256', CAST(x.[BOGENDER] AS NVARCHAR(50))) AS [BOGENDER],
      HASHBYTES('SHA2_256', CAST(x.[COBOGENDER] AS NVARCHAR(50))) AS [COBOGENDER],
      x.[HMDALOANTERM] AS [HMDALOANTERM],
      x.[RATE_SET_DATE] AS [RATE_SET_DATE],
      x.[RATE_SET_DATE_OVR] AS [RATE_SET_DATE_OVR],
      x.[NETLACHANGE] AS [NETLACHANGE],
      x.[HMDA_LEI_OVD] AS [HMDA_LEI_OVD],
      HASHBYTES('SHA2_256', CAST(x.[HMDA_APVDAPPCRDSCORE] AS NVARCHAR(50))) AS [HMDA_APVDAPPCRDSCORE],
      HASHBYTES('SHA2_256', CAST(x.[HMDA_APVDALTCRSCORE] AS NVARCHAR(50))) AS [HMDA_APVDALTCRSCORE],
      x.[HMDA_APVDCOBOCRDSCR] AS [HMDA_APVDCOBOCRDSCR],
      x.[HMDA_APVDHLTV] AS [HMDA_APVDHLTV],
      x.[HMDA_APVDNOOFUNITS] AS [HMDA_APVDNOOFUNITS],
      x.[HMDA_APVDTOTRATIO] AS [HMDA_APVDTOTRATIO],
      x.[HMDA_APVDCRDTMODCODE] AS [HMDA_APVDCRDTMODCODE],
      x.[HMDA_APVDCRDMODOTH] AS [HMDA_APVDCRDMODOTH],
      x.[HMDA_ADCOCRDTMODCODE] AS [HMDA_ADCOCRDTMODCODE],
      x.[HMDA_ADCOCRDMODOTH] AS [HMDA_ADCOCRDMODOTH],
      x.[AUS_CODE_OVRD] AS [AUS_CODE_OVRD],
      x.[AUS_DECISION_CODE_OVRD] AS [AUS_DECISION_CODE_OVRD]
   FROM [clt_NetO].[WG_HMDAINFO_EXT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[REPORTABLEYROVR] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_HMDAINFO_EXT' and A0.[COLUMNNAME] = 'REPORTABLEYROVR'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
