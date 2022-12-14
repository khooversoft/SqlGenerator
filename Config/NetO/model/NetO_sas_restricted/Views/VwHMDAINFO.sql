-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwHMDAINFO]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      HASHBYTES('SHA2_256', x.[DEBT2INC]) AS [DEBT2INC],
      x.[EMPHIST] AS [EMPHIST],
      HASHBYTES('SHA2_256', x.[CRDHIST]) AS [CRDHIST],
      x.[COLLAT] AS [COLLAT],
      x.[NOCASH] AS [NOCASH],
      x.[UNVERIF] AS [UNVERIF],
      HASHBYTES('SHA2_256', x.[INCOMP]) AS [INCOMP],
      HASHBYTES('SHA2_256', x.[MIDENIED]) AS [MIDENIED],
      x.[OTHER] AS [OTHER],
      x.[OTHERDSC] AS [OTHERDSC],
      x.[RLOANAMT] AS [RLOANAMT],
      x.[PURCHCD] AS [PURCHCD],
      HASHBYTES('SHA2_256', x.[EMPLOYEE]) AS [EMPLOYEE],
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
      HASHBYTES('SHA2_256', CAST(x.[BORRETHNICITY] AS NVARCHAR(50))) AS [BORRETHNICITY],
      HASHBYTES('SHA2_256', CAST(x.[COBORRETHNICITY] AS NVARCHAR(50))) AS [COBORRETHNICITY],
      HASHBYTES('SHA2_256', CAST(x.[BORRRACE1] AS NVARCHAR(50))) AS [BORRRACE1],
      HASHBYTES('SHA2_256', CAST(x.[BORRRACE2] AS NVARCHAR(50))) AS [BORRRACE2],
      HASHBYTES('SHA2_256', CAST(x.[BORRRACE3] AS NVARCHAR(50))) AS [BORRRACE3],
      HASHBYTES('SHA2_256', CAST(x.[BORRRACE4] AS NVARCHAR(50))) AS [BORRRACE4],
      HASHBYTES('SHA2_256', CAST(x.[BORRRACE5] AS NVARCHAR(50))) AS [BORRRACE5],
      HASHBYTES('SHA2_256', CAST(x.[COBORRRACE1] AS NVARCHAR(50))) AS [COBORRRACE1],
      HASHBYTES('SHA2_256', CAST(x.[COBORRRACE2] AS NVARCHAR(50))) AS [COBORRRACE2],
      HASHBYTES('SHA2_256', CAST(x.[COBORRRACE3] AS NVARCHAR(50))) AS [COBORRRACE3],
      HASHBYTES('SHA2_256', CAST(x.[COBORRRACE4] AS NVARCHAR(50))) AS [COBORRRACE4],
      HASHBYTES('SHA2_256', CAST(x.[COBORRRACE5] AS NVARCHAR(50))) AS [COBORRRACE5],
      HASHBYTES('SHA2_256', CAST(x.[BORRSEXCODE] AS NVARCHAR(50))) AS [BORRSEXCODE],
      HASHBYTES('SHA2_256', CAST(x.[COBORRSEXCODE] AS NVARCHAR(50))) AS [COBORRSEXCODE],
      x.[DENIALCODE1] AS [DENIALCODE1],
      x.[DENIALCODE2] AS [DENIALCODE2],
      x.[DENIALCODE3] AS [DENIALCODE3],
      x.[REPORTABLEYR] AS [REPORTABLEYR],
      x.[HMDAACTIONDATE] AS [HMDAACTIONDATE],
      HASHBYTES('SHA2_256', CAST(x.[DENYCODE1PRIORITY] AS NVARCHAR(50))) AS [DENYCODE1PRIORITY],
      HASHBYTES('SHA2_256', CAST(x.[DENYCODE2PRIORITY] AS NVARCHAR(50))) AS [DENYCODE2PRIORITY],
      HASHBYTES('SHA2_256', CAST(x.[DENYCODE3PRIORITY] AS NVARCHAR(50))) AS [DENYCODE3PRIORITY],
      HASHBYTES('SHA2_256', CAST(x.[DENYCODE4PRIORITY] AS NVARCHAR(50))) AS [DENYCODE4PRIORITY],
      HASHBYTES('SHA2_256', CAST(x.[DENYCODE5PRIORITY] AS NVARCHAR(50))) AS [DENYCODE5PRIORITY],
      HASHBYTES('SHA2_256', CAST(x.[DENYCODE6PRIORITY] AS NVARCHAR(50))) AS [DENYCODE6PRIORITY],
      HASHBYTES('SHA2_256', CAST(x.[DENYCODE7PRIORITY] AS NVARCHAR(50))) AS [DENYCODE7PRIORITY],
      HASHBYTES('SHA2_256', CAST(x.[DENYCODE8PRIORITY] AS NVARCHAR(50))) AS [DENYCODE8PRIORITY],
      HASHBYTES('SHA2_256', CAST(x.[DENYCODE9PRIORITY] AS NVARCHAR(50))) AS [DENYCODE9PRIORITY],
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
