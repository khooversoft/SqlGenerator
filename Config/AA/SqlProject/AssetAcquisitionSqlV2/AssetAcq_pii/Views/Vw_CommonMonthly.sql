CREATE VIEW [AssetAcq_pii].[Vw_CommonMonthly]
AS
   SELECT
      x.[MonthEndDate],
      x.[BECUAccountNumber],
      x.[AccountNumber],
      x.[CurrentPartyID],
      x.[OriginalPartyId],
      x.[BECUAccountNumberOriginal],
      x.[BECUAccountNumberOriginalSafe],
      x.[BECUCurrentPartyID],
      x.[BECUOriginalPartyID],
      x.[BECUCurrentPartyIDSafe],
      x.[BECUOriginalPartyIDSafe],
      x.[VendorId],
      x.[AssetClass],
      x.[AssetClassBecuCode],
      x.[ProductType],
      x.[ProductTypeBecuCode],
      x.[ProductDescription],
      x.[ProductDescriptionBecuCode],
      x.[CreditClass],
      x.[LoanPurposeDesc],
      x.[LoanPurposeDescBecuCode],
      x.[ServicingLoanTypeDesc],
      x.[DocumentationType],
      x.[DocumentationTypeBecuCode],
      x.[ApprovalMethodName],
      x.[ApprovalMethodNameBecuCode],
      x.[OriginalLoanAmount],
      x.[MonthEndBalanceAmount],
      x.[MonthEndBalanceAmountBECU],
      x.[OriginalJuniorBalance],
      x.[CurrentJuniorBalance],
      x.[OriginalSeniorBalance],
      x.[CurrentSeniorBalance],
      x.[CreditLimitAmount],
      x.[OriginalCreditScore],
      x.[CurrentCreditScore],
      x.[CreditScoreDate],
      x.[OriginalBackendDebtToIncome],
      x.[OriginalFrontendDebtToIncome],
      x.[OriginalBorrowerStateCode],
      x.[OriginalBorrowerOccupation],
      x.[AccountOpenedDate],
      x.[FirstDueDate],
      x.[AccountMaturityDate],
      x.[OriginalLoanTerm],
      x.[NextPaymentDueDate],
      x.[PaidThruDate],
      x.[BalloonFlag],
      x.[BalloonTerm],
      x.[InterestRateType],
      x.[InterestRateTypeBecuCode],
      x.[OriginalInterestRate],
      x.[AnnualInterestRate],
      x.[PrincipalAndInterestPMTAmountValue] AS [PrincipalAndInterestPMTAmount],
      x.[ARMInterestOnlyOrFullyAmortizing],
      x.[InterestOnlyTerm],
      x.[PrepayPenaltyCode],
      x.[PrepayPenaltyTerm],
      x.[OccupancyCode],
      x.[OccupancyCodeBecuCode],
      x.[PropertyTypeDescription],
      x.[PropertyTypeDescriptionBecuCode],
      x.[PropertyStateCode],
      x.[PropertyCityName],
      x.[PropertyCountyName],
      x.[PropertyMSA],
      x.[LienPosition],
      x.[OriginalAppraisalType],
      x.[OriginalAppraisalAmount],
      x.[OriginalAppraisalDate],
      x.[CurrentAppraisalAmount],
      x.[CurrentAppraisalType],
      x.[CurrentAppraisalDate],
      x.[FHLBPurchasePriceAmount],
      x.[OriginalLoanToValueAMTFirst],
      x.[OriginalLoanToValueAMTSecond],
      x.[OriginalCombinedLoanToValueAMT],
      x.[CurrentLoanToValueAmount],
      x.[CurrentCombinedLoanToValueAmount],
      x.[CurrentLoanToValueAmountSecond],
      x.[AccountStatusCode],
      x.[AccountStatusCodeBecuCode],
      x.[DaysDelinquentCount],
      x.[BankruptcyStatusCode],
      x.[BankruptcyTypeCode],
      x.[BankruptcyTypeCodeBecuCode],
      x.[ForeclosureFlag],
      x.[RealEstateOwnedFlag],
      x.[DelinquencyHistory12MonthString],
      x.[ChargeOffIndicator],
      x.[ChargeOffAmount],
      x.[RecoveryAmount],
      x.[FFIECWritedownAmount],
      x.[Total30DaysDQLifeOfLoanCount],
      x.[Total60DaysDQLifeOfLoanCount],
      x.[Total90DaysDQLifeOfLoanCount],
      x.[Total120DaysDQLifeOfLoanCount],
      x.[Total180DaysDQLifeOfLoanCount],
      x.[CurrentTDRFlag],
      x.[BankruptcyEffectiveDate],
      x.[ForeclosureStartDate],
      x.[ForeclosureSaleDate],
      x.[RealEstateOwnedDate],
      x.[ModificationFlag],
      x.[TDRLifeOfLoanFlag],
      x.[TDRImpairmentAmount],
      x.[ModificationType],
      x.[ModificationTypeBecuCode],
      x.[ModificationDate],
      x.[TotalTimesModCount],
      x.[LastModificationDate],
      x.[ModificationRate],
      x.[ModificationMaturityDate],
      x.[ModificationForgiveDate],
      x.[ModificationForborneDate],
      x.[ModificationPrincipalAndInterest],
      x.[ModificationOriginalLoanID],
      x.[DQBucketModification],
      x.[PostModificationLoanToValue],
      x.[PreModificationRate],
      x.[ModificationBalance],
      x.[PreModificationPayment],
      x.[PostModificationPayment],
      x.[RateIndexDescription],
      x.[RateIndexDescriptionBecuCode],
      x.[FirstResetFrequency],
      x.[SubsequentResetFrequency],
      x.[InterestGrossMargin],
      x.[CapLifetimeInterestRate],
      x.[FloorLifetimeInterestRate],
      x.[FirstCapInterestRate],
      x.[SubsequentCapInterestRate],
      x.[FirstFloorInterestRate],
      x.[SubsequentFloorInterestRate],
      x.[FirstRateAdjustDate],
      x.[NextRateAdjustDate],
      x.[NegativeAmortizationFlag],
      x.[NegativeAmoritzationCap],
      x.[OptionARMCode],
      x.[InterestNetMargin],
      x.[ARMInitialRate],
      x.[FirstPaymentAdjustDate],
      x.[NextPaymentAdjustDate],
      x.[OrigMortgageInsuranceCoverage],
      x.[MortgageInsuranceCompany],
      x.[OriginalCreditLimit],
      x.[CreditClosedFlag],
      x.[CreditFrozenFlag],
      x.[CreditLimitChangeAction],
      x.[DrawPeriod],
      x.[RepayPeriod],
      x.[HomeEquityType],
      x.[LineChangedDate],
      x.[LineClosedDate],
      x.[BusinessAccountFlag],
      x.[AmortizationType],
      x.[BackEndLoanToValue],
      x.[BorrowerAge],
      x.[BorrowerZipCode],
      x.[OriginalCoBorrowerCreditScore],
      x.[CoBorrowerFlag],
      x.[CoBorrowerOccupation],
      x.[VehicleMake],
      x.[VehicleModel],
      x.[CollateralTypeDescription],
      x.[CommonCollateralTypeDescription],
      x.[CommonCollateralTypeDescriptionBecuCode],
      x.[CollateralYear],
      x.[PropertyZipCode],
      x.[ContractResidualValue],
      x.[CreditImpairedFlag],
      x.[CurrentCollateralValue],
      x.[CurrentCreditGrade],
      x.[CurrentCreditGradeBecuCode],
      x.[CurrentPaymentandInterestAMT],
      x.[ClosedDate],
      x.[DealerName],
      x.[DefaultDate],
      x.[EstimatedResidualValue],
      x.[UsedAutoFlag],
      x.[FrontEndLoanToValue],
      x.[InterestAccrualBasis],
      x.[InterestAccrualBasisBecuCode],
      x.[LastLimitChangeDate],
      x.[LeaseFactor],
      x.[OriginalCollateralValue],
      x.[OriginalCreditGrade],
      x.[OriginalCreditGradeBecuCode],
      x.[PaymentFrequency],
      x.[PaymentFrequencyBecuCode],
      x.[PaymentToIncomeRatio],
      x.[RecourseFlag],
      x.[Servicer],
      x.[VehicleManufacturer],
      x.[VehicleIdentificationNumber],
      x.[PersonBirthDate],
      x.[FinalIncomeAmount],
      x.[HeldForSaleFlag],
      x.[IncomeVerificationFlag],
      x.[LeaseFlag],
      x.[OriginalCreditScoreModel],
      x.[ParticipationRatio],
      x.[CommonParticipationRatio],
      x.[AmortizationTerm],
      x.[FirstPaymentDate],
      x.[EVFlag],
      x.[AccrualStatusFlag],
      x.[ActualPrincipalAndInterestPaidAmountValue] AS [ActualPrincipalAndInterestPaidAmount],
      x.[CurrentCreditScoreModel],
      x.[CommonChannel],
      x.[CommonChannelBecuCode],
      x.[DealId],
      x.[MonthEndBalanceAmountFactor]
   FROM [ing_assetacq].[Vw_CommonMonthlyBase] x
;