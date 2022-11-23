IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'clt_AssetAcq')
BEGIN
  EXEC( 'CREATE SCHEMA clt_AssetAcq;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq_restricted')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq_restricted;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq_pii')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq_pii;' )
END
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'clt_AssetAcq' AND TABLE_NAME = 'CommonMonthly')
BEGIN
   DROP TABLE [clt_AssetAcq].[CommonMonthly]
END
GO

CREATE TABLE [clt_AssetAcq].[CommonMonthly]
(
   [BECUAccountNumber]                    nvarchar(50)         NOT NULL,
   [ASAP_RecordEffectiveDateTime]         datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]                  datetime2(7)         NULL,
   [MonthEndDate]                         int                  NULL,
   [AccountNumber]                        bigint               NULL,
   [AssetClass]                           nvarchar(100)        NULL,
   [ProductType]                          nvarchar(100)        NULL,
   [ProductDescription]                   nvarchar(100)        NULL,
   [CreditClass]                          nvarchar(100)        NULL,
   [LoanPurposeDesc]                      nvarchar(100)        NULL,
   [ServicingLoanTypeDesc]                nvarchar(100)        NULL,
   [DocumentationType]                    nvarchar(100)        NULL,
   [ApprovalMethodName]                   nvarchar(100)        NULL,
   [OriginalLoanAmount]                   int                  NULL,
   [MonthEndBalanceAmount]                decimal(16,6)        NULL,
   [OriginalJuniorBalance]                int                  NULL,
   [CurrentJuniorBalance]                 int                  NULL,
   [OriginalSeniorBalance]                int                  NULL,
   [CurrentSeniorBalance]                 int                  NULL,
   [CreditLimitAmount]                    int                  NULL,
   [OriginalCreditScore]                  int                  NULL,
   [CurrentCreditScore]                   int                  NULL,
   [CreditScoreDate]                      int                  NULL,
   [OriginalBackendDebtToIncome]          decimal(16,6)        NULL,
   [OriginalFrontendDebtToIncome]         decimal(16,6)        NULL,
   [OriginalBorrowerStateCode]            nvarchar(100)        NULL,
   [OriginalBorrowerOccupation]           nvarchar(100)        NULL,
   [AccountOpenedDate]                    nvarchar(100)        NULL,
   [FirstDueDate]                         int                  NULL,
   [AccountMaturityDate]                  int                  NULL,
   [OriginalLoanTerm]                     int                  NULL,
   [NextPaymentDueDate]                   int                  NULL,
   [PaidThruDate]                         int                  NULL,
   [BalloonFlag]                          nchar(1)             NULL,
   [BalloonTerm]                          int                  NULL,
   [InterestRateType]                     nvarchar(100)        NULL,
   [OriginalInterestRate]                 decimal(16,6)        NULL,
   [AnnualInterestRate]                   decimal(16,6)        NULL,
   [PrincipalAndInterestPMTAmount]        decimal(16,6)        NULL,
   [ARMInterestOnlyOrFullyAmortizing]     int                  NULL,
   [InterestOnlyTerm]                     int                  NULL,
   [PrepayPenaltyCode]                    nchar(1)             NULL,
   [PrepayPenaltyTerm]                    int                  NULL,
   [OccupancyCode]                        nvarchar(100)        NULL,
   [PropertyTypeDescription]              nvarchar(100)        NULL,
   [PropertyStateCode]                    nvarchar(100)        NULL,
   [PropertyCityName]                     nvarchar(100)        NULL,
   [PropertyCountyName]                   int                  NULL,
   [ZipCode5]                             int                  NULL,
   [PropertyMSA]                          nvarchar(100)        NULL,
   [LienPosition]                         int                  NULL,
   [OriginalAppraisalType]                int                  NULL,
   [OriginalAppraisalAmount]              int                  NULL,
   [OriginalAppraisalDate]                int                  NULL,
   [CurrentAppraisalAmount]               int                  NULL,
   [CurrentAppraisalType]                 int                  NULL,
   [CurrentAppraisalDate]                 int                  NULL,
   [FHLBPurchasePriceAmount]              int                  NULL,
   [OriginalLoanToValueAMTFirst]          decimal(16,6)        NULL,
   [OriginalLoanToValueAMTSecond]         int                  NULL,
   [OriginalCombinedLoanToValueAMT]       decimal(16,6)        NULL,
   [CurrentLoanToValueAmount]             decimal(16,6)        NULL,
   [CurrentCombinedLoanToValueAmount]     int                  NULL,
   [CurrentLoanToValueAmountSecond]       int                  NULL,
   [AccountStatusCode]                    nvarchar(100)        NULL,
   [DaysDelinquentCount]                  int                  NULL,
   [BankruptcyStatusCode]                 nchar(1)             NULL,
   [BankruptcyTypeCode]                   int                  NULL,
   [ForeclosureFlag]                      nchar(1)             NULL,
   [RealEstateOwnedFlag]                  nchar(1)             NULL,
   [DelinquencyHistory12MonthString]      nvarchar(100)        NULL,
   [ChargeOffIndicator]                   nchar(1)             NULL,
   [ChargeOffAmount]                      int                  NULL,
   [RecoveryAmount]                       int                  NULL,
   [FFIECWritedownAmount]                 int                  NULL,
   [Total30DaysDQLifeOfLoanCount]         int                  NULL,
   [Total60DaysDQLifeOfLoanCount]         int                  NULL,
   [Total90DaysDQLifeOfLoanCount]         int                  NULL,
   [Total120DaysDQLifeOfLoanCount]        int                  NULL,
   [Total180DaysDQLifeOfLoanCount]        int                  NULL,
   [CurrentTDRFlag]                       nchar(1)             NULL,
   [BankruptcyEffectiveDate]              int                  NULL,
   [ForeclosureStartDate]                 int                  NULL,
   [ForeclosureSaleDate]                  int                  NULL,
   [RealEstateOwnedDate]                  int                  NULL,
   [ModificationFlag]                     nchar(1)             NULL,
   [TDRLifeOfLoanFlag]                    nchar(1)             NULL,
   [TDRImpairmentAmount]                  int                  NULL,
   [ModificationType]                     nvarchar(100)        NULL,
   [ModificationDate]                     int                  NULL,
   [TotalTimesModCount]                   int                  NULL,
   [LastModificationDate]                 int                  NULL,
   [ModificationRate]                     int                  NULL,
   [ModificationMaturityDate]             int                  NULL,
   [ModificationForgiveDate]              int                  NULL,
   [ModificationForborneDate]             int                  NULL,
   [ModificationPrincipalAndInterest]     int                  NULL,
   [ModificationOriginalLoanID]           int                  NULL,
   [DQBucketModification]                 int                  NULL,
   [PostModificationLoanToValue]          int                  NULL,
   [PreModificationRate]                  int                  NULL,
   [ModificationBalance]                  int                  NULL,
   [PreModificationPayment]               int                  NULL,
   [PostModificationPayment]              int                  NULL,
   [RateIndexDescription]                 int                  NULL,
   [FirstResetFrequency]                  int                  NULL,
   [SubsequentResetFrequency]             int                  NULL,
   [InterestGrossMargin]                  decimal(16,6)        NULL,
   [CapLifetimeInterestRate]              decimal(16,6)        NULL,
   [FloorLifetimeInterestRate]            decimal(16,6)        NULL,
   [FirstCapInterestRate]                 decimal(16,6)        NULL,
   [SubsequentCapInterestRate]            decimal(16,6)        NULL,
   [FirstFloorInterestRate]               decimal(16,6)        NULL,
   [SubsequentFloorInterestRate]          decimal(16,6)        NULL,
   [FirstRateAdjustDate]                  int                  NULL,
   [NextRateAdjustDate]                   int                  NULL,
   [NegativeAmortizationFlag]             nchar(1)             NULL,
   [NegativeAmoritzationCap]              int                  NULL,
   [OptionARMCode]                        nchar(1)             NULL,
   [InterestNetMargin]                    int                  NULL,
   [ARMInitialRate]                       decimal(16,6)        NULL,
   [FirstPaymentAdjustDate]               int                  NULL,
   [NextPaymentAdjustDate]                int                  NULL,
   [OrigMortgageInsuranceCoverage]        int                  NULL,
   [MortgageInsuranceCompany]             int                  NULL,
   [OriginalCreditLimit]                  int                  NULL,
   [CreditClosedFlag]                     nchar(1)             NULL,
   [CreditFrozenFlag]                     int                  NULL,
   [CreditLimitChangeAction]              int                  NULL,
   [DrawPeriod]                           int                  NULL,
   [RepayPeriod]                          int                  NULL,
   [HomeEquityType]                       int                  NULL,
   [LineChangedDate]                      int                  NULL,
   [LineClosedDate]                       int                  NULL,
   [BusinessAccountFlag]                  nvarchar(100)        NULL,
   [CurrentPartyID]                       int                  NULL,
   [AmortizationType]                     nvarchar(100)        NULL,
   [BackEndLoanToValue]                   decimal(16,6)        NULL,
   [BorrowerAge]                          int                  NULL,
   [OriginalCoBorrowerCreditScore]        int                  NULL,
   [CoBorrowerFlag]                       nchar(1)             NULL,
   [CoBorrowerOccupation]                 nvarchar(100)        NULL,
   [VehicleMake]                          nvarchar(100)        NULL,
   [VehicleModel]                         nvarchar(100)        NULL,
   [CollateralTypeDescription]            nvarchar(100)        NULL,
   [CollateralYear]                       int                  NULL,
   [CollateralStateCode]                  nvarchar(100)        NULL,
   [CollateralZipCode]                    nvarchar(100)        NULL,
   [ContractResidualValue]                int                  NULL,
   [CreditImpairedFlag]                   int                  NULL,
   [CurrentCollateralValue]               decimal(16,6)        NULL,
   [CurrentCreditGrade]                   nchar(1)             NULL,
   [CurrentPaymentandInterestAMT]         decimal(16,6)        NULL,
   [ClosedDate]                           int                  NULL,
   [DealerName]                           int                  NULL,
   [DefaultDate]                          int                  NULL,
   [EstimatedResidualValue]               int                  NULL,
   [UsedAutoFlag]                         nchar(1)             NULL,
   [FrontEndLoanToValue]                  decimal(16,6)        NULL,
   [InstrumentIdentifier]                 bigint               NULL,
   [InterestAccrualBasis]                 nvarchar(100)        NULL,
   [LastLimitChangeDate]                  int                  NULL,
   [LeaseFactor]                          int                  NULL,
   [Channel]                              nvarchar(100)        NULL,
   [OriginalCollateralValue]              int                  NULL,
   [OriginalCreditGrade]                  nchar(1)             NULL,
   [PaymentFrequency]                     nvarchar(100)        NULL,
   [PaymentToIncomeRatio]                 decimal(16,6)        NULL,
   [RecourseFlag]                         nchar(1)             NULL,
   [Servicer]                             nvarchar(100)        NULL,
   [VehicleManufacturer]                  nvarchar(100)        NULL,
   [VehicleIdentificationNumber]          nvarchar(100)        NULL,
   [ASAP_ROW_HASH]                        nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                        nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                    datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                    datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                      nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                     nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                      nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                    nvarchar(1000)       NULL
)
WITH (DISTRIBUTION = HASH ([BECUAccountNumber]), CLUSTERED COLUMNSTORE INDEX)
;
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq' AND TABLE_NAME = 'Vw_CommonMonthly')
BEGIN
   DROP VIEW [AssetAcq].[Vw_CommonMonthly]
