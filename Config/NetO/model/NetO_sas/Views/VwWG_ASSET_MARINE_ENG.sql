-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_ASSET_MARINE_ENG]
AS
   SELECT
      x.[LNUM],
      x.[ASSETID],
      x.[ROWCOUNTER],
      x.[NEW_YN],
      x.[ENGINE_ID],
      x.[ENGINE_YEAR],
      x.[ENGINE_MAKE],
      x.[ENGINE_MODEL],
      x.[HORSEPOWER],
      x.[CYLINDERS],
      x.[POWER_TILT_YN],
      x.[ENGINE_VALUE],
      x.[HOURS],
      x.[ENGINE_TITLE_NUM],
      x.[ENGINE_MODEL_NUM],
      x.[S_ENGINE_MFG],
      x.[S_MULTIENGINETYPE],
      x.[S_ENGINE_COLOR]
   FROM [clt_NetO].[WG_ASSET_MARINE_ENG] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
