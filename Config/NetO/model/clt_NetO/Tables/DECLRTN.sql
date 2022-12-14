-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[DECLRTN]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [BNUM]                             smallint             NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [JUDGMENT]                         nchar(1)             NULL,
   [A_DBID]                           nchar(5)             NULL,
   [A_SERIAL]                         int                  NULL,
   [BANKRUPT]                         nchar(1)             NULL,
   [B_DBID]                           nchar(5)             NULL,
   [B_SERIAL]                         int                  NULL,
   [FORECLOS]                         nchar(1)             NULL,
   [C_DBID]                           nchar(5)             NULL,
   [C_SERIAL]                         int                  NULL,
   [LAWSUIT]                          nchar(1)             NULL,
   [D_DBID]                           nchar(5)             NULL,
   [D_SERIAL]                         int                  NULL,
   [OBLIGATE]                         nchar(1)             NULL,
   [E_DBID]                           nchar(5)             NULL,
   [E_SERIAL]                         int                  NULL,
   [DELINQNT]                         nchar(1)             NULL,
   [F_DBID]                           nchar(5)             NULL,
   [F_SERIAL]                         int                  NULL,
   [ALIMONY]                          nchar(1)             NULL,
   [G_DBID]                           nchar(5)             NULL,
   [G_SERIAL]                         int                  NULL,
   [BORROWED]                         nchar(1)             NULL,
   [H_DBID]                           nchar(5)             NULL,
   [H_SERIAL]                         int                  NULL,
   [COMAKER]                          nchar(1)             NULL,
   [I_DBID]                           nchar(5)             NULL,
   [I_SERIAL]                         int                  NULL,
   [CITIZEN]                          nchar(1)             NULL,
   [J_DBID]                           nchar(5)             NULL,
   [J_SERIAL]                         int                  NULL,
   [ALIEN]                            nchar(1)             NULL,
   [K_DBID]                           nchar(5)             NULL,
   [K_SERIAL]                         int                  NULL,
   [OCCUPY]                           nchar(1)             NULL,
   [L_DBID]                           nchar(5)             NULL,
   [L_SERIAL]                         int                  NULL,
   [OWNRSHIP]                         nchar(1)             NULL,
   [M_DBID]                           nchar(5)             NULL,
   [M_SERIAL]                         int                  NULL,
   [S_PRPTYP]                         nvarchar(8)          NULL,
   [S_TITLE]                          nvarchar(8)          NULL,
   [BNKRPT_DISCHARGE_MOS]             smallint             NULL,
   [FORECLOSURE_MOS]                  smallint             NULL,
   [NON_PERMANENT_RESIDENT_ALIEN]     nchar(1)             NULL,
   [JUDGMENT_NOTES]                   nvarchar(1024)       NULL,
   [BANKRUPT_NOTES]                   nvarchar(1024)       NULL,
   [FORECLOS_NOTES]                   nvarchar(1024)       NULL,
   [LAWSUIT_NOTES]                    nvarchar(1024)       NULL,
   [OBLIGATE_NOTES]                   nvarchar(1024)       NULL,
   [DELINQNT_NOTES]                   nvarchar(1024)       NULL,
   [ALIMONY_NOTES]                    nvarchar(1024)       NULL,
   [BORROWED_NOTES]                   nvarchar(1024)       NULL,
   [COMAKER_NOTES]                    nvarchar(1024)       NULL,
   [CITIZEN_NOTES]                    nvarchar(1024)       NULL,
   [ALIEN_NOTES]                      nvarchar(1024)       NULL,
   [OCCUPY_NOTES]                     nvarchar(1024)       NULL,
   [OWNRSHIP_NOTES]                   nvarchar(1024)       NULL,
   [AFFILIATION]                      nchar(1)             NULL,
   [DOWNPMT_BORR_AMT]                 decimal(16,3)        NULL,
   [INSTALLMENT_LOAN]                 nchar(1)             NULL,
   [MORTGAGE_LOAN]                    nchar(1)             NULL,
   [PROPTAXES]                        nchar(1)             NULL,
   [SHORT_SALE]                       nchar(1)             NULL,
   [PROPFORECLOSE]                    nchar(1)             NULL,
   [S_BANKRUPTCY_TYPE]                nvarchar(8)          NULL,
   [PREFORECLOS_NOTES]                nvarchar(1024)       NULL,
   [PROPFORECL_NOTES]                 nvarchar(1024)       NULL,
   [PRIMRESID_NOTES]                  nvarchar(1024)       NULL,
   [OWNERINTRST_NOTES]                nvarchar(1024)       NULL,
   [MORTGAGELN_NOTES]                 nvarchar(1024)       NULL,
   [NEWCREDIT_NOTES]                  nvarchar(1024)       NULL,
   [AFFILIATION_NOTES]                nvarchar(1024)       NULL,
   [PROPERTYTAXES_NOTES]              nvarchar(1024)       NULL,
   [CHAPTER7_CHK]                     nvarchar(1)          NULL,
   [CHAPTER12_CHK]                    nvarchar(1)          NULL,
   [CHAPTER13_CHK]                    nvarchar(1)          NULL,
   [CHAPTER11_CHK]                    nvarchar(1)          NULL,
   [OUTSTANJUDGE_EXTCIRCUM]           nchar(1)             NULL,
   [OUTSTANJUDGE_INCINFORM]           nchar(1)             NULL,
   [DELINQUENT_DEBT_EXTCIRCUM]        nchar(1)             NULL,
   [DELINQUENT_DEBT_INCINFORM]        nchar(1)             NULL,
   [FORECLOSURE_EXTCIRCUM]            nchar(1)             NULL,
   [FORECLOSURE_INCINFORM]            nchar(1)             NULL,
   [SHORTSALE_EXTCIRCUM]              nchar(1)             NULL,
   [SHORTSALE_INCINFORM]              nchar(1)             NULL,
   [PROPERTYFORCLOSE_EXTCIRCUM]       nchar(1)             NULL,
   [PROPERTYFORCLOSE_INCINFORM]       nchar(1)             NULL,
   [DECBANKRUPTCY_EXTCIRCUM]          nchar(1)             NULL,
   [DECBANKRUPTCY_INCINFORM]          nchar(1)             NULL,
   [FHA_SECOND_RESID_IND]             nchar(1)             NULL,
   [ASAP_ROW_HASH]                    nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                    nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                  nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                 nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                  nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]               datetime2(7)         NULL,
   [ASAP_SRC_NAME]                    nvarchar(36)         NULL
)
WITH (DISTRIBUTION = HASH ([LNUM]), CLUSTERED COLUMNSTORE INDEX)
;