END
GO


CREATE VIEW [AssetAcq].[Vw_CommonMonthly]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[MonthEndDate],
      x.[AccountNumber],
      [idMap].[OriginalMemberNumber] AS [AccountNumberOriginal],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],
      x.[AssetClass],
      x.[ProductType],
      x.[ProductDescription],
      x.[CreditClass],
      x.[LoanPurposeDesc],
      x.[ServicingLoanTypeDesc],
      x.[DocumentationType],
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
      x.[OriginalInterestRate],
      x.[AnnualInterestRate],
      x.[PrincipalAndInterestPMTAmount],
      x.[ARMInterestOnlyOrFullyAmortizing],
      x.[InterestOnlyTerm],
      x.[PrepayPenaltyCode],
      x.[PrepayPenaltyTerm],
      x.[OccupancyCode],
      x.[PropertyTypeDescription],
      HASHBYTES('SHA2_256', x.[PropertyStateCode]) AS [PropertyStateCode],
      HASHBYTES('SHA2_256', x.[PropertyCityName]) AS [PropertyCityName],
      HASHBYTES('SHA2_256', CAST(x.[PropertyCountyName] AS NVARCHAR(50))) AS [PropertyCountyName],
      HASHBYTES('SHA2_256', CAST(x.[ZipCode5] AS NVARCHAR(50))) AS [ZipCode5],
      HASHBYTES('SHA2_256', x.[PropertyMSA]) AS [PropertyMSA],
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
      x.[DaysDelinquentCount],
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
      x.[OriginalCoBorrowerCreditScore],
      x.[CoBorrowerFlag],
      x.[CoBorrowerOccupation],
      x.[VehicleMake],
      x.[VehicleModel],
      x.[CollateralTypeDescription],
      x.[CollateralYear],
      HASHBYTES('SHA2_256', x.[CollateralStateCode]) AS [CollateralStateCode],
      HASHBYTES('SHA2_256', x.[CollateralZipCode]) AS [CollateralZipCode],
      x.[ContractResidualValue],
      x.[CreditImpairedFlag],
      x.[CurrentCollateralValue],
      x.[CurrentCreditGrade],
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
      x.[PaymentFrequency],
      x.[PaymentToIncomeRatio],
      x.[RecourseFlag],
      x.[Servicer],
      x.[VehicleManufacturer],
      HASHBYTES('SHA2_256', x.[VehicleIdentificationNumber]) AS [VehicleIdentificationNumber]
   FROM [clt_AssetAcq].[CommonMonthly] x
      LEFT JOIN [ctl_Investor].[InvestorLoanIdMap] [idMap] ON x.[BECU_AccountNumber] = [idMap].[LoanId]
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_restricted' AND TABLE_NAME = 'Vw_CommonMonthly')
BEGIN
   DROP VIEW [AssetAcq_restricted].[Vw_CommonMonthly]
