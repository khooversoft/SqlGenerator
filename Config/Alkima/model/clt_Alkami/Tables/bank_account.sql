CREATE TABLE [clt_Alkami].[bank_account]
(
   [payment_method_id]                varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [bank_name]                        text                 NULL,
   [bank_party_id]                    varchar(40)          NULL,
   [type_enum_id]                     varchar(40)          NULL,
   [routing_number]                   varchar(63)          NULL,
   [account_number]                   text                 NULL,
   [last_check_number]                numeric(20,0)        NULL,
   [nacha_immed_dest]                 varchar(63)          NULL,
   [nacha_immed_orig]                 varchar(63)          NULL,
   [nacha_immed_dest_name]            varchar(63)          NULL,
   [nacha_immed_orig_name]            varchar(63)          NULL,
   [nacha_company_name]               varchar(63)          NULL,
   [nacha_discr_data]                 varchar(63)          NULL,
   [nacha_company_id]                 varchar(63)          NULL,
   [nacha_odfi_id]                    varchar(63)          NULL,
   [nacha_entry_description]          varchar(63)          NULL,
   [nacha_add_new_line]               char(1)              NULL,
   [nacha_add_offset_record]          char(1)              NULL,
   [pos_pay_bank_number]              varchar(63)          NULL,
   [pos_pay_format_enum_id]           varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([payment_method_id]), CLUSTERED COLUMNSTORE INDEX)
;
