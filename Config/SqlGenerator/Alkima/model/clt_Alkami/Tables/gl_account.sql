CREATE TABLE [clt_Alkami].[gl_account]
(
   [gl_account_id]                    varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [parent_gl_account_id]             varchar(40)          NULL,
   [gl_account_type_enum_id]          varchar(40)          NULL,
   [gl_account_class_enum_id]         varchar(40)          NULL,
   [is_debit]                         char(1)              NULL,
   [is_temporary]                     char(1)              NULL,
   [gl_resource_type_enum_id]         varchar(40)          NULL,
   [gl_xbrl_class_enum_id]            varchar(40)          NULL,
   [account_code]                     nvarchar(80)         NULL,
   [account_name]                     nvarchar(80)         NULL,
   [description]                      text                 NULL,
   [external_id]                      varchar(40)          NULL,
   [disallow_posting]                 char(1)              NULL,
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
WITH (DISTRIBUTION = HASH ([gl_account_id]), CLUSTERED COLUMNSTORE INDEX)
;
