-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_ASSET_ACCT]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[HOLDER],
      x.[ATTNOF],
      x.[ACCTBAL],
      x.[ACCTIN],
      x.[LIFEFACE],
      x.[ISSUER],
      x.[SHARES],
      x.[DIVIDEND],
      x.[INT_RATE],
      x.[ACCT_START_DT],
      x.[ACCT_MATUR_DT],
      x.[S_ACCT_OWNERSHIP],
      A0.Descript AS [ACCT_OWNERSHIP],
      x.[ASSET_ACCT_NO],
      x.[SHARE_VALUE],
      x.[ASSET_COLL_VALUE],
      x.[ASSET_COLL_VAL_OVR],
      x.[ACCT_TERM],
      x.[EXCHANGE_INFO],
      x.[USE_CALC_LOAN_RT]
   FROM [clt_NetO].[WG_ASSET_ACCT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_ACCT_OWNERSHIP = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_ACCT' and A0.[COLUMNNAME] = 'S_ACCT_OWNERSHIP'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
