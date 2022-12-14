-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_ASSET_VHCL_TRAILER]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[S_AXLE_TYPE],
      A0.[Descript] AS [S_AXLE_TYPE_X],
      x.[BRAKES_YN],
      x.[TRAILER_LENGTH]
   FROM [clt_NetO].[WG_ASSET_VHCL_TRAILER] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_AXLE_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_ASSET_VHCL_TRAILER' and A0.[COLUMNNAME] = 'S_AXLE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
