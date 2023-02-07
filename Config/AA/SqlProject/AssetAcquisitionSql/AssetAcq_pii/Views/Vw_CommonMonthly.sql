-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [AssetAcq_pii].[Vw_CommonMonthly]
AS
   SELECT
      x.[MonthEndDate],
      x.[BECUAccountNumber],
      x.[AccountNumber],
      [idMap].[OriginalMemberNumber] AS [OriginalPartyId],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],
      CONVERT([varchar](100), HASHBYTES('SHA2_256', coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber])), 1) AS [BECUAccountNumberOriginalSafe],
      x.[VendorId],
      x.[AssetClass],
      x.[ProductType],
      A0.[BecuCode] AS [ProductTypeBecuCode],
      x.[ProductDescription],
      A1.[BecuCode] AS [ProductDescriptionBecuCode],
      x.[CreditClass],
      x.[LoanPurposeDesc],
      A2.[BecuCode] AS [LoanPurposeDescBecuCode],
      x.[ServicingLoanTypeDesc],
      x.[DocumentationType],
      A3.[BecuCode] AS [DocumentationTypeBecuCode],
      x.[ApprovalMethodName],
      x.[OriginalLoanAmount],
      x.[MonthEndBalanceAmount],
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
      A4.[BecuCode] AS [InterestRateTypeBecuCode],
      x.[OriginalInterestRate],
      x.[AnnualInterestRate],
      x.[PrincipalAndInterestPMTAmount],
      x.[ARMInterestOnlyOrFullyAmortizing],
      x.[InterestOnlyTerm],
      x.[PrepayPenaltyCode],
      x.[PrepayPenaltyTerm],
      x.[OccupancyCode],
      A5.[BecuCode] AS [OccupancyCodeBecuCode],
      x.[PropertyTypeDescription],
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
      A6.[BecuCode] AS [AccountStatusCodeBecuCode],
      coalesce(x.[DaysDelinquentCount], 0) AS [DaysDelinquentCount],
      x.[BankruptcyStatusCode],
      x.[BankruptcyTypeCode],
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
      x.[CurrentPartyID],
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
      A7.[BecuCode] AS [CollateralTypeDescriptionBecuCode],
      x.[CollateralYear],
      x.[PropertyZipCode],
      x.[ContractResidualValue],
      x.[CreditImpairedFlag],
      x.[CurrentCollateralValue],
      x.[CurrentCreditGrade],
      A8.[BecuCode] AS [CurrentCreditGradeBecuCode],
      x.[CurrentPaymentandInterestAMT],
      x.[ClosedDate],
      x.[DealerName],
      x.[DefaultDate],
      x.[EstimatedResidualValue],
      x.[UsedAutoFlag],
      x.[FrontEndLoanToValue],
      x.[InstrumentIdentifier],
      x.[InterestAccrualBasis],
      x.[LastLimitChangeDate],
      x.[LeaseFactor],
      x.[Channel],
      x.[OriginalCollateralValue],
      x.[OriginalCreditGrade],
      A9.[BecuCode] AS [OriginalCreditGradeBecuCode],
      x.[PaymentFrequency],
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
      x.[ParticpationRatio],
      x.[AmortizationTerm],
      x.[FirstPaymentDate],
      x.[EVFlag],
      x.[AccrualStatusFlag],
      x.[ActualPrincipalAndInterestPaidAmount],
      x.[CurrentCreditScoreModel]
   FROM [clt_AssetAcq].[CommonMonthly] x
      LEFT JOIN [clt_AssetAcq].[InvestorLoanIdMap] [idMap] ON x.[BECUAccountNumber] = [idMap].[LoanId]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A0 on A0.[BecuAttributeName] = 'ProductType' AND A0.[VendorId] = x.[VendorId] AND A0.[VendorCode] = x.[ProductType]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A1 on A1.[BecuAttributeName] = 'ProductDescription' AND A1.[VendorId] = x.[VendorId] AND A1.[VendorCode] = x.[ProductDescription]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A2 on A2.[BecuAttributeName] = 'LoanPurposeDesc' AND A2.[VendorId] = x.[VendorId] AND A2.[VendorCode] = x.[LoanPurposeDesc]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A3 on A3.[BecuAttributeName] = 'DocumentationType' AND A3.[VendorId] = x.[VendorId] AND A3.[VendorCode] = x.[DocumentationType]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A4 on A4.[BecuAttributeName] = 'InterestRateType' AND A4.[VendorId] = x.[VendorId] AND A4.[VendorCode] = x.[InterestRateType]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A5 on A5.[BecuAttributeName] = 'OccupancyCode' AND A5.[VendorId] = x.[VendorId] AND A5.[VendorCode] = x.[OccupancyCode]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A6 on A6.[BecuAttributeName] = 'AccountStatusCode' AND A6.[VendorId] = x.[VendorId] AND A6.[VendorCode] = x.[AccountStatusCode]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A7 on A7.[BecuAttributeName] = 'CollateralTypeDescription' AND A7.[VendorId] = x.[VendorId] AND A7.[VendorCode] = x.[CollateralTypeDescription]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A8 on A8.[BecuAttributeName] = 'CurrentCreditGrade' AND A8.[VendorId] = x.[VendorId] AND A8.[VendorCode] = x.[CurrentCreditGrade]
      LEFT JOIN [clt_AssetAcq].[PrimaryDataMap] A9 on A9.[BecuAttributeName] = 'OriginalCreditGrade' AND A9.[VendorId] = x.[VendorId] AND A9.[VendorCode] = x.[OriginalCreditGrade]
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
