-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwDECLRTN]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[JUDGMENT] AS [JUDGMENT],
      x.[A_DBID] AS [A_DBID],
      x.[A_SERIAL] AS [A_SERIAL],
      x.[BANKRUPT] AS [BANKRUPT],
      x.[B_DBID] AS [B_DBID],
      x.[B_SERIAL] AS [B_SERIAL],
      x.[FORECLOS] AS [FORECLOS],
      x.[C_DBID] AS [C_DBID],
      x.[C_SERIAL] AS [C_SERIAL],
      x.[LAWSUIT] AS [LAWSUIT],
      x.[D_DBID] AS [D_DBID],
      x.[D_SERIAL] AS [D_SERIAL],
      x.[OBLIGATE] AS [OBLIGATE],
      x.[E_DBID] AS [E_DBID],
      x.[E_SERIAL] AS [E_SERIAL],
      x.[DELINQNT] AS [DELINQNT],
      x.[F_DBID] AS [F_DBID],
      x.[F_SERIAL] AS [F_SERIAL],
      x.[ALIMONY] AS [ALIMONY],
      x.[G_DBID] AS [G_DBID],
      x.[G_SERIAL] AS [G_SERIAL],
      x.[BORROWED] AS [BORROWED],
      x.[H_DBID] AS [H_DBID],
      x.[H_SERIAL] AS [H_SERIAL],
      x.[COMAKER] AS [COMAKER],
      x.[I_DBID] AS [I_DBID],
      x.[I_SERIAL] AS [I_SERIAL],
      x.[CITIZEN] AS [CITIZEN],
      x.[J_DBID] AS [J_DBID],
      x.[J_SERIAL] AS [J_SERIAL],
      x.[ALIEN] AS [ALIEN],
      x.[K_DBID] AS [K_DBID],
      x.[K_SERIAL] AS [K_SERIAL],
      x.[OCCUPY] AS [OCCUPY],
      x.[L_DBID] AS [L_DBID],
      x.[L_SERIAL] AS [L_SERIAL],
      x.[OWNRSHIP] AS [OWNRSHIP],
      x.[M_DBID] AS [M_DBID],
      x.[M_SERIAL] AS [M_SERIAL],
      x.[S_PRPTYP] AS [S_PRPTYP],
      A0.Descript AS [PRPTYP],
      x.[S_TITLE] AS [S_TITLE],
      A1.Descript AS [TITLE],
      x.[BNKRPT_DISCHARGE_MOS] AS [BNKRPT_DISCHARGE_MOS],
      x.[FORECLOSURE_MOS] AS [FORECLOSURE_MOS],
      x.[NON_PERMANENT_RESIDENT_ALIEN] AS [NON_PERMANENT_RESIDENT_ALIEN],
      x.[JUDGMENT_NOTES] AS [JUDGMENT_NOTES],
      x.[BANKRUPT_NOTES] AS [BANKRUPT_NOTES],
      x.[FORECLOS_NOTES] AS [FORECLOS_NOTES],
      x.[LAWSUIT_NOTES] AS [LAWSUIT_NOTES],
      x.[OBLIGATE_NOTES] AS [OBLIGATE_NOTES],
      x.[DELINQNT_NOTES] AS [DELINQNT_NOTES],
      x.[ALIMONY_NOTES] AS [ALIMONY_NOTES],
      x.[BORROWED_NOTES] AS [BORROWED_NOTES],
      x.[COMAKER_NOTES] AS [COMAKER_NOTES],
      x.[CITIZEN_NOTES] AS [CITIZEN_NOTES],
      x.[ALIEN_NOTES] AS [ALIEN_NOTES],
      x.[OCCUPY_NOTES] AS [OCCUPY_NOTES],
      x.[OWNRSHIP_NOTES] AS [OWNRSHIP_NOTES],
      x.[AFFILIATION] AS [AFFILIATION],
      x.[DOWNPMT_BORR_AMT] AS [DOWNPMT_BORR_AMT],
      x.[INSTALLMENT_LOAN] AS [INSTALLMENT_LOAN],
      x.[MORTGAGE_LOAN] AS [MORTGAGE_LOAN],
      x.[PROPTAXES] AS [PROPTAXES],
      x.[SHORT_SALE] AS [SHORT_SALE],
      x.[PROPFORECLOSE] AS [PROPFORECLOSE],
      x.[S_BANKRUPTCY_TYPE] AS [S_BANKRUPTCY_TYPE],
      A2.Descript AS [BANKRUPTCY_TYPE],
      x.[PREFORECLOS_NOTES] AS [PREFORECLOS_NOTES],
      x.[PROPFORECL_NOTES] AS [PROPFORECL_NOTES],
      x.[PRIMRESID_NOTES] AS [PRIMRESID_NOTES],
      x.[OWNERINTRST_NOTES] AS [OWNERINTRST_NOTES],
      x.[MORTGAGELN_NOTES] AS [MORTGAGELN_NOTES],
      x.[NEWCREDIT_NOTES] AS [NEWCREDIT_NOTES],
      x.[AFFILIATION_NOTES] AS [AFFILIATION_NOTES],
      x.[PROPERTYTAXES_NOTES] AS [PROPERTYTAXES_NOTES],
      x.[CHAPTER7_CHK] AS [CHAPTER7_CHK],
      x.[CHAPTER12_CHK] AS [CHAPTER12_CHK],
      x.[CHAPTER13_CHK] AS [CHAPTER13_CHK],
      x.[CHAPTER11_CHK] AS [CHAPTER11_CHK],
      x.[OUTSTANJUDGE_EXTCIRCUM] AS [OUTSTANJUDGE_EXTCIRCUM],
      x.[OUTSTANJUDGE_INCINFORM] AS [OUTSTANJUDGE_INCINFORM],
      x.[DELINQUENT_DEBT_EXTCIRCUM] AS [DELINQUENT_DEBT_EXTCIRCUM],
      x.[DELINQUENT_DEBT_INCINFORM] AS [DELINQUENT_DEBT_INCINFORM],
      x.[FORECLOSURE_EXTCIRCUM] AS [FORECLOSURE_EXTCIRCUM],
      x.[FORECLOSURE_INCINFORM] AS [FORECLOSURE_INCINFORM],
      x.[SHORTSALE_EXTCIRCUM] AS [SHORTSALE_EXTCIRCUM],
      x.[SHORTSALE_INCINFORM] AS [SHORTSALE_INCINFORM],
      x.[PROPERTYFORCLOSE_EXTCIRCUM] AS [PROPERTYFORCLOSE_EXTCIRCUM],
      x.[PROPERTYFORCLOSE_INCINFORM] AS [PROPERTYFORCLOSE_INCINFORM],
      x.[DECBANKRUPTCY_EXTCIRCUM] AS [DECBANKRUPTCY_EXTCIRCUM],
      x.[DECBANKRUPTCY_INCINFORM] AS [DECBANKRUPTCY_INCINFORM],
      x.[FHA_SECOND_RESID_IND] AS [FHA_SECOND_RESID_IND]
   FROM [clt_NetO].[DECLRTN] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_PRPTYP = A0.[DBSYMBOL] AND A0.[TableName] = 'DECLRTN' and A0.[COLUMNNAME] = 'S_PRPTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_TITLE = A1.[DBSYMBOL] AND A1.[TableName] = 'DECLRTN' and A1.[COLUMNNAME] = 'S_TITLE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_BANKRUPTCY_TYPE = A2.[DBSYMBOL] AND A2.[TableName] = 'DECLRTN' and A2.[COLUMNNAME] = 'S_BANKRUPTCY_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
