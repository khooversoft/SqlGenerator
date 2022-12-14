-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwAPPREQ]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[SERIALNO] AS [SERIALNO],
      x.[LOTDIM1] AS [LOTDIM1],
      x.[LOTDIM2] AS [LOTDIM2],
      x.[IRREGLR] AS [IRREGLR],
      x.[IRRGDSC] AS [IRRGDSC],
      x.[SQRFEET] AS [SQRFEET],
      x.[ACREAGE] AS [ACREAGE],
      x.[ELECUTL] AS [ELECUTL],
      x.[GASUTL] AS [GASUTL],
      x.[WATRUTL] AS [WATRUTL],
      x.[SANUTL] AS [SANUTL],
      x.[TTLLIMTS] AS [TTLLIMTS],
      x.[STACCESS] AS [STACCESS],
      x.[STMAINT] AS [STMAINT],
      x.[RANGE] AS [RANGE],
      x.[FRIDGE] AS [FRIDGE],
      x.[DISHWASH] AS [DISHWASH],
      x.[CLTHWASH] AS [CLTHWASH],
      x.[DRYER] AS [DRYER],
      x.[DISPOSAL] AS [DISPOSAL],
      x.[VENTFAN] AS [VENTFAN],
      x.[WWCARPET] AS [WWCARPET],
      x.[OTHEREQP] AS [OTHEREQP],
      x.[OEQPDESC] AS [OEQPDESC],
      x.[BLDSTAT] AS [BLDSTAT],
      x.[BLDTYPE] AS [BLDTYPE],
      x.[COMPINSP] AS [COMPINSP],
      x.[PLANS] AS [PLANS],
      x.[WARINC] AS [WARINC],
      x.[WARNAME] AS [WARNAME],
      x.[EXPDATE] AS [EXPDATE],
      x.[CNSTVRF] AS [CNSTVRF],
      x.[CNSTCOMP] AS [CNSTCOMP],
      x.[BLDGNUM] AS [BLDGNUM],
      x.[MINRITES] AS [MINRITES],
      x.[PROPOCC] AS [PROPOCC],
      x.[OWNRNAME] AS [OWNRNAME],
      x.[MNTHRENT] AS [MNTHRENT],
      x.[OCCNAME] AS [OCCNAME],
      x.[HOMEPHN] AS [HOMEPHN],
      x.[BUSPHONE] AS [BUSPHONE],
      x.[KEYSAT] AS [KEYSAT],
      x.[TIMAVAIL] AS [TIMAVAIL],
      x.[AMPMINSP] AS [AMPMINSP],
      x.[LEASEIS] AS [LEASEIS],
      x.[ANNRENT] AS [ANNRENT],
      x.[VACONTNO] AS [VACONTNO],
      x.[PURCHSEP] AS [PURCHSEP],
      x.[CONATT] AS [CONATT],
      x.[FACTORY] AS [FACTORY],
      x.[PLANNO] AS [PLANNO],
      x.[ESTATE] AS [ESTATE],
      x.[FLOODDESC] AS [FLOODDESC],
      x.[FLOODFLAG] AS [FLOODFLAG],
      x.[WARADDR] AS [WARADDR],
      x.[WARPHONE] AS [WARPHONE],
      x.[MINEXPLAN] AS [MINEXPLAN],
      x.[ORIGID] AS [ORIGID],
      x.[SPONSID] AS [SPONSID],
      x.[INSTCASE] AS [INSTCASE],
      x.[BRKNAME] AS [BRKNAME],
      x.[BRKHPHN] AS [BRKHPHN],
      x.[BRKBPHN] AS [BRKBPHN],
      x.[SECNUM] AS [SECNUM],
      x.[ASSGNDT] AS [ASSGNDT],
      x.[WARADDR2] AS [WARADDR2],
      x.[WARCITY] AS [WARCITY],
      x.[WARSTATE] AS [WARSTATE],
      x.[WARZIP] AS [WARZIP],
      x.[APPR_B2G_LIC_TYPE] AS [APPR_B2G_LIC_TYPE],
      A0.[Descript] AS [APPR_B2G_LIC_TYPE_X]
   FROM [clt_NetO].[APPREQ] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[APPR_B2G_LIC_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'APPREQ' and A0.[COLUMNNAME] = 'APPR_B2G_LIC_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
