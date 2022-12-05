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
   [MonthEndDate]                             date                 NULL,
   [BECUAccountNumber]                        nvarchar(50)         NOT NULL,
   [AccountNumber]                            bigint               NULL,
   [VendorId]                                 nvarchar(100)        NOT NULL,
   [AssetClass]                               nvarchar(100)        NULL,
   [ProductType]                              nvarchar(100)        NULL,
   [ProductDescription]                       nvarchar(100)        NULL,
   [CreditClass]                              nvarchar(100)        NULL,
   [LoanPurposeDesc]                          nvarchar(100)        NULL,
   [ServicingLoanTypeDesc]                    nvarchar(100)        NULL,
   [DocumentationType]                        nvarchar(100)        NULL,
   [ApprovalMethodName]                       nvarchar(100)        NULL,
   [OriginalLoanAmount]                       decimal(16,6)        NULL,
   [MonthEndBalanceAmount]                    decimal(16,6)        NULL,
   [OriginalJuniorBalance]                    decimal(16,6)        NULL,
   [CurrentJuniorBalance]                     decimal(16,6)        NULL,
   [OriginalSeniorBalance]                    decimal(16,6)        NULL,
   [CurrentSeniorBalance]                     decimal(16,6)        NULL,
   [CreditLimitAmount]                        decimal(16,6)        NULL,
   [OriginalCreditScore]                      int                  NULL,
   [CurrentCreditScore]                       int                  NULL,
   [CreditScoreDate]                          date                 NULL,
   [OriginalBackendDebtToIncome]              decimal(16,6)        NULL,
   [OriginalFrontendDebtToIncome]             decimal(16,6)        NULL,
   [OriginalBorrowerStateCode]                nvarchar(100)        NULL,
   [OriginalBorrowerOccupation]               nvarchar(100)        NULL,
   [AccountOpenedDate]                        date                 NULL,
   [FirstDueDate]                             date                 NULL,
   [AccountMaturityDate]                      date                 NULL,
   [OriginalLoanTerm]                         int                  NULL,
   [NextPaymentDueDate]                       date                 NULL,
   [PaidThruDate]                             date                 NULL,
   [BalloonFlag]                              nchar(1)             NULL,
   [BalloonTerm]                              int                  NULL,
   [InterestRateType]                         nvarchar(100)        NULL,
   [OriginalInterestRate]                     decimal(16,6)        NULL,
   [AnnualInterestRate]                       decimal(16,6)        NULL,
   [PrincipalAndInterestPMTAmount]            decimal(16,6)        NULL,
   [ARMInterestOnlyOrFullyAmortizing]         nchar(1)             NULL,
   [InterestOnlyTerm]                         int                  NULL,
   [PrepayPenaltyCode]                        nchar(1)             NULL,
   [PrepayPenaltyTerm]                        int                  NULL,
   [OccupancyCode]                            nvarchar(100)        NULL,
   [PropertyTypeDescription]                  nvarchar(100)        NULL,
   [PropertyStateCode]                        nvarchar(100)        NULL,
   [PropertyCityName]                         nvarchar(100)        NULL,
   [PropertyCountyName]                       nvarchar(100)        NULL,
   [PropertyMSA]                              nvarchar(100)        NULL,
   [LienPosition]                             int                  NULL,
   [OriginalAppraisalType]                    nvarchar(100)        NULL,
   [OriginalAppraisalAmount]                  decimal(16,6)        NULL,
   [OriginalAppraisalDate]                    date                 NULL,
   [CurrentAppraisalAmount]                   decimal(16,6)        NULL,
   [CurrentAppraisalType]                     varchar(100)         NULL,
   [CurrentAppraisalDate]                     date                 NULL,
   [FHLBPurchasePriceAmount]                  decimal(16,6)        NULL,
   [OriginalLoanToValueAMTFirst]              decimal(16,6)        NULL,
   [OriginalLoanToValueAMTSecond]             decimal(16,6)        NULL,
   [OriginalCombinedLoanToValueAMT]           decimal(16,6)        NULL,
   [CurrentLoanToValueAmount]                 decimal(16,6)        NULL,
   [CurrentCombinedLoanToValueAmount]         decimal(16,6)        NULL,
   [CurrentLoanToValueAmountSecond]           decimal(16,6)        NULL,
   [AccountStatusCode]                        nvarchar(100)        NULL,
   [DaysDelinquentCount]                      int                  NULL,
   [BankruptcyStatusCode]                     nchar(1)             NULL,
   [BankruptcyTypeCode]                       nvarchar(100)        NULL,
   [ForeclosureFlag]                          nchar(1)             NULL,
   [RealEstateOwnedFlag]                      nchar(1)             NULL,
   [DelinquencyHistory12MonthString]          nvarchar(100)        NULL,
   [ChargeOffIndicator]                       nchar(1)             NULL,
   [ChargeOffAmount]                          decimal(16,6)        NULL,
   [RecoveryAmount]                           decimal(16,6)        NULL,
   [FFIECWritedownAmount]                     decimal(16,6)        NULL,
   [Total30DaysDQLifeOfLoanCount]             int                  NULL,
   [Total60DaysDQLifeOfLoanCount]             int                  NULL,
   [Total90DaysDQLifeOfLoanCount]             int                  NULL,
   [Total120DaysDQLifeOfLoanCount]            int                  NULL,
   [Total180DaysDQLifeOfLoanCount]            int                  NULL,
   [CurrentTDRFlag]                           nchar(1)             NULL,
   [BankruptcyEffectiveDate]                  date                 NULL,
   [ForeclosureStartDate]                     date                 NULL,
   [ForeclosureSaleDate]                      date                 NULL,
   [RealEstateOwnedDate]                      date                 NULL,
   [ModificationFlag]                         nchar(1)             NULL,
   [TDRLifeOfLoanFlag]                        nchar(1)             NULL,
   [TDRImpairmentAmount]                      decimal(16,6)        NULL,
   [ModificationType]                         nvarchar(100)        NULL,
   [ModificationDate]                         date                 NULL,
   [TotalTimesModCount]                       int                  NULL,
   [LastModificationDate]                     date                 NULL,
   [ModificationRate]                         decimal(16,6)        NULL,
   [ModificationMaturityDate]                 date                 NULL,
   [ModificationForgiveDate]                  date                 NULL,
   [ModificationForborneDate]                 date                 NULL,
   [ModificationPrincipalAndInterest]         decimal(16,6)        NULL,
   [ModificationOriginalLoanID]               int                  NULL,
   [DQBucketModification]                     int                  NULL,
   [PostModificationLoanToValue]              decimal(16,6)        NULL,
   [PreModificationRate]                      decimal(16,6)        NULL,
   [ModificationBalance]                      decimal(16,6)        NULL,
   [PreModificationPayment]                   decimal(16,6)        NULL,
   [PostModificationPayment]                  decimal(16,6)        NULL,
   [RateIndexDescription]                     nvarchar(100)        NULL,
   [FirstResetFrequency]                      int                  NULL,
   [SubsequentResetFrequency]                 int                  NULL,
   [InterestGrossMargin]                      decimal(16,6)        NULL,
   [CapLifetimeInterestRate]                  decimal(16,6)        NULL,
   [FloorLifetimeInterestRate]                decimal(16,6)        NULL,
   [FirstCapInterestRate]                     decimal(16,6)        NULL,
   [SubsequentCapInterestRate]                decimal(16,6)        NULL,
   [FirstFloorInterestRate]                   decimal(16,6)        NULL,
   [SubsequentFloorInterestRate]              decimal(16,6)        NULL,
   [FirstRateAdjustDate]                      date                 NULL,
   [NextRateAdjustDate]                       date                 NULL,
   [NegativeAmortizationFlag]                 nchar(1)             NULL,
   [NegativeAmoritzationCap]                  int                  NULL,
   [OptionARMCode]                            nchar(1)             NULL,
   [InterestNetMargin]                        decimal(16,6)        NULL,
   [ARMInitialRate]                           decimal(16,6)        NULL,
   [FirstPaymentAdjustDate]                   date                 NULL,
   [NextPaymentAdjustDate]                    date                 NULL,
   [OrigMortgageInsuranceCoverage]            decimal(16,6)        NULL,
   [MortgageInsuranceCompany]                 nvarchar(100)        NULL,
   [OriginalCreditLimit]                      int                  NULL,
   [CreditClosedFlag]                         nchar(1)             NULL,
   [CreditFrozenFlag]                         nchar(1)             NULL,
   [CreditLimitChangeAction]                  varchar(100)         NULL,
   [DrawPeriod]                               int                  NULL,
   [RepayPeriod]                              int                  NULL,
   [HomeEquityType]                           nvarchar(100)        NULL,
   [LineChangedDate]                          date                 NULL,
   [LineClosedDate]                           date                 NULL,
   [BusinessAccountFlag]                      nchar(1)             NULL,
   [CurrentPartyID]                           int                  NULL,
   [AmortizationType]                         nvarchar(100)        NULL,
   [BackEndLoanToValue]                       decimal(16,6)        NULL,
   [BorrowerAge]                              int                  NULL,
   [BorrowerZipCode]                          nvarchar(100)        NULL,
   [OriginalCoBorrowerCreditScore]            int                  NULL,
   [CoBorrowerFlag]                           nchar(1)             NULL,
   [CoBorrowerOccupation]                     nvarchar(100)        NULL,
   [VehicleMake]                              nvarchar(100)        NULL,
   [VehicleModel]                             nvarchar(100)        NULL,
   [CollateralTypeDescription]                nvarchar(100)        NULL,
   [CollateralYear]                           int                  NULL,
   [PropertyZipCode]                          nvarchar(100)        NULL,
   [ContractResidualValue]                    decimal(16,6)        NULL,
   [CreditImpairedFlag]                       nchar(1)             NULL,
   [CurrentCollateralValue]                   decimal(16,6)        NULL,
   [CurrentCreditGrade]                       nchar(1)             NULL,
   [CurrentPaymentandInterestAMT]             decimal(16,6)        NULL,
   [ClosedDate]                               date                 NULL,
   [DealerName]                               nvarchar(100)        NULL,
   [DefaultDate]                              date                 NULL,
   [EstimatedResidualValue]                   decimal(16,6)        NULL,
   [UsedAutoFlag]                             nchar(1)             NULL,
   [FrontEndLoanToValue]                      decimal(16,6)        NULL,
   [InstrumentIdentifier]                     bigint               NULL,
   [InterestAccrualBasis]                     nvarchar(100)        NULL,
   [LastLimitChangeDate]                      date                 NULL,
   [LeaseFactor]                              int                  NULL,
   [Channel]                                  nvarchar(100)        NULL,
   [OriginalCollateralValue]                  decimal(16,6)        NULL,
   [OriginalCreditGrade]                      nchar(1)             NULL,
   [PaymentFrequency]                         nvarchar(100)        NULL,
   [PaymentToIncomeRatio]                     decimal(16,6)        NULL,
   [RecourseFlag]                             nchar(1)             NULL,
   [Servicer]                                 nvarchar(100)        NULL,
   [VehicleManufacturer]                      nvarchar(100)        NULL,
   [VehicleIdentificationNumber]              nvarchar(100)        NULL,
   [PersonBirthDate]                          date                 NULL,
   [FinalIncomeAmount]                        decimal(16,6)        NULL,
   [HeldForSaleFlag]                          nchar(1)             NULL,
   [IncomeVerificationFlag]                   nchar(1)             NULL,
   [LeaseFlag]                                nchar(1)             NULL,
   [OriginalCreditScoreModel]                 nvarchar(100)        NULL,
   [ParticpationRatio]                        decimal(16,6)        NULL,
   [AmortizationTerm]                         Int                  NULL,
   [FirstPaymentDate]                         datetime             NULL,
   [EVFlag]                                   nchar(1)             NULL,
   [AccrualStatusFlag]                        nchar(1)             NULL,
   [ActualPrincipalAndInterestPaidAmount]     decimal(16,6)        NULL,
   [CurrentCreditScoreModel]                  nvarchar(100)        NULL,
   [ASAP_RecordEffectiveDateTime]             datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]                      datetime2(7)         NULL,
   [ASAP_ROW_HASH]                            nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                            nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                        datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                        datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                          nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                         nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                          nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                        nvarchar(1000)       NULL
)
WITH (DISTRIBUTION = HASH ([MonthEndDate]), CLUSTERED COLUMNSTORE INDEX)
;
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'clt_AssetAcq' AND TABLE_NAME = 'CommonSettlement')
BEGIN
   DROP TABLE [clt_AssetAcq].[CommonSettlement]
