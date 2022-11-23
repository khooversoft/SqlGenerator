-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwSEIA]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[TAXYEAR] AS [TAXYEAR],
      x.[METHOD] AS [METHOD],
      x.[CNTR] AS [CNTR],
      x.[DBID] AS [DBID],
      x.[CTR] AS [CTR],
      x.[SCHCPRFT] AS [SCHCPRFT],
      x.[SCHCDEPL] AS [SCHCDEPL],
      x.[SCHCDEPR] AS [SCHCDEPR],
      x.[SCHCPERD] AS [SCHCPERD],
      x.[SCHDGAIN] AS [SCHDGAIN],
      x.[SCHFPRFT] AS [SCHFPRFT],
      x.[SCHFDEPR] AS [SCHFDEPR],
      x.[K1_1065] AS [K1_1065],
      x.[K1_1120S] AS [K1_1120S],
      x.[EXPN2106] AS [EXPN2106],
      x.[W2INCORP] AS [W2INCORP],
      x.[ADJGRINC] AS [ADJGRINC],
      x.[WAGSALRY] AS [WAGSALRY],
      x.[TAXINTIN] AS [TAXINTIN],
      x.[TAXEXMIN] AS [TAXEXMIN],
      x.[DIVNDINC] AS [DIVNDINC],
      x.[TAXREFND] AS [TAXREFND],
      x.[ALIMONY] AS [ALIMONY],
      x.[GAINRLOS] AS [GAINRLOS],
      x.[IRADISTB] AS [IRADISTB],
      x.[PENSANNU] AS [PENSANNU],
      x.[SCDEDEPR] AS [SCDEDEPR],
      x.[UNEMPCOM] AS [UNEMPCOM],
      x.[SSBENEFT] AS [SSBENEFT],
      x.[ODESC1] AS [ODESC1],
      x.[OAMOUNT1] AS [OAMOUNT1],
      x.[ODESC2] AS [ODESC2],
      x.[OAMOUNT2] AS [OAMOUNT2],
      x.[OATOTAL] AS [OATOTAL],
      x.[INCSECTL] AS [INCSECTL],
      x.[IRADEDUC] AS [IRADEDUC],
      x.[HALFSETX] AS [HALFSETX],
      x.[SEHEALTH] AS [SEHEALTH],
      x.[KEOGHRET] AS [KEOGHRET],
      x.[EARLYPEN] AS [EARLYPEN],
      x.[ALIMNYPD] AS [ALIMNYPD],
      x.[UNREBREX] AS [UNREBREX],
      x.[AMORTIZT] AS [AMORTIZT],
      x.[A_TOTAL] AS [A_TOTAL],
      x.[B_TAXINC] AS [B_TAXINC],
      x.[B_TOTTAX] AS [B_TOTTAX],
      x.[B_DEPRET] AS [B_DEPRET],
      x.[B_DEPLET] AS [B_DEPLET],
      x.[B_MORTNB] AS [B_MORTNB],
      x.[B_SUBT_1] AS [B_SUBT_1],
      x.[B_PEROWN] AS [B_PEROWN],
      x.[B_SUBT_2] AS [B_SUBT_2],
      x.[B_DIVIDN] AS [B_DIVIDN],
      x.[B_TOTAL] AS [B_TOTAL],
      x.[C_DEPRET] AS [C_DEPRET],
      x.[C_DEPLET] AS [C_DEPLET],
      x.[C_MORTNB] AS [C_MORTNB],
      x.[C_SUBT_1] AS [C_SUBT_1],
      x.[C_PEROWN] AS [C_PEROWN],
      x.[C_TOTAL] AS [C_TOTAL],
      x.[SALARY] AS [SALARY],
      x.[ADDBACK] AS [ADDBACK],
      x.[D_PEROWN] AS [D_PEROWN],
      x.[D_SUBT_1] AS [D_SUBT_1],
      x.[D_NETPRF] AS [D_NETPRF],
      x.[D_PERON2] AS [D_PERON2],
      x.[D_SUBT_2] AS [D_SUBT_2],
      x.[D_TOTAL] AS [D_TOTAL],
      x.[NOMONTHS] AS [NOMONTHS],
      x.[MNTHAVRG] AS [MNTHAVRG],
      x.[TOTINC] AS [TOTINC],
      x.[DEPR2106] AS [DEPR2106],
      x.[SCHCOTHI] AS [SCHCOTHI],
      x.[SCHCHOME] AS [SCHCHOME],
      x.[SCHCAMRT] AS [SCHCAMRT],
      x.[GAIN479] AS [GAIN479],
      x.[NOTE6252] AS [NOTE6252],
      x.[CONT6252] AS [CONT6252],
      x.[PRIN6252] AS [PRIN6252],
      x.[E_ROYALY] AS [E_ROYALY],
      x.[E_RNTROY] AS [E_RNTROY],
      x.[E_XBDEPR] AS [E_XBDEPR],
      x.[E_AMORT] AS [E_AMORT],
      x.[E_IMITICL] AS [E_IMITICL],
      x.[F_ONCOOP] AS [F_ONCOOP],
      x.[F_OTHINC] AS [F_OTHINC],
      x.[F_AMORTL] AS [F_AMORTL],
      x.[F_USHOME] AS [F_USHOME],
      x.[NINL1065] AS [NINL1065],
      x.[GPYMT1065] AS [GPYMT1065],
      x.[K1_COND1] AS [K1_COND1],
      x.[K1_COND2] AS [K1_COND2],
      x.[K1_COND3] AS [K1_COND3],
      x.[K1_NINCL] AS [K1_NINCL],
      x.[PASS1065] AS [PASS1065],
      x.[OTHI1065] AS [OTHI1065],
      x.[DEPR1065] AS [DEPR1065],
      x.[DEPL1065] AS [DEPL1065],
      x.[AMOR1065] AS [AMOR1065],
      x.[NOTE1065] AS [NOTE1065],
      x.[MEAL1065] AS [MEAL1065],
      x.[SUB_1065] AS [SUB_1065],
      x.[OWNPERC] AS [OWNPERC],
      x.[PARTTOTL] AS [PARTTOTL],
      x.[C_NRECUR] AS [C_NRECUR],
      x.[C_AMORTL] AS [C_AMORTL],
      x.[C_MEALET] AS [C_MEALET],
      x.[B_RECURG] AS [B_RECURG],
      x.[B_OTHINC] AS [B_OTHINC],
      x.[B_AMORTL] AS [B_AMORTL],
      x.[B_NOLASD] AS [B_NOLASD],
      x.[B_MEALET] AS [B_MEALET],
      x.[EGAINLOS] AS [EGAINLOS],
      x.[CON11065] AS [CON11065],
      x.[CON21065] AS [CON21065],
      x.[CON31065] AS [CON31065],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[E_DEPLET] AS [E_DEPLET]
   FROM [clt_NetO].[SEIA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
