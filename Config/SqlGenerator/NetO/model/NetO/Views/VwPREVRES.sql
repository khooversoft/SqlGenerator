-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwPREVRES]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[RESCTR],
      x.[RESADD1],
      x.[RESADD2],
      x.[RESCITY],
      x.[RESST],
      x.[RESZIP],
      x.[S_OWNRNT],
      x.[RESNMYRS],
      x.[ACCTPREV],
      x.[ACCTHLDR],
      x.[RESCNTRY],
      x.[LANDCTR],
      x.[RESCNTY],
      x.[RES_FADDR_INDICATOR],
      x.[RECORD_CREATED],
      x.[YRS_AT_PREV],
      x.[MNTHS_AT_PREV],
      x.[S_RES_UNIT_TYPE],
      x.[RES_UNIT_NUM],
      x.[RES_CNTRY_CODE],
      x.[PREV_STATE_FOREIN],
      x.[PREV_POSTCODE],
      x.[S_LIVE_RENT_FREE_ENUMS]
   FROM [clt_NetO].[PREVRES] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