END
GO

CREATE TABLE [clt_AssetAcq].[CommonSettlement]
(
   [BECUAccountNumber]                nvarchar(50)         NOT NULL,
   [loan_number]                      long                 NULL,
   [product_type]                     nvarchar(100)        NULL,
   [service_fee]                      decimal(16,6)        NULL,
   [balance]                          decimal(16,6)        NULL,
   [participation_balance_90]         decimal(16,6)        NULL,
   [date_interest_paid_to]            datetime             NULL,
   [original_loan_to_value_ratio]     decimal(16,6)        NULL,
   [net_int]                          decimal(16,6)        NULL,
   [price]                            decimal(16,6)        NULL,
   [premium_discount]                 decimal(16,6)        NULL,
   [funds_due]                        decimal(16,6)        NULL,
   [PoolId]                           nvarchar(100)        NULL,
   [HeldForSaleFlag]                  nchar(1)             NULL,
   [ParticpationRatio]                decimal(16,6)        NULL,
   [LoanSource]                       nvarchar(100)        NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL
)
WITH (DISTRIBUTION = HASH ([BECUAccountNumber]), CLUSTERED COLUMNSTORE INDEX)
;
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'clt_AssetAcq' AND TABLE_NAME = 'LoanModification')
BEGIN
   DROP TABLE [clt_AssetAcq].[LoanModification]
