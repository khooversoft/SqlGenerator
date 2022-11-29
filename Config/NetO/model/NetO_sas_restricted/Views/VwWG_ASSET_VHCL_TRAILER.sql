-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_ASSET_VHCL_TRAILER]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[S_AXLE_TYPE] AS [S_AXLE_TYPE],
      A0.Descript AS [AXLE_TYPE],
      x.[BRAKES_YN] AS [BRAKES_YN],
      x.[TRAILER_LENGTH] AS [TRAILER_LENGTH]
   FROM [clt_NetO].[WG_ASSET_VHCL_TRAILER] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_AXLE_TYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_VHCL_TRAILER' and A0.[COLUMNNAME] = 'S_AXLE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
