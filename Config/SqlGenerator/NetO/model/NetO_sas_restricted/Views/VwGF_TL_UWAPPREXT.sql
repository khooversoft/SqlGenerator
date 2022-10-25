-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TL_UWAPPREXT]
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
      x.[APP_SENT_BORROWER],
      x.[APPRAISAL_DELIVERED],
      x.[APP_TIME_WAIVE],
      x.[SELLER_ACQUIRED_PRC],
      x.[APP_DELIVERED_DATETYPE],
      x.[APP_WAIVED_OK],
      x.[UW_APPR_DOC_ID],
      x.[APPRSL_CENTRAL_AIR],
      x.[PERCENT_SINGLE_FAM],
      x.[PERCENT_TWO_FOUR_UNIT],
      x.[PERCENT_MULTI_FAM],
      x.[PERCENT_COMMERCIAL],
      x.[S_PROP_LOC_TYPE],
      x.[PROP_LTN_TYP_OTHDESC],
      x.[S_CAR_STORAGE_TYPE],
      x.[CARSTORAGE_TYPE_OTHR_DESC],
      x.[CARSTORAGE_NBR_CARS],
      x.[S_FOUNDATION_TYPE],
      x.[FNDN_TYPE_OTHER_DESC]
   FROM [clt_NetO].[GF_TL_UWAPPREXT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
