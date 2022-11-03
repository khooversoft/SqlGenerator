CREATE TABLE [clt_Alkami].[party_contact_mech]
(
   [party_id]                         varchar(40)          NOT NULL,
   [contact_mech_id]                  varchar(40)          NOT NULL,
   [contact_mech_purpose_id]          varchar(40)          NOT NULL,
   [from_date]                        datetime             NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [thru_date]                        datetime             NULL,
   [extension]                        varchar(63)          NULL,
   [comments]                         text                 NULL,
   [allow_solicitation]               char(1)              NULL,
   [used_since]                       date                 NULL,
   [used_until]                       date                 NULL,
   [verify_code]                      text                 NULL,
   [verify_code_date]                 datetime             NULL,
   [verify_code_attempts]             numeric(20,0)        NULL,
   [last_updated_stamp]               datetime             NULL,
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
WITH (DISTRIBUTION = HASH ([party_id]), CLUSTERED COLUMNSTORE INDEX)
;
