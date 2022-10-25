CREATE TABLE [clt_Alkami].[wiki_page]
(
   [wiki_page_id]                     varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [wiki_space_id]                    varchar(40)          NULL,
   [page_path]                        nvarchar(120)        NULL,
   [parent_wiki_page_id]              varchar(40)          NULL,
   [sequence_num]                     numeric(20,0)        NULL,
   [created_by_user_id]               varchar(40)          NULL,
   [published_version_name]           varchar(63)          NULL,
   [restrict_view]                    char(1)              NULL,
   [restrict_update]                  char(1)              NULL,
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
WITH (DISTRIBUTION = HASH ([wiki_page_id]), CLUSTERED COLUMNSTORE INDEX)
;
