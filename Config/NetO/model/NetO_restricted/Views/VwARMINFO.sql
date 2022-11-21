-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwARMINFO]
AS
   SELECT
      x.[LNUM],
      x.[FLOOR],
      x.[CEILING],
      x.[MARGIN],
      x.[FRCD],
      x.[FPCD],
      x.[NRCD],
      x.[NPCD],
      x.[CNVTIBLE],
      x.[RRCODE],
      x.[PIRCF],
      x.[PIRC],
      x.[PIRCRDF],
      x.[PPCF],
      x.[PPC],
      x.[PPCRDF],
      x.[PMTINCR],
      x.[BALLDATE],
      x.[IDX],
      x.[PMTCOPT],
      x.[GEMINC],
      x.[GPMINC],
      x.[EQUALINC],
      x.[OPTMAN],
      x.[RTROUND],
      x.[RNDPERC],
      x.[EQPCINC],
      x.[RATEDCS],
      x.[RATEDCD],
      x.[RATEDCHK],
      x.[BASEMGN],
      x.[BASECEIL],
      x.[BASEFLR],
      x.[FIR],
      x.[MAXRTCAP],
      x.[PFRA],
      x.[PSRA],
      x.[PPPA],
      x.[NEGAMCAP],
      x.[RCASTTRM],
      x.[IDXOVERRIDE],
      x.[MAROVERRIDE],
      x.[CEILOVERRIDE],
      x.[FLROVERRIDE],
      x.[ORIGIDXDT],
      x.[CURRIDXDT],
      x.[IDXDTOVERRIDE],
      x.[RTCAPSUBS],
      x.[MINRTCAP],
      x.[BASEIDX],
      x.[MAXFIRSTDEC],
      x.[MAXSUBSDEC],
      x.[MAXPMTDEC],
      x.[CEILFCTR],
      x.[FLOORFCTR],
      x.[USEOVERRIDE],
      x.[RTCAPFIRST_OVRD],
      x.[RTCAPSUBS_OVRD],
      x.[MAXFIRSTDEC_OVRD],
      x.[MAXSUBSDEC_OVRD],
      x.[MAXRTCAP_OVRD],
      x.[MINRTCAP_OVRD],
      x.[MAXPMTINC_OVRD],
      x.[MAXPMTDEC_OVRD],
      x.[NEGAMCAP_OVRD],
      x.[PFRA_OVRD],
      x.[PSRA_OVRD],
      x.[PPPA_OVRD],
      x.[RCASTTRM_OVRD],
      x.[CEILINGTYPE_OVRD],
      x.[FLOORTYPE_OVRD],
      x.[RATEROUND_OVRD],
      x.[PFPADJ_OVRD],
      x.[PFPADJ],
      x.[INTONLYPD],
      x.[INDEX_DATE],
      x.[CURDIVSR],
      x.[IDXDIVSR],
      x.[MAX_1ST_ADJ_RATE],
      x.[MIN_1ST_ADJ_RATE],
      x.[FIR_MAX_MONTHLY_AMT],
      x.[S_FRE_INDEX_TYPE],
      A0.Descript AS [S_FRE_INDEX_TYPE_Description],
      x.[S_FNM_INDEX_TYPE],
      A1.Descript AS [S_FNM_INDEX_TYPE_Description]
   FROM [clt_NetO].[ARMINFO] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_FRE_INDEX_TYPE = A0.DBSYMBOL AND A0.[TableName] = 'ARMINFO' and A0.[COLUMNNAME] = 'S_FRE_INDEX_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_FNM_INDEX_TYPE = A1.DBSYMBOL AND A1.[TableName] = 'ARMINFO' and A1.[COLUMNNAME] = 'S_FNM_INDEX_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
