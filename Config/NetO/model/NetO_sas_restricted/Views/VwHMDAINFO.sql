-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwHMDAINFO]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DEBT2INC] AS [DEBT2INC],
      x.[EMPHIST] AS [EMPHIST],
      x.[CRDHIST] AS [CRDHIST],
      x.[COLLAT] AS [COLLAT],
      x.[NOCASH] AS [NOCASH],
      x.[UNVERIF] AS [UNVERIF],
      x.[INCOMP] AS [INCOMP],
      x.[MIDENIED] AS [MIDENIED],
      x.[OTHER] AS [OTHER],
      x.[OTHERDSC] AS [OTHERDSC],
      x.[RLOANAMT] AS [RLOANAMT],
      x.[PURCHCD] AS [PURCHCD],
      x.[EMPLOYEE] AS [EMPLOYEE],
      x.[SUBMITREQUEST] AS [SUBMITREQUEST],
      x.[HMDALOANTYPECODE] AS [HMDALOANTYPECODE],
      x.[HMDAPROPTYPECODE] AS [HMDAPROPTYPECODE],
      x.[HMDALOANPURPCODE] AS [HMDALOANPURPCODE],
      x.[HMDAOOCODE] AS [HMDAOOCODE],
      x.[HMDAREPORTABLELA] AS [HMDAREPORTABLELA],
      x.[HMDAPREAPPREQUESTED] AS [HMDAPREAPPREQUESTED],
      x.[HMDAACTIONTAKENCODE] AS [HMDAACTIONTAKENCODE],
      x.[HMDAINFOREPORTABLEINCOME] AS [HMDAINFOREPORTABLEINCOME],
      x.[HMDARATESPREAD] AS [HMDARATESPREAD],
      x.[HMDAHOEPASTATUS] AS [HMDAHOEPASTATUS],
      x.[HMDALIENSTATUS] AS [HMDALIENSTATUS],
      x.[BORRETHNICITY] AS [BORRETHNICITY],
      x.[COBORRETHNICITY] AS [COBORRETHNICITY],
      x.[BORRRACE1] AS [BORRRACE1],
      x.[BORRRACE2] AS [BORRRACE2],
      x.[BORRRACE3] AS [BORRRACE3],
      x.[BORRRACE4] AS [BORRRACE4],
      x.[BORRRACE5] AS [BORRRACE5],
      x.[COBORRRACE1] AS [COBORRRACE1],
      x.[COBORRRACE2] AS [COBORRRACE2],
      x.[COBORRRACE3] AS [COBORRRACE3],
      x.[COBORRRACE4] AS [COBORRRACE4],
      x.[COBORRRACE5] AS [COBORRRACE5],
      x.[BORRSEXCODE] AS [BORRSEXCODE],
      x.[COBORRSEXCODE] AS [COBORRSEXCODE],
      x.[DENIALCODE1] AS [DENIALCODE1],
      x.[DENIALCODE2] AS [DENIALCODE2],
      x.[DENIALCODE3] AS [DENIALCODE3],
      x.[REPORTABLEYR] AS [REPORTABLEYR],
      x.[HMDAACTIONDATE] AS [HMDAACTIONDATE],
      x.[DENYCODE1PRIORITY] AS [DENYCODE1PRIORITY],
      x.[DENYCODE2PRIORITY] AS [DENYCODE2PRIORITY],
      x.[DENYCODE3PRIORITY] AS [DENYCODE3PRIORITY],
      x.[DENYCODE4PRIORITY] AS [DENYCODE4PRIORITY],
      x.[DENYCODE5PRIORITY] AS [DENYCODE5PRIORITY],
      x.[DENYCODE6PRIORITY] AS [DENYCODE6PRIORITY],
      x.[DENYCODE7PRIORITY] AS [DENYCODE7PRIORITY],
      x.[DENYCODE8PRIORITY] AS [DENYCODE8PRIORITY],
      x.[DENYCODE9PRIORITY] AS [DENYCODE9PRIORITY],
      x.[REPORTABLEYROVR] AS [REPORTABLEYROVR],
      A0.[Descript] AS [REPORTABLEYROVR_X],
      x.[HMDAREPORTABLELAOVR] AS [HMDAREPORTABLELAOVR],
      x.[MSACODE] AS [MSACODE],
      x.[STCODE] AS [STCODE],
      x.[CYCODE] AS [CYCODE],
      x.[CENTRACT] AS [CENTRACT],
      x.[ISANYBORRINCHMDARPTB] AS [ISANYBORRINCHMDARPTB],
      x.[HMDAREPORTABLEDESC] AS [HMDAREPORTABLEDESC],
      x.[APPDATEISNULL] AS [APPDATEISNULL],
      x.[LOCKDATEISNULL] AS [LOCKDATEISNULL],
      x.[RATESPREADISNULL] AS [RATESPREADISNULL],
      x.[APPINCOMEISNULL] AS [APPINCOMEISNULL]
   FROM [clt_NetO].[HMDAINFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[REPORTABLEYROVR] = A0.[DBSYMBOL] AND A0.[TableName] = 'HMDAINFO' and A0.[COLUMNNAME] = 'REPORTABLEYROVR'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
