Truncate table [clt_AssetAcq].[PrimaryDataMap]
GO

Insert Into [clt_AssetAcq].[PrimaryDataMap] ([VendorID], [VendorCode], [BECUAttributeName], [BECUCode], [ASAP_RecordEffectiveDateTime])
select 'DCU', 'Active', 'AccountStatusCode', 'ACT', current_timestamp
union all select 'DCU', 'BK', 'AccountStatusCode', 'BK', current_timestamp
union all select 'DCU', 'Automated', 'ApprovalMethodName', 'Automated', current_timestamp
union all select 'DCU', 'Manual', 'ApprovalMethodName', 'Manual', current_timestamp
union all select 'DCU', 'Auto Loan', 'AssetClass', 'Auto Loan', current_timestamp
union all select 'DCU', '13', 'BankruptcyTypeCode', '13', current_timestamp
union all select 'DCU', '7', 'BankruptcyTypeCode', '7', current_timestamp
union all select 'DCU', 'Direct', 'Channel', 'Direct', current_timestamp
union all select 'DCU', 'Auto Sale New', 'CollateralTypeDescription', 'Automobile - New', current_timestamp
union all select 'DCU', 'Auto Sale Used', 'CollateralTypeDescription', 'Automobile - Used', current_timestamp
union all select 'DCU', 'Auto New', 'CollateralTypeDescription', 'Automobile - New', current_timestamp
union all select 'DCU', 'Auto Used', 'CollateralTypeDescription', 'Automobile - Used', current_timestamp
union all select 'DCU', 'D', 'CurrentCreditGrade', 'D', current_timestamp
union all select 'DCU', 'A', 'CurrentCreditGrade', 'A', current_timestamp
union all select 'DCU', 'B', 'CurrentCreditGrade', 'B', current_timestamp
union all select 'DCU', 'P', 'CurrentCreditGrade', 'A', current_timestamp
union all select 'DCU', 'E', 'CurrentCreditGrade', 'E', current_timestamp
union all select 'DCU', 'C', 'CurrentCreditGrade', 'C', current_timestamp
union all select 'DCU', 'null', 'DocumentationType', 'null', current_timestamp
union all select 'DCU', 'Actual / Actual', 'InterestAccrualBasis', 'Actual / Actual', current_timestamp
union all select 'DCU', 'Fixed', 'InterestRateType', 'Fixed', current_timestamp
union all select 'DCU', 'Recreational Merchandise', 'LoanPurposeDesc', 'Other', current_timestamp
union all select 'DCU', 'Own Outright', 'LoanPurposeDesc', 'Purchase', current_timestamp
union all select 'DCU', 'DCU Re-Finance', 'LoanPurposeDesc', 'Refinance', current_timestamp
union all select 'DCU', 'Purchase Vehicle', 'LoanPurposeDesc', 'Purchase', current_timestamp
union all select 'DCU', 'REFINANCE DCU ', 'LoanPurposeDesc', 'Refinance', current_timestamp
union all select 'DCU', 'Refinance From Other Financial Institution', 'LoanPurposeDesc', 'Refinance', current_timestamp
union all select 'DCU', 'A', 'OriginalCreditGrade', 'A', current_timestamp
union all select 'DCU', 'P', 'OriginalCreditGrade', 'A', current_timestamp
union all select 'DCU', 'Monthly', 'PaymentFrequency', 'Monthly', current_timestamp
union all select 'DCU', 'Auto Sale New', 'ProductDescription', 'Acquired Auto New', current_timestamp
union all select 'DCU', 'Auto Sale Used', 'ProductDescription', 'Acquired Auto Used', current_timestamp
union all select 'DCU', 'Auto Sale New', 'ProductType', 'New Auto', current_timestamp
union all select 'DCU', 'Auto Sale Used', 'ProductType', 'Used Auto', current_timestamp
union all select 'DCU', 'Null', 'RateIndexDescription', 'Null', current_timestamp
union all select 'PEN', 'Active', 'AccountStatusCode', 'ACT', current_timestamp
union all select 'PEN', 'PaidLoan', 'AccountStatusCode', 'CLS', current_timestamp
union all select 'PEN', 'MANUAL', 'ApprovalMethodName', 'Manual', current_timestamp
union all select 'PEN', 'MORTGAGE LOAN', 'AssetClass', 'Mortgage Loan', current_timestamp
union all select 'PEN', 'BANKED - RETAIL', 'Channel', 'Direct', current_timestamp
union all select 'PEN', 'CORRESPONDENT', 'Channel', 'Indirect', current_timestamp
union all select 'PEN', 'Other', 'CollateralTypeDescription', '1-4 Family Residential RE', current_timestamp
union all select 'PEN', 'SingleFamilyDetached', 'CollateralTypeDescription', '1-4 Family Residential RE', current_timestamp
union all select 'PEN', 'Condominium', 'CollateralTypeDescription', '1-4 Family Residential RE', current_timestamp
union all select 'PEN', 'FULL', 'DocumentationType', 'Full Documentation', current_timestamp
union all select 'PEN', 'null', 'InterestAccrualBasis', 'null', current_timestamp
union all select 'PEN', 'FIXED', 'InterestRateType', 'Fixed', current_timestamp
union all select 'PEN', 'ARM', 'InterestRateType', 'Variable', current_timestamp
union all select 'PEN', 'DEVDFLT', 'LoanPurposeDesc', 'Purchase', current_timestamp
union all select 'PEN', 'RefinanceOrProperty Improvement', 'LoanPurposeDesc', 'Refi (Cashout Unknown)', current_timestamp
union all select 'PEN', 'RefinanceOrEquity Takeout', 'LoanPurposeDesc', 'Refi (Cashout Unknown)', current_timestamp
union all select 'PEN', 'Purchase', 'LoanPurposeDesc', 'Purchase', current_timestamp
union all select 'PEN', 'RefinanceOrCashOut', 'LoanPurposeDesc', 'Refi (Cashout Unknown)', current_timestamp
union all select 'PEN', 'LOANSERV WORKOUT', 'ModificationType', 'null', current_timestamp
union all select 'PEN', 'OccupancyUnknown', 'OccupancyCode', 'Other', current_timestamp
union all select 'PEN', 'NonOwnerOccupied', 'OccupancyCode', 'Other', current_timestamp
union all select 'PEN', 'OriginalOwnerOccupied', 'OccupancyCode', 'Primary', current_timestamp
union all select 'PEN', '30 YR FIXED JUMBO', 'ProductDescription', 'Acquired Mortgage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', '30 YEAR FXD HBAL HOMRDY', 'ProductDescription', 'Acquired Mortgage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', '15/15 ARM CONFORM', 'ProductDescription', 'Acquired Mortgage 15 Year ARM Conforming', current_timestamp
union all select 'PEN', 'DEVDFLT', 'ProductDescription', 'Acquired Mortgage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', 'TEXAS 50A6 JUMBO 30 YEAR FIXED', 'ProductDescription', 'Acquired Mortgage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', '15/15 ARM JUMBO', 'ProductDescription', 'Acquired Mortgage 15 Year ARM Jumbo', current_timestamp
union all select 'PEN', '30 YR FIXED HIGH BAL', 'ProductDescription', 'Acquired Mortgage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', '30 YR FIXED JUMBO', 'ProductType', 'Mortgage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', '30 YEAR FXD HBAL HOMRDY', 'ProductType', 'Mortgage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', '15/15 ARM CONFORM', 'ProductType', 'Mortgage 15 Year ARM Conforming', current_timestamp
union all select 'PEN', 'DEVDFLT', 'ProductType', 'Mortgage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', 'TEXAS 50A6 JUMBO 30 YEAR FIXED', 'ProductType', 'Mortage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', '15/15 ARM JUMBO', 'ProductType', 'Mortgage 15 Year ARM Jumbo', current_timestamp
union all select 'PEN', '30 YR FIXED HIGH BAL', 'ProductType', 'Mortgage 30 Year Fixed Jumbo', current_timestamp
union all select 'PEN', 'Other', 'PropertyType', 'Other', current_timestamp
union all select 'PEN', 'SingleFamilyDetached', 'PropertyType', 'Single Family', current_timestamp
union all select 'PEN', 'Condominium', 'PropertyType', 'Condo', current_timestamp
union all select 'PEN', 'Null', 'RateIndexDescription', 'Null', current_timestamp
