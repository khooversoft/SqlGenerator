-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwUWAPPR]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[CNTR] AS [CNTR],
      x.[DBID] AS [DBID],
      x.[S_PRPTYP] AS [S_PRPTYP],
      x.[UNITNUM] AS [UNITNUM],
      x.[PROJNAME] AS [PROJNAME],
      x.[APPRAISAL] AS [APPRAISAL],
      x.[APPRAISER] AS [APPRAISER],
      x.[APPRDATE] AS [APPRDATE],
      x.[APPRVALUE] AS [APPRVALUE],
      x.[LANDVALUE] AS [LANDVALUE],
      x.[ORIGCOST] AS [ORIGCOST],
      x.[YRPURCH] AS [YRPURCH],
      x.[YRBUILT] AS [YRBUILT],
      x.[LICENSE] AS [LICENSE],
      x.[ADDR] AS [ADDR],
      HASHBYTES('SHA2_256', x.[CITY]) AS [CITY],
      x.[STATE] AS [STATE],
      HASHBYTES('SHA2_256', x.[ZIP]) AS [ZIP],
      x.[PHONE] AS [PHONE],
      x.[FAX] AS [FAX],
      x.[NET1] AS [NET1],
      x.[GROSS1] AS [GROSS1],
      x.[NET2] AS [NET2],
      x.[GROSS2] AS [GROSS2],
      x.[NET3] AS [NET3],
      x.[GROSS3] AS [GROSS3],
      x.[NET4] AS [NET4],
      x.[GROSS4] AS [GROSS4],
      x.[NET5] AS [NET5],
      x.[GROSS5] AS [GROSS5],
      x.[NET6] AS [NET6],
      x.[GROSS6] AS [GROSS6],
      x.[S_APPRTYPE] AS [S_APPRTYPE],
      x.[SUBMFLG] AS [SUBMFLG],
      x.[LANDTOVALUE] AS [LANDTOVALUE],
      x.[APPRVALUEINDICATOR] AS [APPRVALUEINDICATOR],
      x.[APPRLICENSECODE] AS [APPRLICENSECODE],
      x.[LOCATION] AS [LOCATION],
      x.[ZONING] AS [ZONING],
      x.[SQFEET] AS [SQFEET],
      x.[ACREAGE] AS [ACREAGE],
      x.[EFFAGE] AS [EFFAGE],
      x.[FORSALE] AS [FORSALE],
      x.[LAST12] AS [LAST12],
      x.[LESS750] AS [LESS750],
      x.[HVE_EFFECTIVE_DT] AS [HVE_EFFECTIVE_DT],
      x.[S_APPRFORMTYPE] AS [S_APPRFORMTYPE],
      x.[APPRFORMTYPEOTHDESC] AS [APPRFORMTYPEOTHDESC],
      x.[S_PRPFORMTYPE] AS [S_PRPFORMTYPE],
      x.[PRPFORMTYPEOTHDESC] AS [PRPFORMTYPEOTHDESC],
      x.[S_PRPMETHODTYPE] AS [S_PRPMETHODTYPE],
      x.[PRPMETHODTYPEOTHDESC] AS [PRPMETHODTYPEOTHDESC],
      x.[S_LVLPRPRVW] AS [S_LVLPRPRVW],
      x.[APPRLVLPRPRVWTYPEOTHDESC] AS [APPRLVLPRPRVWTYPEOTHDESC],
      HASHBYTES('SHA2_256', x.[APPR_SUPER_LIC]) AS [APPR_SUPER_LIC],
      x.[DATEORDERED] AS [DATEORDERED],
      x.[ORDEREDBY] AS [ORDEREDBY],
      x.[DUEDATE] AS [DUEDATE],
      x.[QUOTE] AS [QUOTE],
      x.[ACTUALCOST] AS [ACTUALCOST],
      x.[DATERECEIVED] AS [DATERECEIVED],
      x.[S_STATUS] AS [S_STATUS],
      x.[REQUESTEDDATE] AS [REQUESTEDDATE],
      x.[REQUESTEDBY] AS [REQUESTEDBY],
      x.[DATEREVIEWED] AS [DATEREVIEWED],
      x.[REVIEWEDBY] AS [REVIEWEDBY],
      x.[RESPONSIVENESS] AS [RESPONSIVENESS],
      x.[TURNAROUNDTIME] AS [TURNAROUNDTIME],
      x.[REPORTQUALITY] AS [REPORTQUALITY],
      x.[REVISIONREQUIRED] AS [REVISIONREQUIRED],
      x.[ACTUALFEEAMT] AS [ACTUALFEEAMT],
      x.[INVOICENUMB] AS [INVOICENUMB],
      x.[INVOICEDATE] AS [INVOICEDATE],
      x.[REQUISITIONSENTDATE] AS [REQUISITIONSENTDATE],
      x.[REQ_NOTES_DBID] AS [REQ_NOTES_DBID],
      x.[REQ_NOTES_SN] AS [REQ_NOTES_SN],
      x.[REQAPPRCOMPANY] AS [REQAPPRCOMPANY],
      x.[REQAPPR] AS [REQAPPR],
      x.[SITEVALUE] AS [SITEVALUE],
      x.[SUBJECTTOREPAIRS] AS [SUBJECTTOREPAIRS],
      x.[S_APPRMETH] AS [S_APPRMETH],
      x.[S_AVM] AS [S_AVM],
      x.[S_AVMOTH] AS [S_AVMOTH],
      HASHBYTES('SHA2_256', x.[APPR_SUPER_FNAME]) AS [APPR_SUPER_FNAME],
      HASHBYTES('SHA2_256', x.[APPR_SUPER_LNAME]) AS [APPR_SUPER_LNAME],
      x.[APPRREINSPFEE] AS [APPRREINSPFEE],
      x.[APPR_COMMENTS] AS [APPR_COMMENTS],
      x.[RUSHED] AS [RUSHED],
      x.[SENIORLVLRVW] AS [SENIORLVLRVW],
      x.[GROSSLIVINGAREA] AS [GROSSLIVINGAREA],
      x.[TOTAL_ROOMS] AS [TOTAL_ROOMS],
      x.[BEDROOMS] AS [BEDROOMS],
      x.[BATHS] AS [BATHS],
      x.[HOA_FEES] AS [HOA_FEES],
      x.[FHA_VA_APPRAISER_CHUMSID] AS [FHA_VA_APPRAISER_CHUMSID],
      x.[ADDR2] AS [ADDR2],
      x.[INV_COLL_PROG_ID] AS [INV_COLL_PROG_ID],
      x.[FORECAST_STD_DEV] AS [FORECAST_STD_DEV],
      x.[S_HOA_FEES_PERIOD_TYPE] AS [S_HOA_FEES_PERIOD_TYPE]
   FROM [clt_NetO].[UWAPPR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;