-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwSEIA]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[TAXYEAR],
      x.[METHOD],
      x.[CNTR],
      x.[SCHCPRFT],
      x.[SCHCDEPL],
      x.[SCHCDEPR],
      x.[SCHCPERD],
      x.[SCHDGAIN],
      x.[SCHFPRFT],
      x.[SCHFDEPR],
      x.[K1_1065],
      x.[K1_1120S],
      x.[EXPN2106],
      x.[W2INCORP],
      x.[ADJGRINC],
      x.[WAGSALRY],
      x.[TAXINTIN],
      x.[TAXEXMIN],
      x.[DIVNDINC],
      x.[TAXREFND],
      x.[ALIMONY],
      x.[GAINRLOS],
      x.[IRADISTB],
      x.[PENSANNU],
      x.[SCDEDEPR],
      x.[UNEMPCOM],
      x.[SSBENEFT],
      x.[ODESC1],
      x.[OAMOUNT1],
      x.[ODESC2],
      x.[OAMOUNT2],
      x.[OATOTAL],
      x.[INCSECTL],
      x.[IRADEDUC],
      x.[HALFSETX],
      x.[SEHEALTH],
      x.[KEOGHRET],
      x.[EARLYPEN],
      x.[ALIMNYPD],
      x.[UNREBREX],
      x.[AMORTIZT],
      x.[A_TOTAL],
      x.[B_TAXINC],
      x.[B_TOTTAX],
      x.[B_DEPRET],
      x.[B_DEPLET],
      x.[B_MORTNB],
      x.[B_SUBT_1],
      x.[B_PEROWN],
      x.[B_SUBT_2],
      x.[B_DIVIDN],
      x.[B_TOTAL],
      x.[C_DEPRET],
      x.[C_DEPLET],
      x.[C_MORTNB],
      x.[C_SUBT_1],
      x.[C_PEROWN],
      x.[C_TOTAL],
      x.[SALARY],
      x.[ADDBACK],
      x.[D_PEROWN],
      x.[D_SUBT_1],
      x.[D_NETPRF],
      x.[D_PERON2],
      x.[D_SUBT_2],
      x.[D_TOTAL],
      x.[NOMONTHS],
      x.[MNTHAVRG],
      x.[DBID],
      x.[CTR],
      x.[TOTINC],
      x.[DEPR2106],
      x.[SCHCOTHI],
      x.[SCHCHOME],
      x.[SCHCAMRT],
      x.[GAIN479],
      x.[NOTE6252],
      x.[CONT6252],
      x.[PRIN6252],
      x.[E_ROYALY],
      x.[E_RNTROY],
      x.[E_XBDEPR],
      x.[E_AMORT],
      x.[E_IMITICL],
      x.[F_ONCOOP],
      x.[F_OTHINC],
      x.[F_AMORTL],
      x.[F_USHOME],
      x.[NINL1065],
      x.[GPYMT1065],
      x.[K1_COND1],
      x.[K1_COND2],
      x.[K1_COND3],
      x.[K1_NINCL],
      x.[PASS1065],
      x.[OTHI1065],
      x.[DEPR1065],
      x.[DEPL1065],
      x.[AMOR1065],
      x.[NOTE1065],
      x.[MEAL1065],
      x.[SUB_1065],
      x.[OWNPERC],
      x.[PARTTOTL],
      x.[C_NRECUR],
      x.[C_AMORTL],
      x.[C_MEALET],
      x.[B_RECURG],
      x.[B_OTHINC],
      x.[B_AMORTL],
      x.[B_NOLASD],
      x.[B_MEALET],
      x.[EGAINLOS],
      x.[CON11065],
      x.[CON21065],
      x.[CON31065],
      x.[RECORD_CREATED],
      x.[E_DEPLET]
   FROM [clt_NetO].[SEIA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
