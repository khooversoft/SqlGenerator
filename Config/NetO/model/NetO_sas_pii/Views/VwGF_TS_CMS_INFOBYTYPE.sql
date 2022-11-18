-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TS_CMS_INFOBYTYPE]
AS
   SELECT
      x.[CID] AS [CID],
      x.[S_CMSTYPE] AS [S_CMSTYPE],
      x.[S_STATUS] AS [S_STATUS],
      x.[STATUS_START_DT] AS [STATUS_START_DT],
      x.[STATUS_STOP_DT] AS [STATUS_STOP_DT],
      x.[STATUS_CHGD_DT] AS [STATUS_CHGD_DT],
      x.[USEPARENT] AS [USEPARENT],
      x.[S_GRADE] AS [S_GRADE],
      x.[COMPLIANCE_MONITOR] AS [COMPLIANCE_MONITOR],
      x.[COMPLIANCE_EMAIL] AS [COMPLIANCE_EMAIL],
      x.[EMPLOYER_ID] AS [EMPLOYER_ID],
      x.[LAST_UPDATED_USER] AS [LAST_UPDATED_USER],
      x.[LAST_UPDATED] AS [LAST_UPDATED],
      x.[CHUMS_ID] AS [CHUMS_ID],
      x.[HUD_APPROVED] AS [HUD_APPROVED],
      x.[RECEIVE_RATE_ALERTS] AS [RECEIVE_RATE_ALERTS],
      x.[SAR_ID] AS [SAR_ID],
      x.[PROVIDER_ID] AS [PROVIDER_ID],
      x.[S_TYPE_OF_COMPANY] AS [S_TYPE_OF_COMPANY],
      x.[CMS_SHORT_DESC] AS [CMS_SHORT_DESC],
      x.[CMS_COMMENTS] AS [CMS_COMMENTS]
   FROM [clt_NetO].[GF_TS_CMS_INFOBYTYPE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;