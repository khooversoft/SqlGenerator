-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_CMS_INFOBYTYPE]
AS
   SELECT
      x.[CID],
      x.[S_CMSTYPE],
      x.[S_STATUS],
      x.[STATUS_START_DT],
      x.[STATUS_STOP_DT],
      x.[STATUS_CHGD_DT],
      x.[USEPARENT],
      x.[S_GRADE],
      x.[COMPLIANCE_MONITOR],
      x.[COMPLIANCE_EMAIL],
      x.[EMPLOYER_ID],
      x.[LAST_UPDATED_USER],
      x.[LAST_UPDATED],
      x.[CHUMS_ID],
      x.[HUD_APPROVED],
      x.[RECEIVE_RATE_ALERTS],
      x.[SAR_ID],
      x.[PROVIDER_ID],
      x.[S_TYPE_OF_COMPANY],
      x.[CMS_SHORT_DESC],
      x.[CMS_COMMENTS]
   FROM [clt_NetO].[GF_TS_CMS_INFOBYTYPE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
