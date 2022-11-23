-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_RES_NADA_VAL]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[NADARESPONSEID],
      x.[BASE_VALUE_TRADEIN],
      x.[BASE_VALUE_LOAN],
      x.[BASE_VALUE_RETAIL],
      x.[ADJUSTED_VALUE_TRADEIN],
      x.[ADJUSTED_VALUE_LOAN],
      x.[ADJUSTED_VALUE_RETAIL],
      x.[MILEAGE_ADJ],
      x.[MSRP],
      x.[VALUE_SELECTED],
      x.[BASE_VALUE_LOAN_OVR],
      x.[ACCESS_VALUE_LOAN],
      x.[ACCESS_VALUE_TRADIN],
      x.[ACCESS_VALUE_RETAIL],
      x.[MILEAGE],
      x.[MILEADJLOAN],
      x.[MILEADJRETAIL],
      x.[MILEADJTRADEIN],
      x.[WEIGHT],
      x.[AVEMILEAGE],
      x.[TRADEINVINACC],
      x.[TRADEINVINACCMILE],
      x.[LOANVINACC],
      x.[LOANVINACCMILE],
      x.[RETAILVINACC],
      x.[RETAILVINACCMILE],
      x.[AVGTRADEIN],
      x.[ROUGHTRADEIN],
      x.[BASE_VALUE_ROUGH_TRADEIN],
      x.[ACCESS_VALUE_ROUGH_TRADEIN],
      x.[TOTAL_VALUE_ROUGH_TRADEIN],
      x.[BASE_VALUE_CLEAN_TRADEIN],
      x.[ACCESS_VALUE_CLEAN_TRADEIN],
      x.[TOTAL_VALUE_CLEAN_TRADEIN],
      x.[BASE_VALUE_AVG_TRADEIN],
      x.[ACCESS_VALUE_AVG_TRADEIN],
      x.[TOTAL_VALUE_AVG_TRADEIN],
      x.[TOTAL_VALUE_RETAIL_TRADEIN],
      x.[ASSETID_LINKED_TO_RESP],
      x.[VALUATIONID_LINKED_TO_RESP]
   FROM [clt_NetO].[GF_TLR_RES_NADA_VAL] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