END
GO

CREATE TABLE [clt_AssetAcq].[LoanModification]
(
   [BECUAccountNumber]                nvarchar(50)         NOT NULL,
   [Loan_ID]                          nvarchar(50)         NOT NULL,
   [ModID]                            nvarchar(100)        NULL,
   [ModEffectiveDate]                 Date                 NULL,
   [ModStartDate]                     Date                 NULL,
   [ModEndDate]                       Date                 NULL,
   [ValuePre]                         decimal(16,6)        NULL,
   [ValuePost]                        decimal(16,6)        NULL,
   [FreezeDays]                       int                  NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL
)
WITH (DISTRIBUTION = HASH ([BECUAccountNumber]), CLUSTERED COLUMNSTORE INDEX)
;
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'clt_AssetAcq' AND TABLE_NAME = 'PrimaryDataMap')
BEGIN
   DROP TABLE [clt_AssetAcq].[PrimaryDataMap]
END
GO

CREATE TABLE [clt_AssetAcq].[PrimaryDataMap]
(
   [VendorId]                         nvarchar(100)        NOT NULL,
   [VendorCode]                       nvarchar(200)        NOT NULL,
   [BecuAttributeName]                nvarchar(100)        NOT NULL,
   [BecuCode]                         nvarchar(200)        NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL
)
WITH ( CLUSTERED INDEX ([VendorId], [VendorCode]) )
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
      x.[MonthEndDate],
      x.[BECUAccountNumber],
      HASHBYTES('SHA2_256', CAST(x.[AccountNumber] AS NVARCHAR(50))) AS [AccountNumber],
      [idMap].[OriginalMemberNumber] AS [AccountNumberOriginal],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],
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
      HASHBYTES('SHA2_256', CAST(x.[OriginalCreditScore] AS NVARCHAR(50))) AS [OriginalCreditScore],
      HASHBYTES('SHA2_256', CAST(x.[CurrentCreditScore] AS NVARCHAR(50))) AS [CurrentCreditScore],
      HASHBYTES('SHA2_256', CAST(x.[CreditScoreDate] AS NVARCHAR(50))) AS [CreditScoreDate],
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
      HASHBYTES('SHA2_256', x.[PropertyStateCode]) AS [PropertyStateCode],
      HASHBYTES('SHA2_256', x.[PropertyCityName]) AS [PropertyCityName],
      HASHBYTES('SHA2_256', x.[PropertyCountyName]) AS [PropertyCountyName],
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
      A6.[BecuCode] AS [AccountStatusCodeBecuCode],
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
      x.[BorrowerZipCode],
      x.[OriginalCoBorrowerCreditScore],
      x.[CoBorrowerFlag],
      x.[CoBorrowerOccupation],
      x.[VehicleMake],
      x.[VehicleModel],
      x.[CollateralTypeDescription],
      A7.[BecuCode] AS [CollateralTypeDescriptionBecuCode],
      x.[CollateralYear],
      HASHBYTES('SHA2_256', x.[PropertyZipCode]) AS [PropertyZipCode],
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
      HASHBYTES('SHA2_256', x.[VehicleIdentificationNumber]) AS [VehicleIdentificationNumber],
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
      LEFT JOIN [ctl_Investor].[InvestorLoanIdMap] [idMap] ON x.[BECU_AccountNumber] = [idMap].[LoanId]
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
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq' AND TABLE_NAME = 'Vw_CommonSettlement')
BEGIN
   DROP VIEW [AssetAcq].[Vw_CommonSettlement]
