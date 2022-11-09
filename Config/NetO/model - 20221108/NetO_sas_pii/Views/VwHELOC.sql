-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwHELOC]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[INTRORT] AS [INTRORT],
      x.[MINITADV] AS [MINITADV],
      x.[MOTHADV] AS [MOTHADV],
      x.[DPR] AS [DPR],
      x.[DRAWPER] AS [DRAWPER],
      x.[WHENDUE] AS [WHENDUE],
      x.[TAXLTV] AS [TAXLTV],
      x.[SLNHOLD] AS [SLNHOLD],
      x.[DRAWEXP] AS [DRAWEXP],
      x.[TAXASAMT] AS [TAXASAMT],
      x.[CTAXLTV] AS [CTAXLTV],
      x.[NUM_CARDS] AS [NUM_CARDS],
      x.[S_LOCTYPE] AS [S_LOCTYPE],
      x.[ANNUAL_FEE] AS [ANNUAL_FEE],
      x.[REPAY_MTHS] AS [REPAY_MTHS],
      x.[TERMIN_FEE] AS [TERMIN_FEE],
      x.[DRAWACCESS_FEE] AS [DRAWACCESS_FEE],
      x.[S_FUNDS_TO_BE_DRAWN] AS [S_FUNDS_TO_BE_DRAWN],
      x.[OVERDRAFT_PROTECTION] AS [OVERDRAFT_PROTECTION],
      x.[ODP_ACCOUNT_NUMBER] AS [ODP_ACCOUNT_NUMBER],
      x.[ODP_ROUTING_NUMBER] AS [ODP_ROUTING_NUMBER],
      x.[ANNUAL_CALC_OVR] AS [ANNUAL_CALC_OVR],
      x.[TERM_CALC_OVR] AS [TERM_CALC_OVR],
      x.[S_REPAYMENT_METHOD] AS [S_REPAYMENT_METHOD]
   FROM [clt_NetO].[HELOC] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
