-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwSEIA]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[TAXYEAR],
      x.[METHOD],
      x.[CNTR],
      x.[DBID],
      x.[CTR],
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
      HASHBYTES('SHA2_256', CAST(x.[W2INCORP] AS NVARCHAR(50))) AS [W2INCORP],
      x.[ADJGRINC],
      HASHBYTES('SHA2_256', CAST(x.[WAGSALRY] AS NVARCHAR(50))) AS [WAGSALRY],
      HASHBYTES('SHA2_256', CAST(x.[TAXINTIN] AS NVARCHAR(50))) AS [TAXINTIN],
      HASHBYTES('SHA2_256', CAST(x.[TAXEXMIN] AS NVARCHAR(50))) AS [TAXEXMIN],
      x.[DIVNDINC],
      x.[TAXREFND],
      HASHBYTES('SHA2_256', CAST(x.[ALIMONY] AS NVARCHAR(50))) AS [ALIMONY],
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
      HASHBYTES('SHA2_256', CAST(x.[ALIMNYPD] AS NVARCHAR(50))) AS [ALIMNYPD],
      x.[UNREBREX],
      x.[AMORTIZT],
      HASHBYTES('SHA2_256', CAST(x.[A_TOTAL] AS NVARCHAR(50))) AS [A_TOTAL],
      HASHBYTES('SHA2_256', CAST(x.[B_TAXINC] AS NVARCHAR(50))) AS [B_TAXINC],
      HASHBYTES('SHA2_256', CAST(x.[B_TOTTAX] AS NVARCHAR(50))) AS [B_TOTTAX],
      x.[B_DEPRET],
      x.[B_DEPLET],
      x.[B_MORTNB],
      HASHBYTES('SHA2_256', CAST(x.[B_SUBT_1] AS NVARCHAR(50))) AS [B_SUBT_1],
      HASHBYTES('SHA2_256', CAST(x.[B_PEROWN] AS NVARCHAR(50))) AS [B_PEROWN],
      HASHBYTES('SHA2_256', CAST(x.[B_SUBT_2] AS NVARCHAR(50))) AS [B_SUBT_2],
      x.[B_DIVIDN],
      HASHBYTES('SHA2_256', CAST(x.[B_TOTAL] AS NVARCHAR(50))) AS [B_TOTAL],
      x.[C_DEPRET],
      x.[C_DEPLET],
      x.[C_MORTNB],
      x.[C_SUBT_1],
      x.[C_PEROWN],
      x.[C_TOTAL],
      x.[SALARY],
      HASHBYTES('SHA2_256', CAST(x.[ADDBACK] AS NVARCHAR(50))) AS [ADDBACK],
      x.[D_PEROWN],
      x.[D_SUBT_1],
      x.[D_NETPRF],
      x.[D_PERON2],
      x.[D_SUBT_2],
      x.[D_TOTAL],
      x.[NOMONTHS],
      x.[MNTHAVRG],
      x.[TOTINC],
      HASHBYTES('SHA2_256', CAST(x.[DEPR2106] AS NVARCHAR(50))) AS [DEPR2106],
      x.[SCHCOTHI],
      x.[SCHCHOME],
      x.[SCHCAMRT],
      x.[GAIN479],
      x.[NOTE6252],
      x.[CONT6252],
      HASHBYTES('SHA2_256', CAST(x.[PRIN6252] AS NVARCHAR(50))) AS [PRIN6252],
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
      HASHBYTES('SHA2_256', CAST(x.[DEPR1065] AS NVARCHAR(50))) AS [DEPR1065],
      HASHBYTES('SHA2_256', CAST(x.[DEPL1065] AS NVARCHAR(50))) AS [DEPL1065],
      x.[AMOR1065],
      x.[NOTE1065],
      x.[MEAL1065],
      x.[SUB_1065],
      HASHBYTES('SHA2_256', CAST(x.[OWNPERC] AS NVARCHAR(50))) AS [OWNPERC],
      x.[PARTTOTL],
      x.[C_NRECUR],
      x.[C_AMORTL],
      x.[C_MEALET],
      HASHBYTES('SHA2_256', CAST(x.[B_RECURG] AS NVARCHAR(50))) AS [B_RECURG],
      HASHBYTES('SHA2_256', CAST(x.[B_OTHINC] AS NVARCHAR(50))) AS [B_OTHINC],
      x.[B_AMORTL],
      HASHBYTES('SHA2_256', CAST(x.[B_NOLASD] AS NVARCHAR(50))) AS [B_NOLASD],
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