END
GO


CREATE VIEW [AssetAcq].[Vw_CommonSettlement]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[loan_number],
      x.[product_type],
      x.[service_fee],
      x.[balance],
      x.[participation_balance_90],
      x.[date_interest_paid_to],
      x.[original_loan_to_value_ratio],
      x.[net_int],
      x.[price],
      x.[premium_discount],
      x.[funds_due],
      x.[PoolId],
      x.[HeldForSaleFlag],
      x.[ParticpationRatio],
      x.[LoanSource]
   FROM [clt_AssetAcq].[CommonSettlement] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq' AND TABLE_NAME = 'Vw_LoanModification')
BEGIN
   DROP VIEW [AssetAcq].[Vw_LoanModification]
END
GO


CREATE VIEW [AssetAcq].[Vw_LoanModification]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[Loan_ID],
      x.[ModID],
      x.[ModEffectiveDate],
      x.[ModStartDate],
      x.[ModEndDate],
      x.[ValuePre],
      x.[ValuePost],
      x.[FreezeDays]
   FROM [clt_AssetAcq].[LoanModification] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq' AND TABLE_NAME = 'Vw_PrimaryDataMap')
BEGIN
   DROP VIEW [AssetAcq].[Vw_PrimaryDataMap]
END
GO


CREATE VIEW [AssetAcq].[Vw_PrimaryDataMap]
AS
   SELECT
      x.[VendorId],
      x.[VendorCode],
      x.[BecuAttributeName],
      x.[BecuCode]
   FROM [clt_AssetAcq].[PrimaryDataMap] x
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
      x.[MonthEndDate],
      x.[BECUAccountNumber],
      x.[AccountNumber],
      [idMap].[OriginalMemberNumber] AS [AccountNumberOriginal],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],
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
      HASHBYTES('SHA2_256', CAST(x.[OriginalCreditScore] AS NVARCHAR(50))) AS [OriginalCreditScore],
      HASHBYTES('SHA2_256', CAST(x.[CurrentCreditScore] AS NVARCHAR(50))) AS [CurrentCreditScore],
      HASHBYTES('SHA2_256', CAST(x.[CreditScoreDate] AS NVARCHAR(50))) AS [CreditScoreDate],
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
      HASHBYTES('SHA2_256', x.[PropertyStateCode]) AS [PropertyStateCode],
      HASHBYTES('SHA2_256', x.[PropertyCityName]) AS [PropertyCityName],
      HASHBYTES('SHA2_256', x.[PropertyCountyName]) AS [PropertyCountyName],
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
      A6.[BecuCode] AS [AccountStatusCodeBecuCode],
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
      x.[BorrowerZipCode],
      x.[OriginalCoBorrowerCreditScore],
      x.[CoBorrowerFlag],
      x.[CoBorrowerOccupation],
      x.[VehicleMake],
      x.[VehicleModel],
      x.[CollateralTypeDescription],
      A7.[BecuCode] AS [CollateralTypeDescriptionBecuCode],
      x.[CollateralYear],
      HASHBYTES('SHA2_256', x.[PropertyZipCode]) AS [PropertyZipCode],
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
      HASHBYTES('SHA2_256', x.[VehicleIdentificationNumber]) AS [VehicleIdentificationNumber],
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
      LEFT JOIN [ctl_Investor].[InvestorLoanIdMap] [idMap] ON x.[BECU_AccountNumber] = [idMap].[LoanId]
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
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_restricted' AND TABLE_NAME = 'Vw_CommonSettlement')
BEGIN
   DROP VIEW [AssetAcq_restricted].[Vw_CommonSettlement]
