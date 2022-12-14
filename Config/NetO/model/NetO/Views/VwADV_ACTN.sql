-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwADV_ACTN]
AS
   SELECT
      x.[LNUM],
      x.[NOFILE],
      x.[INSUFFCR],
      x.[INSUFFLE],
      x.[GARNISH],
      x.[EXCSVOBL],
      x.[PAYMTUNA],
      x.[CASHLACK],
      x.[BANKRUPT],
      x.[DELCRDOB],
      x.[VRFYCRDT],
      x.[POORCRED],
      x.[CRDTREF],
      x.[LIMCRDT],
      x.[VRFYEMPL],
      x.[EMPLENG],
      x.[EMPLTEMP],
      x.[INSUFINC],
      x.[VRFYINCM],
      x.[INCEXCIN],
      x.[TEMPRES],
      x.[RESLENG],
      x.[VRFYRES],
      x.[DENY_HUD],
      x.[DENY_VA],
      HASHBYTES('SHA2_256', x.[DENYFNMA]) AS [DENYFNMA],
      HASHBYTES('SHA2_256', x.[DENFHLMC]) AS [DENFHLMC],
      x.[DENOTHR1],
      x.[DENOTH1D],
      x.[INSUFFND],
      x.[APPINCMP],
      x.[COLLSUFF],
      x.[CLT_PROP],
      x.[CLT_DATA],
      x.[CLT_APRL],
      x.[CLT_LEAS],
      HASHBYTES('SHA2_256', x.[NOCREDIT]) AS [NOCREDIT],
      x.[NOCRDT_D],
      x.[OTHERBX1],
      x.[OTHRBX1D],
      x.[OTSDSOUR],
      x.[INFOBTND],
      x.[CRDT_OTH],
      x.[CRDTAGY1],
      x.[CRDT1AD1],
      x.[CRDT1AD2],
      x.[CRDTCTY1],
      x.[CRDTST1],
      x.[CRDTZIP1],
      x.[CRDTPH1],
      x.[CRDTAGY2],
      x.[CRDT2AD1],
      x.[CRDT2AD2],
      x.[CRDTCTY2],
      x.[CRDTST2],
      x.[CRDTZIP2],
      x.[CRDTPH2],
      x.[CRDTAGY3],
      x.[CRDT3AD1],
      x.[CRDT3AD2],
      x.[CRDTCTY3],
      x.[CRDTST3],
      x.[CRDTZIP3],
      x.[CRDTPH3],
      HASHBYTES('SHA2_256', CAST(x.[ACTNSN] AS NVARCHAR(50))) AS [ACTNSN],
      x.[ACTNDBID],
      x.[CRDTTF1],
      x.[COLLECTION],
      x.[FORECLOSURE],
      HASHBYTES('SHA2_256', x.[OTHER2]) AS [OTHER2],
      HASHBYTES('SHA2_256', x.[OTHER3]) AS [OTHER3],
      HASHBYTES('SHA2_256', x.[OTHER4]) AS [OTHER4],
      HASHBYTES('SHA2_256', x.[OTHER5]) AS [OTHER5],
      HASHBYTES('SHA2_256', x.[OTHER2DESC]) AS [OTHER2DESC],
      HASHBYTES('SHA2_256', x.[OTHER3DESC]) AS [OTHER3DESC],
      HASHBYTES('SHA2_256', x.[OTHER4DESC]) AS [OTHER4DESC],
      HASHBYTES('SHA2_256', x.[OTHER5DESC]) AS [OTHER5DESC],
      HASHBYTES('SHA2_256', x.[CREDIT_INQUIRIES]) AS [CREDIT_INQUIRIES],
      HASHBYTES('SHA2_256', x.[MAILED]) AS [MAILED],
      HASHBYTES('SHA2_256', x.[EMAILED]) AS [EMAILED],
      x.[DELIVERED],
      x.[INCAPPDBID],
      x.[INCAPPSERNO],
      x.[APP_WITHDRAWN],
      x.[NEVER_ON_REQ_TERMS],
      HASHBYTES('SHA2_256', x.[OVRDCRDTAGY1]) AS [OVRDCRDTAGY1],
      HASHBYTES('SHA2_256', x.[OVRDCRDT1AD1]) AS [OVRDCRDT1AD1],
      HASHBYTES('SHA2_256', x.[OVRDCRDT1AD2]) AS [OVRDCRDT1AD2],
      HASHBYTES('SHA2_256', x.[OVRDCRDTCTY1]) AS [OVRDCRDTCTY1],
      HASHBYTES('SHA2_256', x.[OVRDCRDTST1]) AS [OVRDCRDTST1],
      HASHBYTES('SHA2_256', x.[OVRDCRDTPH1]) AS [OVRDCRDTPH1],
      HASHBYTES('SHA2_256', x.[OVRDCRDTZIP1]) AS [OVRDCRDTZIP1],
      x.[MTGINSDECLINED],
      x.[CTL_LOCORCOND],
      x.[CTL_LENSPFICPOL],
      x.[REVBALHIGH],
      x.[EXCESSOBLIG],
      x.[IDVERIFY],
      x.[NEWOBLIG],
      x.[NOTELIGCUMEMBER]
   FROM [clt_NetO].[ADV_ACTN] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
