-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwAPPREQ]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[SERIALNO] AS NVARCHAR(50))) AS [SERIALNO],
      x.[LOTDIM1],
      x.[LOTDIM2],
      x.[IRREGLR],
      x.[IRRGDSC],
      x.[SQRFEET],
      x.[ACREAGE],
      x.[ELECUTL],
      x.[GASUTL],
      x.[WATRUTL],
      x.[SANUTL],
      x.[TTLLIMTS],
      x.[STACCESS],
      x.[STMAINT],
      x.[RANGE],
      x.[FRIDGE],
      x.[DISHWASH],
      x.[CLTHWASH],
      x.[DRYER],
      x.[DISPOSAL],
      x.[VENTFAN],
      x.[WWCARPET],
      x.[OTHEREQP],
      x.[OEQPDESC],
      x.[BLDSTAT],
      x.[BLDTYPE],
      x.[COMPINSP],
      x.[PLANS],
      x.[WARINC],
      x.[WARNAME],
      x.[EXPDATE],
      x.[CNSTVRF],
      x.[CNSTCOMP],
      x.[BLDGNUM],
      x.[MINRITES],
      x.[PROPOCC],
      HASHBYTES('SHA2_256', x.[OWNRNAME]) AS [OWNRNAME],
      x.[MNTHRENT],
      HASHBYTES('SHA2_256', x.[OCCNAME]) AS [OCCNAME],
      x.[HOMEPHN],
      x.[BUSPHONE],
      x.[KEYSAT],
      x.[TIMAVAIL],
      x.[AMPMINSP],
      x.[LEASEIS],
      x.[ANNRENT],
      x.[VACONTNO],
      x.[PURCHSEP],
      x.[CONATT],
      x.[FACTORY],
      x.[PLANNO],
      x.[ESTATE],
      x.[FLOODDESC],
      x.[FLOODFLAG],
      x.[WARADDR],
      HASHBYTES('SHA2_256', x.[WARPHONE]) AS [WARPHONE],
      x.[MINEXPLAN],
      x.[ORIGID],
      x.[SPONSID],
      x.[INSTCASE],
      x.[BRKNAME],
      x.[BRKHPHN],
      x.[BRKBPHN],
      x.[SECNUM],
      x.[ASSGNDT],
      x.[WARADDR2],
      x.[WARCITY],
      HASHBYTES('SHA2_256', x.[WARSTATE]) AS [WARSTATE],
      HASHBYTES('SHA2_256', x.[WARZIP]) AS [WARZIP],
      x.[APPR_B2G_LIC_TYPE],
      A0.[Descript] AS [APPR_B2G_LIC_TYPE_X]
   FROM [clt_NetO].[APPREQ] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[APPR_B2G_LIC_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'APPREQ' and A0.[COLUMNNAME] = 'APPR_B2G_LIC_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
