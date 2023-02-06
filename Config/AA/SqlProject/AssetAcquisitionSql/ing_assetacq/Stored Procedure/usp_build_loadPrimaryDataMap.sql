CREATE PROCEDURE [ing_assetacq].[usp_build_loadPrimaryDataMap]
AS
BEGIN
    SET NOCOUNT ON;

    Truncate table [clt_AssetAcq].[PrimaryDataMap];

    Insert Into [clt_AssetAcq].[PrimaryDataMap] (VendorID, VendorCode, BECUAttributeName, BECUCode, [ASAP_RecordEffectiveDateTime])
    Values
        ('PEN','30 YEAR FXD HBAL HOMRDY','ProductDescription','Acquired 30 Year Fixed Jumbo', getutcdate()),
        ('PEN','30 YR FIXED JUMBO','ProductDescription','Acquired 30 Year Fixed Jumbo', getutcdate()),
        ('PEN','30 YR FIXED HIGH BAL','ProductDescription','Acquired 30 Year Fixed Jumbo', getutcdate()),
        ('PEN','15/15 ARM CONFORM','ProductDescription','Acquired 15 Year ARM Conforming', getutcdate()),
        ('PEN','15/15 ARM JUMBO','ProductDescription','Acquired 15 Year ARM Jumbo', getutcdate()),
        ('PEN','DEVDFLT','ProductDescription','Acquired 30 Year Fixed Jumbo', getutcdate()),
        ('PEN','DEVDFLT','LoanPurposeDesc','Purchase', getutcdate()),
        ('PEN','Purchase','LoanPurposeDesc','Purchase', getutcdate()),
        ('PEN','RefinanceOrProperty Improvement','LoanPurposeDesc','RefinanceOrProperty Improvement', getutcdate()),
        ('PEN','RefinanceOrCashOut','LoanPurposeDesc','RefinanceOrCashOut', getutcdate()),
        ('PEN','RefinanceOrEquity Takeout','LoanPurposeDesc','RefinanceOrEquity Takeout', getutcdate()),
        ('PEN','FULL','DocumentationType','Full Documentation', getutcdate()),
        ('PEN','ARM','InterestRateType','Adjustable', getutcdate()),
        ('PEN','','InterestRateType','Fixed', getutcdate()),
        ('PEN','FIXED','InterestRateType','Fixed', getutcdate()),
        ('PEN','OriginalOwnerOccupied','OccupancyCode','Owner Occupied', getutcdate()),
        ('PEN','OccupancyUnknown','OccupancyCode','Unknown', getutcdate()),
        ('PEN','','OccupancyCode','Unknown', getutcdate()),
        ('PEN','NonOwnerOccupied','OccupancyCode','Non Owner Occupied', getutcdate()),
        ('PEN','Active','AccountStatusCode','Active', getutcdate()),
        ('PEN','MORTGAGE','ProductType','Mortgage', getutcdate()),
        ('DCU','FIXED','InterestRateType','Fixed', getutcdate()),
        ('DCU','Auto Sale New','ProductType','New Auto', getutcdate()),
        ('DCU','Auto Sale Used','ProductType','Used Auto', getutcdate()),
        ('DCU','A','OriginalCreditGrade','A', getutcdate()),
        ('DCU','P','OriginalCreditGrade','A', getutcdate()),
        ('DCU','A','CurrentCreditGrade','A', getutcdate()),
        ('DCU','B','CurrentCreditGrade','B', getutcdate()),
        ('DCU','C','CurrentCreditGrade','C', getutcdate()),
        ('DCU','D','CurrentCreditGrade','D', getutcdate()),
        ('DCU','E','CurrentCreditGrade','E', getutcdate()),
        ('DCU','P','CurrentCreditGrade','A', getutcdate()),
        ('DCU','Auto Sale New','ProductDescription','Auto Participation New', getutcdate()),
        ('DCU','Auto Sale Used','ProductDescription','Auto Participation Used', getutcdate()),
        ('DCU','Auto Sale New','CollateralTypeDescription','Automobile - New', getutcdate()),
        ('DCU','Auto Sale Used','CollateralTypeDescription','Automobile - Used', getutcdate())
    ;
END