END
GO


CREATE VIEW [AssetAcq_restricted].[Vw_CommonSettlement]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[loan_number],
      x.[product_type],
      x.[service_fee],
      x.[balance],
      x.[participation_balance_90],
      x.[date_interest_paid_to],
      x.[original_loan_to_value_ratio],
      x.[net_int],
      x.[price],
      x.[premium_discount],
      x.[funds_due],
      x.[PoolId],
      x.[HeldForSaleFlag],
      x.[ParticpationRatio],
      x.[LoanSource]
   FROM [clt_AssetAcq].[CommonSettlement] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_restricted' AND TABLE_NAME = 'Vw_LoanModification')
BEGIN
   DROP VIEW [AssetAcq_restricted].[Vw_LoanModification]
END
GO


CREATE VIEW [AssetAcq_restricted].[Vw_LoanModification]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[Loan_ID],
      x.[ModID],
      x.[ModEffectiveDate],
      x.[ModStartDate],
      x.[ModEndDate],
      x.[ValuePre],
      x.[ValuePost],
      x.[FreezeDays]
   FROM [clt_AssetAcq].[LoanModification] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_restricted' AND TABLE_NAME = 'Vw_PrimaryDataMap')
BEGIN
   DROP VIEW [AssetAcq_restricted].[Vw_PrimaryDataMap]
