CREATE TABLE [clt_Alkami].[db_form]
(
   [form_id]                          varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [purpose_enum_id]                  varchar(40)          NULL,
   [is_list_form]                     char(1)              NULL,
   [modify_xml_screen_form]           text                 NULL,
   [description]                      text                 NULL,
   [comments]                         text                 NULL,
   [print_template_location]          text                 NULL,
   [acro_form_location]               text                 NULL,
   [print_font_size]                  varchar(63)          NULL,
   [print_font_family]                varchar(63)          NULL,
   [print_container_width]            varchar(63)          NULL,
   [print_container_height]           varchar(63)          NULL,
   [print_repeat_count]               numeric(20,0)        NULL,
   [print_repeat_new_page]            char(1)              NULL,
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
WITH (DISTRIBUTION = HASH ([form_id]), CLUSTERED COLUMNSTORE INDEX)
;