END
GO


CREATE VIEW [AssetAcq_restricted].[Vw_CommonMonthly]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[MonthEndDate],
      x.[AccountNumber],
      [idMap].[OriginalMemberNumber] AS [AccountNumberOriginal],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],
      x.[AssetClass],
      x.[ProductType],
      x.[ProductDescription],
      x.[CreditClass],
      x.[LoanPurposeDesc],
      x.[ServicingLoanTypeDesc],
      x.[DocumentationType],
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
      x.[OriginalInterestRate],
      x.[AnnualInterestRate],
      x.[PrincipalAndInterestPMTAmount],
      x.[ARMInterestOnlyOrFullyAmortizing],
      x.[InterestOnlyTerm],
      x.[PrepayPenaltyCode],
      x.[PrepayPenaltyTerm],
      x.[OccupancyCode],
      x.[PropertyTypeDescription],
      HASHBYTES('SHA2_256', x.[PropertyStateCode]) AS [PropertyStateCode],
      HASHBYTES('SHA2_256', x.[PropertyCityName]) AS [PropertyCityName],
      HASHBYTES('SHA2_256', CAST(x.[PropertyCountyName] AS NVARCHAR(50))) AS [PropertyCountyName],
      HASHBYTES('SHA2_256', CAST(x.[ZipCode5] AS NVARCHAR(50))) AS [ZipCode5],
      HASHBYTES('SHA2_256', x.[PropertyMSA]) AS [PropertyMSA],
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
      x.[DaysDelinquentCount],
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
      x.[OriginalCoBorrowerCreditScore],
      x.[CoBorrowerFlag],
      x.[CoBorrowerOccupation],
      x.[VehicleMake],
      x.[VehicleModel],
      x.[CollateralTypeDescription],
      x.[CollateralYear],
      HASHBYTES('SHA2_256', x.[CollateralStateCode]) AS [CollateralStateCode],
      HASHBYTES('SHA2_256', x.[CollateralZipCode]) AS [CollateralZipCode],
      x.[ContractResidualValue],
      x.[CreditImpairedFlag],
      x.[CurrentCollateralValue],
      x.[CurrentCreditGrade],
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
      x.[PaymentFrequency],
      x.[PaymentToIncomeRatio],
      x.[RecourseFlag],
      x.[Servicer],
      x.[VehicleManufacturer],
      HASHBYTES('SHA2_256', x.[VehicleIdentificationNumber]) AS [VehicleIdentificationNumber]
   FROM [clt_AssetAcq].[CommonMonthly] x
      LEFT JOIN [ctl_Investor].[InvestorLoanIdMap] [idMap] ON x.[BECU_AccountNumber] = [idMap].[LoanId]
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_pii' AND TABLE_NAME = 'Vw_CommonMonthly')
BEGIN
   DROP VIEW [AssetAcq_pii].[Vw_CommonMonthly]
