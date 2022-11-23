-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwHMDAINFO]
AS
   SELECT
      x.[LNUM],
      x.[DEBT2INC],
      x.[EMPHIST],
      x.[CRDHIST],
      x.[COLLAT],
      x.[NOCASH],
      x.[UNVERIF],
      x.[INCOMP],
      x.[MIDENIED],
      x.[OTHER],
      x.[OTHERDSC],
      x.[RLOANAMT],
      x.[PURCHCD],
      x.[EMPLOYEE],
      x.[SUBMITREQUEST],
      x.[HMDALOANTYPECODE],
      x.[HMDAPROPTYPECODE],
      x.[HMDALOANPURPCODE],
      x.[HMDAOOCODE],
      x.[HMDAREPORTABLELA],
      x.[HMDAPREAPPREQUESTED],
      x.[HMDAACTIONTAKENCODE],
      x.[HMDAINFOREPORTABLEINCOME],
      x.[HMDARATESPREAD],
      x.[HMDAHOEPASTATUS],
      x.[HMDALIENSTATUS],
      x.[BORRETHNICITY],
      x.[COBORRETHNICITY],
      x.[BORRRACE1],
      x.[BORRRACE2],
      x.[BORRRACE3],
      x.[BORRRACE4],
      x.[BORRRACE5],
      x.[COBORRRACE1],
      x.[COBORRRACE2],
      x.[COBORRRACE3],
      x.[COBORRRACE4],
      x.[COBORRRACE5],
      x.[BORRSEXCODE],
      x.[COBORRSEXCODE],
      x.[DENIALCODE1],
      x.[DENIALCODE2],
      x.[DENIALCODE3],
      x.[REPORTABLEYR],
      x.[HMDAACTIONDATE],
      x.[DENYCODE1PRIORITY],
      x.[DENYCODE2PRIORITY],
      x.[DENYCODE3PRIORITY],
      x.[DENYCODE4PRIORITY],
      x.[DENYCODE5PRIORITY],
      x.[DENYCODE6PRIORITY],
      x.[DENYCODE7PRIORITY],
      x.[DENYCODE8PRIORITY],
      x.[DENYCODE9PRIORITY],
      x.[REPORTABLEYROVR],
      x.[HMDAREPORTABLELAOVR],
      x.[MSACODE],
      x.[STCODE],
      x.[CYCODE],
      x.[CENTRACT],
      x.[ISANYBORRINCHMDARPTB],
      x.[HMDAREPORTABLEDESC],
      x.[APPDATEISNULL],
      x.[LOCKDATEISNULL],
      x.[RATESPREADISNULL],
      x.[APPINCOMEISNULL]
   FROM [clt_NetO].[HMDAINFO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
