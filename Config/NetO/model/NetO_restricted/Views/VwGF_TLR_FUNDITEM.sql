-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_FUNDITEM]
AS
   SELECT
      x.[LNUM],
      x.[TRANS_COUNTER],
      x.[TRANS_DBID],
      HASHBYTES('SHA2_256', x.[SOURCE_XREF]) AS [SOURCE_XREF],
      x.[MODIFIED_DATE],
      HASHBYTES('SHA2_256', x.[MODIFIED_USER]) AS [MODIFIED_USER],
      x.[DESCRIPT],
      x.[AMOUNT],
      x.[OMIT_FROM_FUNDING],
      x.[ACTION_TO_TAKE],
      x.[ITEM_STATUS],
      x.[GL_TRANS_CODE],
      x.[BATCHID],
      HASHBYTES('SHA2_256', x.[SOURCE_DISPLAY]) AS [SOURCE_DISPLAY],
      x.[SRC_FLDNAME],
      x.[SRC_CODE]
   FROM [clt_NetO].[GF_TLR_FUNDITEM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