END
GO


CREATE VIEW [AssetAcq_restricted].[Vw_PrimaryDataMap]
AS
   SELECT
      x.[VendorId],
      x.[VendorCode],
      x.[BecuAttributeName],
      x.[BecuCode]
   FROM [clt_AssetAcq].[PrimaryDataMap] x
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
      x.[MonthEndDate],
      x.[BECUAccountNumber],
      HASHBYTES('SHA2_256', CAST(x.[AccountNumber] AS NVARCHAR(50))) AS [AccountNumber],
      [idMap].[OriginalMemberNumber] AS [AccountNumberOriginal],
      coalesce([idMap].[OriginalLoanId], x.[BECUAccountNumber]) AS [BECUAccountNumberOriginal],
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
      LEFT JOIN [ctl_Investor].[InvestorLoanIdMap] [idMap] ON x.[BECU_AccountNumber] = [idMap].[LoanId]
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
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_pii' AND TABLE_NAME = 'Vw_CommonSettlement')
BEGIN
   DROP VIEW [AssetAcq_pii].[Vw_CommonSettlement]
END
GO


CREATE VIEW [AssetAcq_pii].[Vw_CommonSettlement]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[loan_number],
      x.[product_type],
      x.[service_fee],
      x.[balance],
      x.[participation_balance_90],
      x.[date_interest_paid_to],
      x.[original_loan_to_value_ratio],
      x.[net_int],
      x.[price],
      x.[premium_discount],
      x.[funds_due],
      x.[PoolId],
      x.[HeldForSaleFlag],
      x.[ParticpationRatio],
      x.[LoanSource]
   FROM [clt_AssetAcq].[CommonSettlement] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_pii' AND TABLE_NAME = 'Vw_LoanModification')
BEGIN
   DROP VIEW [AssetAcq_pii].[Vw_LoanModification]
END
GO


CREATE VIEW [AssetAcq_pii].[Vw_LoanModification]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[Loan_ID],
      x.[ModID],
      x.[ModEffectiveDate],
      x.[ModStartDate],
      x.[ModEndDate],
      x.[ValuePre],
      x.[ValuePost],
      x.[FreezeDays]
   FROM [clt_AssetAcq].[LoanModification] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_pii' AND TABLE_NAME = 'Vw_PrimaryDataMap')
BEGIN
   DROP VIEW [AssetAcq_pii].[Vw_PrimaryDataMap]
END
GO


CREATE VIEW [AssetAcq_pii].[Vw_PrimaryDataMap]
AS
   SELECT
      x.[VendorId],
      x.[VendorCode],
      x.[BecuAttributeName],
      x.[BecuCode]
   FROM [clt_AssetAcq].[PrimaryDataMap] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
GO

