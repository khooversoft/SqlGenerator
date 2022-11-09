-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_ASSET_MARINE_ENG]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ASSETID] AS [ASSETID],
      x.[ROWCOUNTER] AS [ROWCOUNTER],
      x.[NEW_YN] AS [NEW_YN],
      x.[ENGINE_ID] AS [ENGINE_ID],
      x.[ENGINE_YEAR] AS [ENGINE_YEAR],
      x.[ENGINE_MAKE] AS [ENGINE_MAKE],
      x.[ENGINE_MODEL] AS [ENGINE_MODEL],
      x.[HORSEPOWER] AS [HORSEPOWER],
      x.[CYLINDERS] AS [CYLINDERS],
      x.[POWER_TILT_YN] AS [POWER_TILT_YN],
      x.[ENGINE_VALUE] AS [ENGINE_VALUE],
      x.[HOURS] AS [HOURS],
      x.[ENGINE_TITLE_NUM] AS [ENGINE_TITLE_NUM],
      x.[ENGINE_MODEL_NUM] AS [ENGINE_MODEL_NUM],
      x.[S_ENGINE_MFG] AS [S_ENGINE_MFG],
      x.[S_MULTIENGINETYPE] AS [S_MULTIENGINETYPE],
      x.[S_ENGINE_COLOR] AS [S_ENGINE_COLOR]
   FROM [clt_NetO].[WG_ASSET_MARINE_ENG] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
