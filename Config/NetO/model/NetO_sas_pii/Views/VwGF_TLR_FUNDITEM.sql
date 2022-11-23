-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLR_FUNDITEM]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[TRANS_COUNTER] AS [TRANS_COUNTER],
      x.[TRANS_DBID] AS [TRANS_DBID],
      x.[SOURCE_XREF] AS [SOURCE_XREF],
      x.[MODIFIED_DATE] AS [MODIFIED_DATE],
      x.[MODIFIED_USER] AS [MODIFIED_USER],
      x.[DESCRIPT] AS [DESCRIPT],
      x.[AMOUNT] AS [AMOUNT],
      x.[OMIT_FROM_FUNDING] AS [OMIT_FROM_FUNDING],
      x.[ACTION_TO_TAKE] AS [ACTION_TO_TAKE],
      x.[ITEM_STATUS] AS [ITEM_STATUS],
      x.[GL_TRANS_CODE] AS [GL_TRANS_CODE],
      x.[BATCHID] AS [BATCHID],
      x.[SOURCE_DISPLAY] AS [SOURCE_DISPLAY],
      x.[SRC_FLDNAME] AS [SRC_FLDNAME],
      x.[SRC_CODE] AS [SRC_CODE]
   FROM [clt_NetO].[GF_TLR_FUNDITEM] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
