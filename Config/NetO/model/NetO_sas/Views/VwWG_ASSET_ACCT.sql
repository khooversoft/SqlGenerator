-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_ASSET_ACCT]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[HOLDER] AS [HOLDER],
      x.[ATTNOF] AS [ATTNOF],
      x.[ACCTBAL] AS [ACCTBAL],
      x.[ACCTIN] AS [ACCTIN],
      x.[LIFEFACE] AS [LIFEFACE],
      x.[ISSUER] AS [ISSUER],
      x.[SHARES] AS [SHARES],
      x.[DIVIDEND] AS [DIVIDEND],
      x.[INT_RATE] AS [INT_RATE],
      x.[ACCT_START_DT] AS [ACCT_START_DT],
      x.[ACCT_MATUR_DT] AS [ACCT_MATUR_DT],
      x.[S_ACCT_OWNERSHIP] AS [S_ACCT_OWNERSHIP],
      A0.Descript AS [D_ACCT_OWNERSHIP],
      x.[ASSET_ACCT_NO] AS [ASSET_ACCT_NO],
      x.[SHARE_VALUE] AS [SHARE_VALUE],
      x.[ASSET_COLL_VALUE] AS [ASSET_COLL_VALUE],
      x.[ASSET_COLL_VAL_OVR] AS [ASSET_COLL_VAL_OVR],
      x.[ACCT_TERM] AS [ACCT_TERM],
      x.[EXCHANGE_INFO] AS [EXCHANGE_INFO],
      x.[USE_CALC_LOAN_RT] AS [USE_CALC_LOAN_RT]
   FROM [clt_NetO].[WG_ASSET_ACCT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_ACCT_OWNERSHIP = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_ACCT' and A0.[COLUMNNAME] = 'S_ACCT_OWNERSHIP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
