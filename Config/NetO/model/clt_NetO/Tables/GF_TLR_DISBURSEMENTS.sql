-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

CREATE TABLE [clt_NetO].[GF_TLR_DISBURSEMENTS]
(
   [LNUM]                             nchar(20)            NOT NULL,
   [DBID]                             nchar(5)             NOT NULL,
   [ROWSERIALNO]                      int                  NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              datetime2(7)         NULL,
   [MODIFIED_USERID]                  int                  NULL,
   [S_FMETHOD]                        nvarchar(8)          NULL,
   [S_FSTATUS]                        nvarchar(8)          NULL,
   [S_DMETHOD]                        nvarchar(8)          NULL,
   [AMOUNT]                           decimal(16,6)        NULL,
   [PAYEE_NAME]                       nvarchar(35)         NULL,
   [PAYEE_ADDRESS]                    nvarchar(35)         NULL,
   [PAYEE_CITY]                       nvarchar(35)         NULL,
   [PAYEE_STATE]                      nvarchar(2)          NULL,
   [PAYEE_ZIP]                        nvarchar(10)         NULL,
   [ISSUEDATE]                        datetime             NULL,
   [REQDATE]                          datetime             NULL,
   [S_TYPE]                           nvarchar(8)          NULL,
   [S_FUNDLOC]                        nvarchar(8)          NULL,
   [ROUTENUM]                         nvarchar(35)         NULL,
   [ACCOUNTNUM]                       nvarchar(35)         NULL,
   [TRANSNUM]                         nvarchar(35)         NULL,
   [TRANSREF]                         nvarchar(35)         NULL,
   [BENNAME]                          nvarchar(50)         NULL,
   [BENACCTNUM]                       nvarchar(35)         NULL,
   [BENNOTES]                         nvarchar(256)        NULL,
   [BENFILEREFNUM]                    nvarchar(80)         NULL,
   [BENBANKNAME]                      nvarchar(35)         NULL,
   [BENABANUM]                        nvarchar(10)         NULL,
   [BENLOCATION]                      nvarchar(35)         NULL,
   [BENBANKNOTES]                     nvarchar(256)        NULL,
   [BFDUSED]                          nchar(1)             NULL,
   [BFDOVERRIDE]                      nchar(1)             NULL,
   [BFDBANKNAME]                      nvarchar(35)         NULL,
   [BFDABANUM]                        nvarchar(10)         NULL,
   [BFDLOCATION]                      nvarchar(35)         NULL,
   [BFDBANKNOTES]                     nvarchar(80)         NULL,
   [IBDUSED]                          nchar(1)             NULL,
   [IBDOVERRIDE]                      nchar(1)             NULL,
   [IBDBANKNAME]                      nvarchar(35)         NULL,
   [IBDABANUM]                        nvarchar(10)         NULL,
   [IBDLOCATION]                      nvarchar(35)         NULL,
   [IBDBANKNOTES]                     nvarchar(80)         NULL,
   [DATE_PROCESSED]                   datetime             NULL,
   [CONFIRMED_YN]                     nchar(1)             NULL,
   [DATE_CONFIRMED]                   datetime             NULL,
   [FROM_GL_ACCT]                     nvarchar(20)         NULL,
   [TO_GL_ACCT]                       nvarchar(20)         NULL,
   [BATCHID]                          int                  NULL,
   [CANCEL_OR_VOID]                   nchar(1)             NULL,
   [DATE_TERMINATED]                  datetime             NULL,
   [DISB_DESCRIPTION]                 nvarchar(150)        NULL,
   [PROCESS_YN]                       nchar(1)             NULL,
   [PAYEE_ADDRESS2]                   nvarchar(35)         NULL,
   [PAYEE_TITLE]                      nvarchar(35)         NULL,
   [WIRE_BANK_CID]                    int                  NULL,
   [WIRECTR]                          int                  NULL,
   [BEN_CREDIT_TO_ACCT]               nvarchar(30)         NULL,
   [BEN_CREDIT_TO_NAME]               nvarchar(30)         NULL,
   [PAYEE_COUNTRY]                    nvarchar(35)         NULL,
   [WIRE_CONFIRMATION_NBR]            nvarchar(25)         NULL,
   [DISBDESC]                         nvarchar(150)        NULL,
   [ACH_ACCOUNT_TYPE]                 varchar(8)           NULL,
   [ACH_DEBIT_OR_CREDIT]              varchar(8)           NULL,
   [ACH_ROUTING_NUMBER]               varchar(30)          NULL,
   [ACH_ACCOUNT_NUMBER]               varchar(30)          NULL,
   [W_APPRVDBY1]                      nvarchar(30)         NULL,
   [W_REQUESTEDDT]                    datetime             NULL,
   [W_REQUESTEDBY]                    nvarchar(30)         NULL,
   [W_APPRVDBY2]                      nvarchar(30)         NULL,
   [W_APPRVDDT1]                      datetime             NULL,
   [W_APPRVDDT2]                      datetime             NULL,
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