END
GO


CREATE VIEW [AssetAcq_pii].[Vw_CommonMonthly]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[MonthEndDate],
      x.[AccountNumber],
      [idMap].[OriginalMemberNumber] AS [AccountNumberOriginal],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],
      x.[AssetClass],
      x.[ProductType],
      x.[ProductDescription],
      x.[CreditClass],
      x.[LoanPurposeDesc],
      x.[ServicingLoanTypeDesc],
      x.[DocumentationType],
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
      x.[OriginalInterestRate],
      x.[AnnualInterestRate],
      x.[PrincipalAndInterestPMTAmount],
      x.[ARMInterestOnlyOrFullyAmortizing],
      x.[InterestOnlyTerm],
      x.[PrepayPenaltyCode],
      x.[PrepayPenaltyTerm],
      x.[OccupancyCode],
      x.[PropertyTypeDescription],
      x.[PropertyStateCode],
      x.[PropertyCityName],
      x.[PropertyCountyName],
      x.[ZipCode5],
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
      x.[DaysDelinquentCount],
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
      x.[OriginalCoBorrowerCreditScore],
      x.[CoBorrowerFlag],
      x.[CoBorrowerOccupation],
      x.[VehicleMake],
      x.[VehicleModel],
      x.[CollateralTypeDescription],
      x.[CollateralYear],
      x.[CollateralStateCode],
      x.[CollateralZipCode],
      x.[ContractResidualValue],
      x.[CreditImpairedFlag],
      x.[CurrentCollateralValue],
      x.[CurrentCreditGrade],
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
      x.[PaymentFrequency],
      x.[PaymentToIncomeRatio],
      x.[RecourseFlag],
      x.[Servicer],
      x.[VehicleManufacturer],
      x.[VehicleIdentificationNumber]
   FROM [clt_AssetAcq].[CommonMonthly] x
      LEFT JOIN [ctl_Investor].[InvestorLoanIdMap] [idMap] ON x.[BECU_AccountNumber] = [idMap].[LoanId]
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

