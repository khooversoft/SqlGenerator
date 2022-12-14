-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_FLOOD_DETMN]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [RESPONSEID]                       int                  NOT NULL,
   [FLOODRESPONSEID]                  int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [FLOOD_CERT_ID]                    nvarchar(35)         NULL,
   [FLOOD_CERT_DATE]                  datetime             NULL,
   [FLOOD_CERT_TRANS_IND]             nchar(1)             NULL,
   [FLOOD_CERT_LIFELOAN]              nchar(1)             NULL,
   [FLOOD_SFHA_IND]                   nchar(1)             NULL,
   [FLOOD_PARTIAL_IND]                nchar(1)             NULL,
   [PROP_ADDR2]                       nvarchar(35)         NULL,
   [PROP_ADDR1]                       nvarchar(35)         NULL,
   [PROP_CITY]                        nvarchar(35)         NULL,
   [PROP_STATE]                       nvarchar(2)          NULL,
   [PROP_ZIP]                         nvarchar(10)         NULL,
   [REG_AGENCY_LENDER_ID]             nvarchar(35)         NULL,
   [FLLOD_INSURANCE_AMT]              decimal(18,3)        NULL,
   [NFIP_COMMUNITY_NAME]              nvarchar(40)         NULL,
   [NFIP_COUNTY]                      nvarchar(35)         NULL,
   [NFIP_STATE_CODE]                  nvarchar(2)          NULL,
   [NFIP_COMMUNITY_ID]                nvarchar(6)          NULL,
   [NFIP_START_DATE]                  datetime             NULL,
   [NFIP_MAP_ID]                      nvarchar(11)         NULL,
   [NFIP_MAP_PANEL_ID]                nvarchar(5)          NULL,
   [NFIP_MAP_PANEL_DATE]              datetime             NULL,
   [NFIP_MAP_PANEL_SUFFIX]            nvarchar(1)          NULL,
   [NFIP_FLOOD_REV_TYPE]              nvarchar(8)          NULL,
   [NFIP_MAP_DATE]                    datetime             NULL,
   [NFIP_FLOOD_ZONE_ID]               nvarchar(35)         NULL,
   [NFIP_MAP_IND]                     nchar(1)             NULL,
   [NFIP_STATUS_TYPE]                 nvarchar(8)          NULL,
   [PROTECTED_AREA_IND]               nchar(1)             NULL,
   [PROTECTED_AREA_DATE]              datetime             NULL,
   [SELECTED_FOR_LOAN_IND]            nchar(1)             NULL,
   [NFIP_COMM_FIRM_DATE]              datetime             NULL,
   [FLOOD_CHECK_IDENTIFIER]           nvarchar(35)         NULL,
   [FLOOD_PRODUCT_CERTIFY_DATE]       datetime             NULL,
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
