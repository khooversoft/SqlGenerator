-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_RSP_LP_LOANFDBCK]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[LPRESPONSEID],
      x.[LOANFEEDBACKID],
      x.[LPKEYIDENTIFIER],
      x.[LPLOANIDENTIFIER],
      x.[FRELPTRANSACTIONIDENTIFIER],
      x.[LPTRANSACTIONIDENTIFIER],
      x.[LENDERCASEIDENTIFIER],
      x.[LPSUBMISSIONNUMBER],
      x.[LPSERVICEEVALUATIONTYPE],
      x.[LPEVALUATIONSTATUSTYPE],
      x.[LPSUBMISSIONDATE],
      x.[LPEVALUATIONDATE],
      x.[FREPURCHASEELIGIBILITYTYPE],
      x.[LPINITIALLTVRATIO],
      x.[LPINITIALTOTALLTVRATIO],
      x.[LPCREDITRISKCLASSTYPE],
      x.[LPDOCCLASSTYPE],
      x.[LPACCEPTPLUSELIGIBLEINDICATOR],
      x.[CREDSCOREDATAREPOSSRCTYPE],
      x.[SCOREDBORROWERNAME],
      x.[CREDITSCOREVALUE],
      x.[HOUSINGRATIOPERCENT],
      x.[DEBTRATIOPERCENT],
      x.[LPRISKGRADEASSIGNEDTYPE],
      x.[FINANCINGCONCESSIONAMOUNT],
      x.[FRECASHOUTINDICATOR],
      x.[ORIGINATINGCOMPANYNAME],
      x.[SUBMITTINGCOMPANYNAME],
      x.[FRELOANPURPOSEDESCRIPTION],
      x.[FREPROPERTYCATEGORYDESC],
      x.[MORTGAGELOANLIMIT],
      x.[FREHIGHERTOTALLTV],
      x.[FREOCCUPANTHOUSINGRATIO],
      x.[FREOCCUPANTDEBTRATIO],
      x.[FRECREDITEXPIRATIONDATE],
      x.[FRECREDITSCORELTVFEELVLDESC],
      x.[FRELOANASSIGNMENTSTATUSDESC],
      x.[FREDOCUMENTATIONLEVELDESC],
      x.[FREHUDSCOREDINDICATOR],
      x.[ASSIGNFROMUNPARSEDNAME],
      x.[ASSIGNTOUNPARSEDNAME],
      x.[FRELOANRELEASEFROMUNPRSDNME],
      x.[FRELOANRELEASETOUNPARSEDNME],
      x.[FRELOANMSPASSIGNUNPRSDNME],
      x.[CREDITREPORTIDENTIFIER],
      x.[DOCCHECKLSTRPT],
      x.[DOCCHECKLST_SER],
      x.[FEEDBACKRPT],
      x.[FEEDBACK_SER],
      x.[MIFEEDBACKRPT],
      x.[MIFEEDBACK_SER],
      x.[FEEDBACKREPORTIMAGEID],
      x.[MIFEEDBACKREPORTIMAGEID],
      x.[DOCCHECKLISTIMAGEID],
      x.[MERGEDCREDCERT],
      x.[MERGEDCRED_SER],
      x.[LPERRORRPT],
      x.[LPERROR_SER],
      x.[ERRORRPTIMAGEID],
      x.[MERGEDCREDITCERTIMAGEID],
      x.[S_CRWELIGIBILITYTYPE],
      A0.Descript AS [CRWELIGIBILITYTYPE],
      x.[HVERPTIMAGEID],
      x.[MERGEDCREDITIMAGEID],
      x.[LPATTLASSETDEFICITAMT],
      x.[LPATTLTHRDPRTYVALIDATEAMT],
      x.[LPAPRODUCTIDENTIFIER],
      x.[LPAVERIFIEDASSETTOTALAMT],
      x.[LPACOLLREPANDWARRRELIEFDES],
      x.[LPAINCREPANDWARRRELIEF],
      x.[LPAGFTGRNTTTLCASHMARKETAMT],
      x.[LPATTLELIGIBLEASSETAMOUNT],
      x.[LPATTLFNDSTOVERIFIEDAMOUNT],
      x.[LPANONSUBPROPDBTTOPAIDOFF],
      x.[LPALIABILITYPTPAIDOFFAMT],
      x.[LPAPURCHASEPRICEAMOUNT],
      x.[LPATOTALDOWNPMTAMOUNT],
      x.[LPAHOUEXPPRESENTTTLMTLYAMT],
      x.[LPAHOUEXPPROPOSEDMNTLYAMT],
      x.[LPANONOCCBORRHEXPPRSNTPMT],
      x.[LPATTLSUBFINANCEPROCEEDAMT],
      x.[LPAPROJECTEDRESERVESAMT],
      x.[LPAQUALIFYINGPMTAMT],
      x.[LPATTLLIABLTYMNTHLYPMTAMT],
      x.[LPATTLMNTLYINCOMEAMT],
      x.[LPANONOCCUBORRTTLNHLIABPMT],
      x.[LPATTLREQUIREDFUNDSAMT],
      x.[LPATTLREQUIREDRESERVESAMT],
      x.[CREDIT_INFILE]
   FROM [clt_NetO].[GF_TLR_RSP_LP_LOANFDBCK] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_CRWELIGIBILITYTYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_RSP_LP_LOANFDBCK' and A0.[COLUMNNAME] = 'S_CRWELIGIBILITYTYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
