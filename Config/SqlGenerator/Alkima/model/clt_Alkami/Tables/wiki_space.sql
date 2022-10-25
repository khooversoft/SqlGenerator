CREATE TABLE [clt_Alkami].[wiki_space]
(
   [wiki_space_id]                    varchar(40)          NOT NULL,
   [ASAP_RecordEffectiveDateTime]     datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]              nvarchar(10)         NULL,
   [description]                      text                 NULL,
   [root_page_location]               text                 NULL,
   [decorator_screen_location]        text                 NULL,
   [public_page_url]                  text                 NULL,
   [public_attachment_url]            text                 NULL,
   [public_blog_url]                  text                 NULL,
   [restrict_view]                    char(1)              NULL,
   [restrict_update]                  char(1)              NULL,
   [allow_any_html]                   char(1)              NULL,
   [screen_theme_id]                  varchar(40)          NULL,
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
WITH (DISTRIBUTION = HASH ([wiki_space_id]), CLUSTERED COLUMNSTORE INDEX)
;
