-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwARMINFO]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[FLOOR] AS [FLOOR],
      x.[CEILING] AS [CEILING],
      x.[MARGIN] AS [MARGIN],
      x.[FRCD] AS [FRCD],
      x.[FPCD] AS [FPCD],
      x.[NRCD] AS [NRCD],
      x.[NPCD] AS [NPCD],
      x.[CNVTIBLE] AS [CNVTIBLE],
      x.[RRCODE] AS [RRCODE],
      x.[PIRCF] AS [PIRCF],
      x.[PIRC] AS [PIRC],
      x.[PIRCRDF] AS [PIRCRDF],
      x.[PPCF] AS [PPCF],
      x.[PPC] AS [PPC],
      x.[PPCRDF] AS [PPCRDF],
      x.[PMTINCR] AS [PMTINCR],
      x.[BALLDATE] AS [BALLDATE],
      x.[IDX] AS [IDX],
      x.[PMTCOPT] AS [PMTCOPT],
      x.[GEMINC] AS [GEMINC],
      x.[GPMINC] AS [GPMINC],
      x.[EQUALINC] AS [EQUALINC],
      x.[OPTMAN] AS [OPTMAN],
      x.[RTROUND] AS [RTROUND],
      x.[RNDPERC] AS [RNDPERC],
      x.[EQPCINC] AS [EQPCINC],
      x.[RATEDCS] AS [RATEDCS],
      x.[RATEDCD] AS [RATEDCD],
      x.[RATEDCHK] AS [RATEDCHK],
      x.[BASEMGN] AS [BASEMGN],
      x.[BASECEIL] AS [BASECEIL],
      x.[BASEFLR] AS [BASEFLR],
      x.[FIR] AS [FIR],
      x.[MAXRTCAP] AS [MAXRTCAP],
      x.[PFRA] AS [PFRA],
      x.[PSRA] AS [PSRA],
      x.[PPPA] AS [PPPA],
      x.[NEGAMCAP] AS [NEGAMCAP],
      x.[RCASTTRM] AS [RCASTTRM],
      x.[IDXOVERRIDE] AS [IDXOVERRIDE],
      x.[MAROVERRIDE] AS [MAROVERRIDE],
      x.[CEILOVERRIDE] AS [CEILOVERRIDE],
      x.[FLROVERRIDE] AS [FLROVERRIDE],
      x.[ORIGIDXDT] AS [ORIGIDXDT],
      x.[CURRIDXDT] AS [CURRIDXDT],
      x.[IDXDTOVERRIDE] AS [IDXDTOVERRIDE],
      x.[RTCAPSUBS] AS [RTCAPSUBS],
      x.[MINRTCAP] AS [MINRTCAP],
      x.[BASEIDX] AS [BASEIDX],
      x.[MAXFIRSTDEC] AS [MAXFIRSTDEC],
      x.[MAXSUBSDEC] AS [MAXSUBSDEC],
      x.[MAXPMTDEC] AS [MAXPMTDEC],
      x.[CEILFCTR] AS [CEILFCTR],
      x.[FLOORFCTR] AS [FLOORFCTR],
      x.[USEOVERRIDE] AS [USEOVERRIDE],
      x.[RTCAPFIRST_OVRD] AS [RTCAPFIRST_OVRD],
      x.[RTCAPSUBS_OVRD] AS [RTCAPSUBS_OVRD],
      x.[MAXFIRSTDEC_OVRD] AS [MAXFIRSTDEC_OVRD],
      x.[MAXSUBSDEC_OVRD] AS [MAXSUBSDEC_OVRD],
      x.[MAXRTCAP_OVRD] AS [MAXRTCAP_OVRD],
      x.[MINRTCAP_OVRD] AS [MINRTCAP_OVRD],
      x.[MAXPMTINC_OVRD] AS [MAXPMTINC_OVRD],
      x.[MAXPMTDEC_OVRD] AS [MAXPMTDEC_OVRD],
      x.[NEGAMCAP_OVRD] AS [NEGAMCAP_OVRD],
      x.[PFRA_OVRD] AS [PFRA_OVRD],
      x.[PSRA_OVRD] AS [PSRA_OVRD],
      x.[PPPA_OVRD] AS [PPPA_OVRD],
      x.[RCASTTRM_OVRD] AS [RCASTTRM_OVRD],
      x.[CEILINGTYPE_OVRD] AS [CEILINGTYPE_OVRD],
      x.[FLOORTYPE_OVRD] AS [FLOORTYPE_OVRD],
      x.[RATEROUND_OVRD] AS [RATEROUND_OVRD],
      x.[PFPADJ_OVRD] AS [PFPADJ_OVRD],
      x.[PFPADJ] AS [PFPADJ],
      x.[INTONLYPD] AS [INTONLYPD],
      x.[INDEX_DATE] AS [INDEX_DATE],
      x.[CURDIVSR] AS [CURDIVSR],
      x.[IDXDIVSR] AS [IDXDIVSR],
      x.[MAX_1ST_ADJ_RATE] AS [MAX_1ST_ADJ_RATE],
      x.[MIN_1ST_ADJ_RATE] AS [MIN_1ST_ADJ_RATE],
      x.[FIR_MAX_MONTHLY_AMT] AS [FIR_MAX_MONTHLY_AMT],
      x.[S_FRE_INDEX_TYPE] AS [S_FRE_INDEX_TYPE],
      A0.[Descript] AS [S_FRE_INDEX_TYPE_X],
      x.[S_FNM_INDEX_TYPE] AS [S_FNM_INDEX_TYPE],
      A1.[Descript] AS [S_FNM_INDEX_TYPE_X]
   FROM [clt_NetO].[ARMINFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_FRE_INDEX_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'ARMINFO' and A0.[COLUMNNAME] = 'S_FRE_INDEX_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_FNM_INDEX_TYPE] = A1.[DBSYMBOL] AND A1.[TableName] = 'ARMINFO' and A1.[COLUMNNAME] = 'S_FNM_INDEX_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
