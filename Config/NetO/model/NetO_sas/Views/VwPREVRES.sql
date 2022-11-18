-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwPREVRES]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[RESCTR] AS [RESCTR],
      x.[RESADD1] AS [RESADD1],
      x.[RESADD2] AS [RESADD2],
      x.[RESCITY] AS [RESCITY],
      x.[RESST] AS [RESST],
      x.[RESZIP] AS [RESZIP],
      x.[S_OWNRNT] AS [S_OWNRNT],
      x.[RESNMYRS] AS [RESNMYRS],
      x.[ACCTPREV] AS [ACCTPREV],
      x.[ACCTHLDR] AS [ACCTHLDR],
      x.[RESCNTRY] AS [RESCNTRY],
      x.[LANDCTR] AS [LANDCTR],
      x.[RESCNTY] AS [RESCNTY],
      x.[RES_FADDR_INDICATOR] AS [RES_FADDR_INDICATOR],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[YRS_AT_PREV] AS [YRS_AT_PREV],
      x.[MNTHS_AT_PREV] AS [MNTHS_AT_PREV],
      x.[S_RES_UNIT_TYPE] AS [S_RES_UNIT_TYPE],
      x.[RES_UNIT_NUM] AS [RES_UNIT_NUM],
      x.[RES_CNTRY_CODE] AS [RES_CNTRY_CODE],
      x.[PREV_STATE_FOREIN] AS [PREV_STATE_FOREIN],
      x.[PREV_POSTCODE] AS [PREV_POSTCODE],
      x.[S_LIVE_RENT_FREE_ENUMS] AS [S_LIVE_RENT_FREE_ENUMS]
   FROM [clt_NetO].[PREVRES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;