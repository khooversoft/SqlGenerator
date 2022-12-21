-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwTILINFO]
AS
   SELECT
      x.[LNUM],
      x.[INITDISC],
      x.[REQITEM],
      x.[AREQDEP],
      x.[DASSUM],
      x.[ASSUMBLE],
      x.[RQPRPINS],
      x.[INSTERM],
      HASHBYTES('SHA2_256', CAST(x.[FEESTAXS] AS NVARCHAR(50))) AS [FEESTAXS],
      x.[ALLOWDYS],
      x.[LTCHG],
      x.[MINLTCHG],
      x.[MAXLTCHG],
      x.[RFNDFCHG],
      x.[SECINRST],
      x.[RQMTGINS],
      HASHBYTES('SHA2_256', CAST(x.[COLLSN] AS NVARCHAR(50))) AS [COLLSN],
      x.[PRPOWNSN],
      x.[PRPOWNDB],
      x.[MLIFPREM],
      x.[MLIFTERM],
      x.[MDISPREM],
      x.[MDISTERM],
      x.[MLDPREM],
      x.[MLDTERM],
      x.[LATECHGFLAG],
      x.[ESTDISC],
      x.[COLLDBID],
      x.[YIELDDT],
      x.[COMP_APR],
      x.[TTLINSPMT],
      x.[PREPYPEN],
      x.[LENDOWN],
      x.[DSCMIPMT],
      x.[CLCOMPNY],
      x.[INSURED],
      x.[LAMTOVR],
      x.[FEESOVR],
      x.[PERLAOVR],
      HASHBYTES('SHA2_256', CAST(x.[APROVR] AS NVARCHAR(50))) AS [APROVR],
      x.[HOEPARES],
      x.[PPPTYPE],
      A0.[Descript] AS [PPPTYPE_X],
      x.[DISINTRST],
      x.[APR],
      x.[DEMANDF],
      x.[ASSUME_BEGIN_DATE],
      x.[ASSUME_TERM_MONTHS],
      x.[ASSUMABLE_DESC],
      x.[JOINLIFETRM],
      x.[JOINLIFEPRM],
      x.[REDISCLOSE_IND],
      x.[SECINTPRC],
      x.[SECINTOWN],
      x.[SECINTOTH],
      x.[S_LATECHARGETYPE],
      A1.[Descript] AS [S_LATECHARGETYPE_X],
      x.[S_PPPOPT],
      A2.[Descript] AS [S_PPPOPT_X],
      HASHBYTES('SHA2_256', CAST(x.[PMMS_RATE] AS NVARCHAR(50))) AS [PMMS_RATE],
      x.[LOCK_REDISCLOSE_IND],
      x.[S_TIL2011_OVRD],
      A3.[Descript] AS [S_TIL2011_OVRD_X],
      HASHBYTES('SHA2_256', CAST(x.[FLAT_AMT] AS NVARCHAR(50))) AS [FLAT_AMT],
      x.[BPRESOTHPRGS],
      x.[DISCLOSE_APR],
      x.[CD_NEG_AMINFO],
      x.[CD_PAR_PAYINFO],
      x.[CD_PAR_PAYINFO_A],
      x.[CD_PAR_PAYINFO_H],
      x.[FINANCE_CHARGE],
      x.[TOTAL_OF_PMTS],
      x.[ESTIMATE_ESCROW],
      x.[AMT_FINANCED],
      x.[HIGHCOSTLOAN],
      x.[MAPR],
      HASHBYTES('SHA2_256', x.[OTHER_LOAN_FEATURE]) AS [OTHER_LOAN_FEATURE],
      HASHBYTES('SHA2_256', x.[OTHER_LOAN_FEATURES_DESC]) AS [OTHER_LOAN_FEATURES_DESC],
      x.[GOODS_PURCHASED],
      x.[PERSONAL_PROPERTY],
      x.[PRESENT_SHARES],
      HASHBYTES('SHA2_256', x.[OTHER_COLLATERAL]) AS [OTHER_COLLATERAL]
   FROM [clt_NetO].[TILINFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[PPPTYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'TILINFO' and A0.[COLUMNNAME] = 'PPPTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_LATECHARGETYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'TILINFO' and A1.[COLUMNNAME] = 'S_LATECHARGETYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_PPPOPT] = A2.[DBSYMBOL] AND A2.[TableName] = 'TILINFO' and A2.[COLUMNNAME] = 'S_PPPOPT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A3 on x.[S_TIL2011_OVRD] = A3.[DBSYMBOL] AND A3.[TableName] = 'TILINFO' and A3.[COLUMNNAME] = 'S_TIL2011_OVRD'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
