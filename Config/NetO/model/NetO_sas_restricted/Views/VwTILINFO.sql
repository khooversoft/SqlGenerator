-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwTILINFO]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[INITDISC] AS [INITDISC],
      x.[REQITEM] AS [REQITEM],
      x.[AREQDEP] AS [AREQDEP],
      x.[DASSUM] AS [DASSUM],
      x.[ASSUMBLE] AS [ASSUMBLE],
      x.[RQPRPINS] AS [RQPRPINS],
      x.[INSTERM] AS [INSTERM],
      x.[FEESTAXS] AS [FEESTAXS],
      x.[ALLOWDYS] AS [ALLOWDYS],
      x.[LTCHG] AS [LTCHG],
      x.[MINLTCHG] AS [MINLTCHG],
      x.[MAXLTCHG] AS [MAXLTCHG],
      x.[RFNDFCHG] AS [RFNDFCHG],
      x.[SECINRST] AS [SECINRST],
      x.[RQMTGINS] AS [RQMTGINS],
      x.[COLLSN] AS [COLLSN],
      x.[PRPOWNSN] AS [PRPOWNSN],
      x.[PRPOWNDB] AS [PRPOWNDB],
      x.[MLIFPREM] AS [MLIFPREM],
      x.[MLIFTERM] AS [MLIFTERM],
      x.[MDISPREM] AS [MDISPREM],
      x.[MDISTERM] AS [MDISTERM],
      x.[MLDPREM] AS [MLDPREM],
      x.[MLDTERM] AS [MLDTERM],
      x.[LATECHGFLAG] AS [LATECHGFLAG],
      x.[ESTDISC] AS [ESTDISC],
      x.[COLLDBID] AS [COLLDBID],
      x.[YIELDDT] AS [YIELDDT],
      x.[COMP_APR] AS [COMP_APR],
      x.[TTLINSPMT] AS [TTLINSPMT],
      x.[PREPYPEN] AS [PREPYPEN],
      x.[LENDOWN] AS [LENDOWN],
      x.[DSCMIPMT] AS [DSCMIPMT],
      x.[CLCOMPNY] AS [CLCOMPNY],
      x.[INSURED] AS [INSURED],
      x.[LAMTOVR] AS [LAMTOVR],
      x.[FEESOVR] AS [FEESOVR],
      x.[PERLAOVR] AS [PERLAOVR],
      x.[APROVR] AS [APROVR],
      x.[HOEPARES] AS [HOEPARES],
      x.[PPPTYPE] AS [PPPTYPE],
      x.[DISINTRST] AS [DISINTRST],
      x.[APR] AS [APR],
      x.[DEMANDF] AS [DEMANDF],
      x.[ASSUME_BEGIN_DATE] AS [ASSUME_BEGIN_DATE],
      x.[ASSUME_TERM_MONTHS] AS [ASSUME_TERM_MONTHS],
      x.[ASSUMABLE_DESC] AS [ASSUMABLE_DESC],
      x.[JOINLIFETRM] AS [JOINLIFETRM],
      x.[JOINLIFEPRM] AS [JOINLIFEPRM],
      x.[REDISCLOSE_IND] AS [REDISCLOSE_IND],
      x.[SECINTPRC] AS [SECINTPRC],
      x.[SECINTOWN] AS [SECINTOWN],
      x.[SECINTOTH] AS [SECINTOTH],
      x.[S_LATECHARGETYPE] AS [S_LATECHARGETYPE],
      x.[S_PPPOPT] AS [S_PPPOPT],
      x.[PMMS_RATE] AS [PMMS_RATE],
      x.[LOCK_REDISCLOSE_IND] AS [LOCK_REDISCLOSE_IND],
      x.[S_TIL2011_OVRD] AS [S_TIL2011_OVRD],
      x.[FLAT_AMT] AS [FLAT_AMT],
      x.[BPRESOTHPRGS] AS [BPRESOTHPRGS],
      x.[DISCLOSE_APR] AS [DISCLOSE_APR],
      x.[CD_NEG_AMINFO] AS [CD_NEG_AMINFO],
      x.[CD_PAR_PAYINFO] AS [CD_PAR_PAYINFO],
      x.[CD_PAR_PAYINFO_A] AS [CD_PAR_PAYINFO_A],
      x.[CD_PAR_PAYINFO_H] AS [CD_PAR_PAYINFO_H],
      x.[FINANCE_CHARGE] AS [FINANCE_CHARGE],
      x.[TOTAL_OF_PMTS] AS [TOTAL_OF_PMTS],
      x.[ESTIMATE_ESCROW] AS [ESTIMATE_ESCROW],
      x.[AMT_FINANCED] AS [AMT_FINANCED],
      x.[HIGHCOSTLOAN] AS [HIGHCOSTLOAN],
      x.[MAPR] AS [MAPR],
      x.[OTHER_LOAN_FEATURE] AS [OTHER_LOAN_FEATURE],
      x.[OTHER_LOAN_FEATURES_DESC] AS [OTHER_LOAN_FEATURES_DESC],
      x.[GOODS_PURCHASED] AS [GOODS_PURCHASED],
      x.[PERSONAL_PROPERTY] AS [PERSONAL_PROPERTY],
      x.[PRESENT_SHARES] AS [PRESENT_SHARES],
      x.[OTHER_COLLATERAL] AS [OTHER_COLLATERAL]
   FROM [clt_NetO].[TILINFO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
