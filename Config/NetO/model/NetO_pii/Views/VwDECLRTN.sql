-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwDECLRTN]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[JUDGMENT],
      x.[A_DBID],
      x.[A_SERIAL],
      x.[BANKRUPT],
      x.[B_DBID],
      x.[B_SERIAL],
      x.[FORECLOS],
      x.[C_DBID],
      x.[C_SERIAL],
      x.[LAWSUIT],
      x.[D_DBID],
      x.[D_SERIAL],
      x.[OBLIGATE],
      x.[E_DBID],
      x.[E_SERIAL],
      x.[DELINQNT],
      x.[F_DBID],
      x.[F_SERIAL],
      x.[ALIMONY],
      x.[G_DBID],
      x.[G_SERIAL],
      x.[BORROWED],
      x.[H_DBID],
      x.[H_SERIAL],
      x.[COMAKER],
      x.[I_DBID],
      x.[I_SERIAL],
      x.[CITIZEN],
      x.[J_DBID],
      x.[J_SERIAL],
      x.[ALIEN],
      x.[K_DBID],
      x.[K_SERIAL],
      x.[OCCUPY],
      x.[L_DBID],
      x.[L_SERIAL],
      x.[OWNRSHIP],
      x.[M_DBID],
      x.[M_SERIAL],
      x.[S_PRPTYP],
      A0.Descript AS [S_PRPTYP_Description],
      x.[S_TITLE],
      A1.Descript AS [S_TITLE_Description],
      x.[BNKRPT_DISCHARGE_MOS],
      x.[FORECLOSURE_MOS],
      x.[NON_PERMANENT_RESIDENT_ALIEN],
      x.[JUDGMENT_NOTES],
      x.[BANKRUPT_NOTES],
      x.[FORECLOS_NOTES],
      x.[LAWSUIT_NOTES],
      x.[OBLIGATE_NOTES],
      x.[DELINQNT_NOTES],
      x.[ALIMONY_NOTES],
      x.[BORROWED_NOTES],
      x.[COMAKER_NOTES],
      x.[CITIZEN_NOTES],
      x.[ALIEN_NOTES],
      x.[OCCUPY_NOTES],
      x.[OWNRSHIP_NOTES],
      x.[AFFILIATION],
      x.[DOWNPMT_BORR_AMT],
      x.[INSTALLMENT_LOAN],
      x.[MORTGAGE_LOAN],
      x.[PROPTAXES],
      x.[SHORT_SALE],
      x.[PROPFORECLOSE],
      x.[S_BANKRUPTCY_TYPE],
      A2.Descript AS [S_BANKRUPTCY_TYPE_Description],
      x.[PREFORECLOS_NOTES],
      x.[PROPFORECL_NOTES],
      x.[PRIMRESID_NOTES],
      x.[OWNERINTRST_NOTES],
      x.[MORTGAGELN_NOTES],
      x.[NEWCREDIT_NOTES],
      x.[AFFILIATION_NOTES],
      x.[PROPERTYTAXES_NOTES],
      x.[CHAPTER7_CHK],
      x.[CHAPTER12_CHK],
      x.[CHAPTER13_CHK],
      x.[CHAPTER11_CHK],
      x.[OUTSTANJUDGE_EXTCIRCUM],
      x.[OUTSTANJUDGE_INCINFORM],
      x.[DELINQUENT_DEBT_EXTCIRCUM],
      x.[DELINQUENT_DEBT_INCINFORM],
      x.[FORECLOSURE_EXTCIRCUM],
      x.[FORECLOSURE_INCINFORM],
      x.[SHORTSALE_EXTCIRCUM],
      x.[SHORTSALE_INCINFORM],
      x.[PROPERTYFORCLOSE_EXTCIRCUM],
      x.[PROPERTYFORCLOSE_INCINFORM],
      x.[DECBANKRUPTCY_EXTCIRCUM],
      x.[DECBANKRUPTCY_INCINFORM],
      x.[FHA_SECOND_RESID_IND]
   FROM [clt_NetO].[DECLRTN] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_PRPTYP = A0.DBSYMBOL AND A0.[TableName] = 'DECLRTN' and A0.[COLUMNNAME] = 'S_PRPTYP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_TITLE = A1.DBSYMBOL AND A1.[TableName] = 'DECLRTN' and A1.[COLUMNNAME] = 'S_TITLE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_BANKRUPTCY_TYPE = A2.DBSYMBOL AND A2.[TableName] = 'DECLRTN' and A2.[COLUMNNAME] = 'S_BANKRUPTCY_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
