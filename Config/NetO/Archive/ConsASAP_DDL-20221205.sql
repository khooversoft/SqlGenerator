-- CREATE TABLE 
----------------
CREATE TABLE [dbo].[ADV_ACTN]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[NOFILE]	nchar(1)	NULL,

	[INSUFFCR]	nchar(1)	NULL,

	[INSUFFLE]	nchar(1)	NULL,

	[GARNISH]	nchar(1)	NULL,

	[EXCSVOBL]	nchar(1)	NULL,

	[PAYMTUNA]	nchar(1)	NULL,

	[CASHLACK]	nchar(1)	NULL,

	[BANKRUPT]	nchar(1)	NULL,

	[DELCRDOB]	nchar(1)	NULL,

	[VRFYCRDT]	nchar(1)	NULL,

	[POORCRED]	nchar(1)	NULL,

	[CRDTREF]	nchar(1)	NULL,

	[LIMCRDT]	nchar(1)	NULL,

	[VRFYEMPL]	nchar(1)	NULL,

	[EMPLENG]	nchar(1)	NULL,

	[EMPLTEMP]	nchar(1)	NULL,

	[INSUFINC]	nchar(1)	NULL,

	[VRFYINCM]	nchar(1)	NULL,

	[INCEXCIN]	nchar(1)	NULL,

	[TEMPRES]	nchar(1)	NULL,

	[RESLENG]	nchar(1)	NULL,

	[VRFYRES]	nchar(1)	NULL,

	[DENY_HUD]	nchar(1)	NULL,

	[DENY_VA]	nchar(1)	NULL,

	[DENYFNMA]	nchar(1)	NULL,

	[DENFHLMC]	nchar(1)	NULL,

	[DENOTHR1]	nchar(1)	NULL,

	[DENOTH1D]	nvarchar(40)	NULL,

	[INSUFFND]	nchar(1)	NULL,

	[APPINCMP]	nchar(1)	NULL,

	[COLLSUFF]	nchar(1)	NULL,

	[CLT_PROP]	nchar(1)	NULL,

	[CLT_DATA]	nchar(1)	NULL,

	[CLT_APRL]	nchar(1)	NULL,

	[CLT_LEAS]	nchar(1)	NULL,

	[NOCREDIT]	nchar(1)	NULL,

	[NOCRDT_D]	nvarchar(19)	NULL,

	[OTHERBX1]	nchar(1)	NULL,

	[OTHRBX1D]	nvarchar(80)	NULL,

	[OTSDSOUR]	nchar(1)	NULL,

	[INFOBTND]	nchar(1)	NULL,

	[CRDT_OTH]	nchar(1)	NULL,

	[CRDTAGY1]	nvarchar(25)	NULL,

	[CRDT1AD1]	nvarchar(35)	NULL,

	[CRDT1AD2]	nvarchar(35)	NULL,

	[CRDTCTY1]	nvarchar(25)	NULL,

	[CRDTST1]	nvarchar(2)	NULL,

	[CRDTZIP1]	nvarchar(10)	NULL,

	[CRDTPH1]	nvarchar(11)	NULL,

	[CRDTAGY2]	nvarchar(25)	NULL,

	[CRDT2AD1]	nvarchar(35)	NULL,

	[CRDT2AD2]	nvarchar(35)	NULL,

	[CRDTCTY2]	nvarchar(25)	NULL,

	[CRDTST2]	nvarchar(2)	NULL,

	[CRDTZIP2]	nvarchar(10)	NULL,

	[CRDTPH2]	nvarchar(11)	NULL,

	[CRDTAGY3]	nvarchar(25)	NULL,

	[CRDT3AD1]	nvarchar(35)	NULL,

	[CRDT3AD2]	nvarchar(35)	NULL,

	[CRDTCTY3]	nvarchar(25)	NULL,

	[CRDTST3]	nvarchar(2)	NULL,

	[CRDTZIP3]	nvarchar(10)	NULL,

	[CRDTPH3]	nvarchar(11)	NULL,

	[ACTNSN]	int	NULL,

	[ACTNDBID]	nvarchar(5)	NULL,

	[CRDTTF1]	nvarchar(11)	NULL,

	[COLLECTION]	nchar(1)	NULL,

	[FORECLOSURE]	nchar(1)	NULL,

	[OTHER2]	nchar(1)	NULL,

	[OTHER3]	nchar(1)	NULL,

	[OTHER4]	nchar(1)	NULL,

	[OTHER5]	nchar(1)	NULL,

	[OTHER2DESC]	nvarchar(80)	NULL,

	[OTHER3DESC]	nvarchar(80)	NULL,

	[OTHER4DESC]	nvarchar(80)	NULL,

	[OTHER5DESC]	nvarchar(80)	NULL,

	[CREDIT_INQUIRIES]	nchar(1)	NULL,

	[MAILED]	nchar(1)	NULL,

	[EMAILED]	nchar(1)	NULL,

	[DELIVERED]	nchar(1)	NULL,

	[INCAPPDBID]	nchar(5)	NULL,

	[INCAPPSERNO]	int	NULL,

	[APP_WITHDRAWN]	nchar(1)	NULL,

	[NEVER_ON_REQ_TERMS]	nchar(1)	NULL,

	[OVRDCRDTAGY1]	nvarchar(25)	NULL,

	[OVRDCRDT1AD1]	nvarchar(35)	NULL,

	[OVRDCRDT1AD2]	nvarchar(35)	NULL,

	[OVRDCRDTCTY1]	nvarchar(25)	NULL,

	[OVRDCRDTST1]	nvarchar(2)	NULL,

	[OVRDCRDTPH1]	nvarchar(11)	NULL,

	[OVRDCRDTZIP1]	nvarchar(10)	NULL,

	[MTGINSDECLINED]	nchar(1)	NULL,

	[CTL_LOCORCOND]	nchar(1)	NULL,

	[CTL_LENSPFICPOL]	nvarchar(250)	NULL,

	[REVBALHIGH]	nchar(1)	NULL,

	[EXCESSOBLIG]	nchar(1)	NULL,

	[IDVERIFY]	nchar(1)	NULL,

	[NEWOBLIG]	nchar(1)	NULL,

	[NOTELIGCUMEMBER]	nchar(1)	NULL,

CONSTRAINT [PK_ADV_ACTN] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[APPREQ]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NULL,

	[SERIALNO]	int	NULL,

	[LOTDIM1]	decimal(16,6)	NULL,

	[LOTDIM2]	decimal(16,6)	NULL,

	[IRREGLR]	nchar(1)	NULL,

	[IRRGDSC]	nvarchar(20)	NULL,

	[SQRFEET]	decimal(16,6)	NULL,

	[ACREAGE]	decimal(16,6)	NULL,

	[ELECUTL]	nchar(1)	NULL,

	[GASUTL]	nchar(1)	NULL,

	[WATRUTL]	nchar(1)	NULL,

	[SANUTL]	nchar(1)	NULL,

	[TTLLIMTS]	nvarchar(40)	NULL,

	[STACCESS]	nchar(1)	NULL,

	[STMAINT]	nchar(1)	NULL,

	[RANGE]	nchar(1)	NULL,

	[FRIDGE]	nchar(1)	NULL,

	[DISHWASH]	nchar(1)	NULL,

	[CLTHWASH]	nchar(1)	NULL,

	[DRYER]	nchar(1)	NULL,

	[DISPOSAL]	nchar(1)	NULL,

	[VENTFAN]	nchar(1)	NULL,

	[WWCARPET]	nchar(1)	NULL,

	[OTHEREQP]	nchar(1)	NULL,

	[OEQPDESC]	nvarchar(20)	NULL,

	[BLDSTAT]	nchar(1)	NULL,

	[BLDTYPE]	nchar(1)	NULL,

	[COMPINSP]	nchar(1)	NULL,

	[PLANS]	nchar(1)	NULL,

	[WARINC]	nchar(1)	NULL,

	[WARNAME]	nvarchar(20)	NULL,

	[EXPDATE]	datetime	NULL,

	[CNSTVRF]	nchar(1)	NULL,

	[CNSTCOMP]	datetime	NULL,

	[BLDGNUM]	int	NULL,

	[MINRITES]	nchar(1)	NULL,

	[PROPOCC]	nvarchar(15)	NULL,

	[OWNRNAME]	nvarchar(20)	NULL,

	[MNTHRENT]	decimal(18,3)	NULL,

	[OCCNAME]	nvarchar(20)	NULL,

	[HOMEPHN]	nvarchar(10)	NULL,

	[BUSPHONE]	nvarchar(14)	NULL,

	[KEYSAT]	nvarchar(40)	NULL,

	[TIMAVAIL]	nvarchar(15)	NULL,

	[AMPMINSP]	nchar(1)	NULL,

	[LEASEIS]	nvarchar(15)	NULL,

	[ANNRENT]	decimal(18,3)	NULL,

	[VACONTNO]	nvarchar(20)	NULL,

	[PURCHSEP]	nchar(1)	NULL,

	[CONATT]	nchar(1)	NULL,

	[FACTORY]	nchar(1)	NULL,

	[PLANNO]	nvarchar(20)	NULL,

	[ESTATE]	nchar(1)	NULL,

	[FLOODDESC]	nvarchar(10)	NULL,

	[FLOODFLAG]	nchar(1)	NULL,

	[WARADDR]	nvarchar(40)	NULL,

	[WARPHONE]	nvarchar(14)	NULL,

	[MINEXPLAN]	nvarchar(20)	NULL,

	[ORIGID]	nvarchar(20)	NULL,

	[SPONSID]	nvarchar(20)	NULL,

	[INSTCASE]	nvarchar(20)	NULL,

	[BRKNAME]	nvarchar(20)	NULL,

	[BRKHPHN]	nvarchar(10)	NULL,

	[BRKBPHN]	nvarchar(14)	NULL,

	[SECNUM]	nvarchar(50)	NULL,

	[ASSGNDT]	datetime	NULL,

	[WARADDR2]	nvarchar(40)	NULL,

	[WARCITY]	nvarchar(40)	NULL,

	[WARSTATE]	nchar(2)	NULL,

	[WARZIP]	nvarchar(10)	NULL,

	[APPR_B2G_LIC_TYPE]	nvarchar(8)	NULL,

CONSTRAINT [PK_APPREQ] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[ARMINFO]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[FLOOR]	decimal(16,6)	NULL,

	[CEILING]	decimal(16,6)	NULL,

	[MARGIN]	decimal(16,6)	NULL,

	[FRCD]	datetime	NULL,

	[FPCD]	datetime	NULL,

	[NRCD]	datetime	NULL,

	[NPCD]	datetime	NULL,

	[CNVTIBLE]	nchar(1)	NULL,

	[RRCODE]	nchar(1)	NULL,

	[PIRCF]	nchar(1)	NULL,

	[PIRC]	decimal(16,6)	NULL,

	[PIRCRDF]	nchar(1)	NULL,

	[PPCF]	nchar(1)	NULL,

	[PPC]	decimal(18,3)	NULL,

	[PPCRDF]	decimal(16,6)	NULL,

	[PMTINCR]	decimal(16,6)	NULL,

	[BALLDATE]	datetime	NULL,

	[IDX]	decimal(16,6)	NULL,

	[PMTCOPT]	nchar(1)	NULL,

	[GEMINC]	decimal(18,3)	NULL,

	[GPMINC]	decimal(18,3)	NULL,

	[EQUALINC]	decimal(16,6)	NULL,

	[OPTMAN]	nchar(1)	NULL,

	[RTROUND]	nchar(1)	NULL,

	[RNDPERC]	decimal(16,6)	NULL,

	[EQPCINC]	decimal(16,6)	NULL,

	[RATEDCS]	int	NULL,

	[RATEDCD]	nvarchar(5)	NULL,

	[RATEDCHK]	nchar(1)	NULL,

	[BASEMGN]	decimal(16,6)	NULL,

	[BASECEIL]	decimal(16,6)	NULL,

	[BASEFLR]	decimal(16,6)	NULL,

	[FIR]	decimal(16,6)	NULL,

	[MAXRTCAP]	decimal(16,6)	NULL,

	[PFRA]	smallint	NULL,

	[PSRA]	smallint	NULL,

	[PPPA]	smallint	NULL,

	[NEGAMCAP]	decimal(16,6)	NULL,

	[RCASTTRM]	smallint	NULL,

	[IDXOVERRIDE]	decimal(16,6)	NULL,

	[MAROVERRIDE]	decimal(16,6)	NULL,

	[CEILOVERRIDE]	decimal(16,6)	NULL,

	[FLROVERRIDE]	decimal(16,6)	NULL,

	[ORIGIDXDT]	datetime	NULL,

	[CURRIDXDT]	datetime	NULL,

	[IDXDTOVERRIDE]	datetime	NULL,

	[RTCAPSUBS]	decimal(16,6)	NULL,

	[MINRTCAP]	decimal(16,6)	NULL,

	[BASEIDX]	decimal(16,6)	NULL,

	[MAXFIRSTDEC]	decimal(16,6)	NULL,

	[MAXSUBSDEC]	decimal(16,6)	NULL,

	[MAXPMTDEC]	decimal(16,6)	NULL,

	[CEILFCTR]	decimal(16,6)	NULL,

	[FLOORFCTR]	decimal(16,6)	NULL,

	[USEOVERRIDE]	nchar(1)	NULL,

	[RTCAPFIRST_OVRD]	decimal(16,6)	NULL,

	[RTCAPSUBS_OVRD]	decimal(16,6)	NULL,

	[MAXFIRSTDEC_OVRD]	decimal(16,6)	NULL,

	[MAXSUBSDEC_OVRD]	decimal(16,6)	NULL,

	[MAXRTCAP_OVRD]	decimal(16,6)	NULL,

	[MINRTCAP_OVRD]	decimal(16,6)	NULL,

	[MAXPMTINC_OVRD]	decimal(18,3)	NULL,

	[MAXPMTDEC_OVRD]	decimal(18,3)	NULL,

	[NEGAMCAP_OVRD]	decimal(16,6)	NULL,

	[PFRA_OVRD]	int	NULL,

	[PSRA_OVRD]	int	NULL,

	[PPPA_OVRD]	int	NULL,

	[RCASTTRM_OVRD]	int	NULL,

	[CEILINGTYPE_OVRD]	nvarchar(20)	NULL,

	[FLOORTYPE_OVRD]	nvarchar(20)	NULL,

	[RATEROUND_OVRD]	nchar(1)	NULL,

	[PFPADJ_OVRD]	int	NULL,

	[PFPADJ]	int	NULL,

	[INTONLYPD]	int	NULL,

	[INDEX_DATE]	datetime	NULL,

	[CURDIVSR]	decimal(16,6)	NULL,

	[IDXDIVSR]	decimal(16,6)	NULL,

	[MAX_1ST_ADJ_RATE]	decimal(16,6)	NULL,

	[MIN_1ST_ADJ_RATE]	decimal(16,6)	NULL,

	[FIR_MAX_MONTHLY_AMT]	decimal(18,3)	NULL,

	[S_FRE_INDEX_TYPE]	nvarchar(8)	NULL,

	[S_FNM_INDEX_TYPE]	nvarchar(8)	NULL,

CONSTRAINT [PK_ARMINFO] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[ASSETS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ASSETCTR]	smallint	NOT NULL,

	[S_ASSET]	nvarchar(8)	NULL,

	[ASSETDSC]	nvarchar(100)	NULL,

	[ACCTNUM]	nvarchar(35)	NULL,

	[HOLDER]	nvarchar(30)	NULL,

	[HADDR1]	nvarchar(35)	NULL,

	[HADDR2]	nvarchar(35)	NULL,

	[HCITY]	nvarchar(25)	NULL,

	[HSTATE]	nchar(2)	NULL,

	[HZIP]	nvarchar(10)	NULL,

	[HPHONE]	nvarchar(11)	NULL,

	[HEXT]	nvarchar(5)	NULL,

	[HFAX]	nvarchar(11)	NULL,

	[ATTNOF]	nvarchar(30)	NULL,

	[ACCTBAL]	decimal(18,3)	NULL,

	[ACCTIN]	nvarchar(30)	NULL,

	[LIFEFACE]	decimal(18,3)	NULL,

	[VERIFY]	nchar(1)	NULL,

	[ISSUER]	nvarchar(30)	NULL,

	[SHARES]	decimal(16,6)	NULL,

	[DIVIDEND]	decimal(18,3)	NULL,

	[OMIT]	nchar(1)	NULL,

	[ASSETVERIFIED]	nchar(1)	NULL,

	[AUTO_MAKE_DESC]	nvarchar(80)	NULL,

	[AUTO_MODEL_YEAR]	nvarchar(4)	NULL,

	[OTHERASSETTYPEDESC]	nvarchar(80)	NULL,

	[HCOUNTRY]	nvarchar(35)	NULL,

	[ATS_ACCOUNT]	nchar(1)	NULL,

	[ODP_ACCOUNT]	nchar(1)	NULL,

	[ASSET_VERIFI_TYPE]	nvarchar(8)	NULL,

	[ASSET_VERI_TYPE_DESC]	nvarchar(80)	NULL,

	[ORDER_CHECK]	nchar(1)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[FORMFREE_CTR]	int	NULL,

	[BUILDER_EARNEST]	nchar(1)	NULL,

	[ASSET_INDICATOR]	nchar(1)	NULL,

	[S_ACCOUNT_OWNERSHIP]	nvarchar(8)	NULL,

	[S_GIFT_PRVDR_TYPE]	nvarchar(8)	NULL,

	[GIFT_PRVDR_OTH_DESC]	nvarchar(80)	NULL,

	[GIFT_DEPOSIT_STATUS]	nchar(1)	NULL,

CONSTRAINT [PK_ASSETS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ASSETCTR]

	)
);
CREATE TABLE [dbo].[ASSOCDOCS]	( 

	[S_SUNDCON]	nvarchar(8)	NOT NULL,

	[CNTR]	int	NOT NULL,

	[S_ASSOCDOC]	nvarchar(8)	NULL,

	[SRCENV]	nvarchar(5)	NULL,

	[REC_CUSTOM]	nchar(1)	NULL,

	[CREATE_DATE]	datetime	NULL,

	[MODIFY_DATE]	datetime	NULL,

CONSTRAINT [PK_ASSOCDOCS] PRIMARY KEY CLUSTERED (

	  [S_SUNDCON]

	, [CNTR]

	)
);
CREATE TABLE [dbo].[BORDEP]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[AGES]	nvarchar(50)	NULL,

	[AGENCY]	nvarchar(25)	NULL,

	[CONTACT]	nvarchar(25)	NULL,

	[COST]	decimal(16,6)	NULL,

	[PAYFLAG]	nchar(1)	NULL,

	[NOPYDBID]	nchar(5)	NULL,

	[NOPAYSN]	int	NULL,

	[AGYADD1]	nvarchar(35)	NULL,

	[AGYADD2]	nvarchar(35)	NULL,

	[AGYCITY]	nvarchar(25)	NULL,

	[AGYSTATE]	nchar(2)	NULL,

	[AGYZIP]	nvarchar(10)	NULL,

CONSTRAINT [PK_BORDEP] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	)
);
CREATE TABLE [dbo].[BORROWER]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[FNAME]	nvarchar(250)	NULL,

	[MNAME]	nvarchar(30)	NULL,

	[LNAME]	nvarchar(30)	NULL,

	[SSNBR]	nvarchar(11)	NULL,

	[AGE]	smallint	NULL,

	[YRSSCHL]	smallint	NULL,

	[S_MARITL]	nvarchar(8)	NULL,

	[FRNINFO]	nchar(1)	NULL,

	[GENDER]	nvarchar(8)	NULL,

	[NUMDEP]	smallint	NULL,

	[DEPAGES]	nvarchar(20)	NULL,

	[ADDR1]	nvarchar(100)	NULL,

	[ADDR2]	nvarchar(100)	NULL,

	[CITY]	nvarchar(25)	NULL,

	[STATE]	nchar(2)	NULL,

	[ZIP]	nvarchar(10)	NULL,

	[YRSPADDR]	decimal(16,6)	NULL,

	[HPHONE]	nvarchar(11)	NULL,

	[PRIMARYB]	nchar(1)	NULL,

	[APPNUMB]	smallint	NULL,

	[FIRSTBUY]	nchar(1)	NULL,

	[S_OWNSHP]	nvarchar(8)	NULL,

	[VOR_ACCT]	nvarchar(20)	NULL,

	[VOR_NAME]	nvarchar(35)	NULL,

	[OTHINCM]	nchar(1)	NULL,

	[COMMUNTY]	nchar(1)	NULL,

	[JOINTLY]	nchar(1)	NULL,

	[DOB]	datetime	NULL,

	[S_BORTYP]	nvarchar(8)	NULL,

	[ALIASES]	nvarchar(25)	NULL,

	[S_VESTNG]	nvarchar(8)	NULL,

	[PRTENTTL]	nchar(1)	NULL,

	[PARTNOTE]	nchar(1)	NULL,

	[COUNTY]	nvarchar(35)	NULL,

	[CITYFLAG]	nchar(1)	NULL,

	[MARBOR]	smallint	NULL,

	[COUNTRY]	nvarchar(35)	NULL,

	[RACEDESC]	nvarchar(20)	NULL,

	[CAIVR1]	nvarchar(20)	NULL,

	[CAIVR2]	nvarchar(20)	NULL,

	[LDPGSA1]	nvarchar(20)	NULL,

	[LDPGSA2]	nvarchar(20)	NULL,

	[POAFLAG]	nchar(1)	NULL,

	[ALISDBID]	nchar(5)	NULL,

	[ALSERNUM]	int	NULL,

	[WPHONE]	nvarchar(11)	NULL,

	[EMAIL]	nvarchar(128)	NULL,

	[FAXNUM]	nvarchar(11)	NULL,

	[CANADIAN_SSN]	nvarchar(10)	NULL,

	[NAME_SUFFIX]	nvarchar(5)	NULL,

	[B_1098_IDN]	nchar(1)	NULL,

	[QUAL_INCOME]	decimal(16,6)	NULL,

	[BOR_TIN]	nvarchar(15)	NULL,

	[UNPARSED_NAME]	nvarchar(250)	NULL,

	[AFFIL_SHARE_IND]	nchar(1)	NULL,

	[SSN_CERTIFICATION_IND]	nchar(1)	NULL,

	[PHONE_ALLOWED_IND]	nchar(1)	NULL,

	[EMAIL_ALLOWED_IND]	nchar(1)	NULL,

	[US_MAIL_ALLOWED_IND]	nchar(1)	NULL,

	[CARRIER_ROUTE]	nvarchar(10)	NULL,

	[OVERALL_CRED_SCORE]	int	NULL,

	[OVERALL_CRED_SCORE_OVR]	int	NULL,

	[CORP_SIGNATURE]	nvarchar(120)	NULL,

	[INCBASEEMPTOTAL]	decimal(16,6)	NULL,

	[INCSELFEMPTOTAL]	decimal(16,6)	NULL,

	[INCOVERTIMETOTAL]	decimal(16,6)	NULL,

	[INCBONUSTOTAL]	decimal(16,6)	NULL,

	[INCCOMMISTOTAL]	decimal(16,6)	NULL,

	[INCDIVDTOTAL]	decimal(16,6)	NULL,

	[INCNETRENTOTAL]	decimal(16,6)	NULL,

	[ATCASHDEPOSITTOTAL]	decimal(16,6)	NULL,

	[ATCHECKSAVINGSTOTAL]	decimal(16,6)	NULL,

	[ATSTOCKBONDTOTAL]	decimal(16,6)	NULL,

	[ATLIFEINSNETTOTAL]	decimal(16,6)	NULL,

	[ATOTHLIQUIDTOTAL]	decimal(16,6)	NULL,

	[ATREOTOTAL]	decimal(16,6)	NULL,

	[ATVESTEDINTTOTAL]	decimal(16,6)	NULL,

	[ATNETWORTHTOTAL]	decimal(16,6)	NULL,

	[ATAUTOMOBILE]	decimal(16,6)	NULL,

	[ATOTHNONLIQTOTAL]	decimal(16,6)	NULL,

	[INCOTHERTOTAL]	decimal(16,6)	NULL,

	[ATLIFEINSFACEAMTTOTAL]	decimal(18,3)	NULL,

	[ATASSETSTOTAL]	decimal(18,3)	NULL,

	[LTALIMONYCSSMPTOTAL]	decimal(18,3)	NULL,

	[LTJOBRELATEDEXPTOTAL]	decimal(18,3)	NULL,

	[LTLIABILITIESTOTAL]	decimal(18,3)	NULL,

	[LTMONTHLYPAYMNTTOTAL]	decimal(18,3)	NULL,

	[REOGROSSRENTINCTOTAL]	decimal(18,3)	NULL,

	[REOMORTANDLIENTOTAL]	decimal(18,3)	NULL,

	[REOMORTGAGEPAYMNTTOTAL]	decimal(18,3)	NULL,

	[REOTAXMAINTMISCTOTAL]	decimal(18,3)	NULL,

	[URLANETWORTH]	decimal(16,6)	NULL,

	[ELEC_DISC_CONSENT]	datetime	NULL,

	[ELEC_DISC_WITHDRAW]	datetime	NULL,

	[S_IVMETH]	nvarchar(8)	NULL,

	[ATALLLIQUIDTOTAL]	decimal(18,3)	NULL,

	[ATGIFTTOTAL]	decimal(18,3)	NULL,

	[ATREONETPROCEEDSTOTAL]	decimal(18,3)	NULL,

	[BORROWED_DWNPMT_AMT]	decimal(18,3)	NULL,

	[LTNONSUBJDEBTMOTOTAL]	decimal(18,3)	NULL,

	[LTNONSUBJPAYOFFTOTAL]	decimal(18,3)	NULL,

	[S_CBSOURCE]	nvarchar(8)	NULL,

	[VETERAN]	nchar(1)	NULL,

	[ENTITLEMENT]	nchar(1)	NULL,

	[LDP_NUMBER]	nvarchar(20)	NULL,

	[GSA_NUMBER]	nvarchar(20)	NULL,

	[FOREIGN_NATIONAL]	nchar(1)	NULL,

	[COUNTRY_OF_INCORP]	nvarchar(20)	NULL,

	[EIN]	nvarchar(20)	NULL,

	[NLR_NAME]	nvarchar(30)	NULL,

	[NLR_REL_DESC]	nvarchar(20)	NULL,

	[NLR_PHONE]	nchar(11)	NULL,

	[NLR_ADDR1]	nvarchar(35)	NULL,

	[NLR_ADDR2]	nvarchar(35)	NULL,

	[NLR_CITY]	nvarchar(25)	NULL,

	[NLR_STATE]	nchar(2)	NULL,

	[NLR_POSTALCODE]	nchar(10)	NULL,

	[EXEMPTSSN]	nchar(1)	NULL,

	[FHA_CLASSIFICATION]	nvarchar(8)	NULL,

	[LDP_YN]	nchar(1)	NULL,

	[GSA_YN]	nchar(1)	NULL,

	[OVERALL_CS_SOURCE]	nvarchar(35)	NULL,

	[DISPLAY_NAME]	nvarchar(250)	NULL,

	[NON_INDIV_BORR_NAME]	nvarchar(250)	NULL,

	[S_LEGAL_ENTITY_TYPE]	nvarchar(8)	NULL,

	[S_LEGAL_ENTITY_TYP_OTH]	nvarchar(8)	NULL,

	[ULDD_TAXPAYER_ID]	nvarchar(9)	NULL,

	[INCLUDE_IN_PROFORMA]	nchar(1)	NULL,

	[FADDR_INDICATOR]	nchar(1)	NULL,

	[DBA_NAME]	nvarchar(45)	NULL,

	[STATE_OF_INCORP]	nchar(2)	NULL,

	[INMILITARY]	nchar(1)	NULL,

	[BORRDISABLD]	nchar(1)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[HUD_APPROVED]	nchar(2)	NULL,

	[VERIFYSSN]	nchar(1)	NULL,

	[BORR_CS_RANK_PERCENT]	int	NULL,

	[YRS_AT_PRSNT]	int	NULL,

	[MNTHS_AT_PRSNT]	int	NULL,

	[BORR_COVERED]	nchar(1)	NULL,

	[S_COV_BORR_STATUS]	nvarchar(8)	NULL,

	[BORR_VERBDISC]	nchar(1)	NULL,

	[MLACERTID]	nvarchar(50)	NULL,

	[S_BOR_UNIT_TYPE]	nvarchar(8)	NULL,

	[BOR_UNIT_NUM]	nvarchar(12)	NULL,

	[BOR_COUNTRY]	nvarchar(35)	NULL,

	[BOR_COUNTRY_CODE]	nvarchar(3)	NULL,

	[BORR_QUAL_INC_SOURCE]	nchar(1)	NULL,

	[CREDIT_SCORE_MODEL]	nvarchar(25)	NULL,

	[CREDITSCORE_MODEL_OTHDESC]	nvarchar(100)	NULL,

	[BORR_FRAUD_SCORE]	int	NULL,

	[FURNISH_GENDER_INFO_YN]	nchar(1)	NULL,

	[COLLD_BY_OBSRVTION_GENDER_YN]	nchar(1)	NULL,

	[COLLD_BY_OBSRVTION_RACE_YN]	nchar(1)	NULL,

	[COLLD_BY_OBSRVTION_ETH_YN]	nchar(1)	NULL,

	[SEX_MALE]	nchar(1)	NULL,

	[SEX_FEMALE]	nchar(1)	NULL,

	[COPIED_MAIL_ADDRESS]	nchar(1)	NULL,

	[CHECK_ALIAS]	nchar(1)	NULL,

	[S_PARTY_TYPE]	nvarchar(8)	NULL,

	[S_CITIZENSHIP]	nvarchar(8)	NULL,

	[S_UNMARRIED]	nvarchar(8)	NULL,

	[ATTR_PORTAL_REG]	nchar(1)	NULL,

	[ATTR_COUNSELING_REQUIRED]	nchar(1)	NULL,

	[ATTR_CHILD_CARE]	nchar(1)	NULL,

	[ATTR_GUARANTOR]	nchar(1)	NULL,

	[ATTR_GUARDIANSHIP]	nchar(1)	NULL,

	[ATTR_SOLE_PROPRIETOR]	nchar(1)	NULL,

	[S_UNMARRIED_RLTNSHIP]	nvarchar(8)	NULL,

	[UNMARRIED_RLTNSHIP_STATE]	nvarchar(2)	NULL,

	[UNMARRIED_RLTNSHIP_OTHERDESC]	nvarchar(128)	NULL,

	[RETIRED_BORROWER]	nchar(1)	NULL,

	[BOR_STATE_FOREIGN]	nvarchar(35)	NULL,

	[BOR_POSTCODE]	nvarchar(12)	NULL,

	[COUNTRY_OF_INCORP_CODE]	nvarchar(12)	NULL,

	[EMAIL_CONSENT]	nchar(1)	NULL,

	[SMS_CONSENT]	nchar(1)	NULL,

	[OVERALL_CS_SOURCE_OVR]	nvarchar(35)	NULL,

	[IS_DEALER_EMPLOYEE]	nchar(1)	NULL,

	[LIVE_RENT_FREE_ENUMS]	nvarchar(8)	NULL,

CONSTRAINT [PK_BORROWER] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	)
);
CREATE TABLE [dbo].[CONSREFI]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ORIGCOST]	decimal(18,3)	NULL,

	[AMTEXLN]	decimal(18,3)	NULL,

	[PRESVAL]	decimal(18,3)	NULL,

	[CSTIMPRO]	decimal(18,3)	NULL,

	[IMPDESC]	nvarchar(80)	NULL,

	[S_REFPRP]	nvarchar(8)	NULL,

	[IMPMADE]	nchar(1)	NULL,

	[LOTACQUR]	datetime	NULL,

	[REFIIMP]	decimal(18,3)	NULL,

	[CASHAMT]	decimal(18,3)	NULL,

	[S_GSE_REFINANCE_PURPOSE]	nvarchar(8)	NULL,

	[S_CONST_PERM_CLOSING]	nvarchar(8)	NULL,

	[INTERNREFI]	nchar(1)	NULL,

	[ORIG_INVESTOR_LOAN_NBR]	nvarchar(30)	NULL,

	[S_ORIG_INVESTOR]	nvarchar(8)	NULL,

	[OTHER_INVESTOR_DESC]	nvarchar(50)	NULL,

	[OTHERGSEREFIPURPTYPEDESC]	nvarchar(80)	NULL,

	[REPLACE_EXIST_CONSTR_LOAN]	nchar(1)	NULL,

	[FIR_MAX_MONTHLY_AMT]	int	NULL,

	[PREVIOUS_REFI_MONTHS]	int	NULL,

	[CO_REFI_PURCH_CONST]	nchar(1)	NULL,

	[S_CONST_PERM_FEATURE]	nvarchar(8)	NULL,

	[S_FNM_REFI_PGM]	nvarchar(8)	NULL,

	[S_FRE_REFI_PGM]	nvarchar(8)	NULL,

	[LIMIT_DESC]	nvarchar(80)	NULL,

	[REFI_LOAN_ACCT_NBR]	nvarchar(20)	NULL,

CONSTRAINT [PK_CONSREFI] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[DATES]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DOCDATE]	datetime	NULL,

	[CANCLDAT]	datetime	NULL,

	[LNMODDAT]	datetime	NULL,

	[SALCONDT]	datetime	NULL,

	[RETDOCDT]	datetime	NULL,

	[LNFUNDAT]	datetime	NULL,

	[ASSIGNDT]	datetime	NULL,

	[APPDATE]	datetime	NULL,

	[QUALFYDT]	datetime	NULL,

	[APPRVLDT]	datetime	NULL,

	[INSPCTDT]	datetime	NULL,

	[APPRLISS]	datetime	NULL,

	[APPRLEXP]	datetime	NULL,

	[TTLRPTDT]	datetime	NULL,

	[SURVEYDT]	datetime	NULL,

	[DENIALDT]	datetime	NULL,

	[COMMBEG]	datetime	NULL,

	[COMMEND]	datetime	NULL,

	[RECDATE]	datetime	NULL,

	[REMMITDT]	datetime	NULL,

	[OCCPYDT]	datetime	NULL,

	[DISCDATE]	datetime	NULL,

	[PURCHDT]	datetime	NULL,

	[DTCLOS_E]	datetime	NULL,

	[SUBDT]	datetime	NULL,

	[PREQUAL]	datetime	NULL,

	[UNDER]	datetime	NULL,

	[FULLPACK]	datetime	NULL,

	[SENTUNDER]	datetime	NULL,

	[AUDIT_DATE]	datetime	NULL,

	[SUBAUDIT]	datetime	NULL,

	[FILEUNDER]	datetime	NULL,

	[FILEREC]	datetime	NULL,

	[MISC1DATE]	datetime	NULL,

	[MISC2DATE]	datetime	NULL,

	[MISC3DATE]	datetime	NULL,

	[MISC4DATE]	datetime	NULL,

	[MISC5DATE]	datetime	NULL,

	[MISC6DATE]	datetime	NULL,

	[MISC7DATE]	datetime	NULL,

	[MISC8DATE]	datetime	NULL,

	[MISC9DATE]	datetime	NULL,

	[MISC10DTE]	datetime	NULL,

	[ESTFUND]	datetime	NULL,

	[THREEDAY]	datetime	NULL,

	[RECEIVE]	datetime	NULL,

	[SEC32_SIGN_DATE]	datetime	NULL,

	[APPREFFDT]	datetime	NULL,

	[BRKRSUBMISSIONDATE]	datetime	NULL,

	[NOI_GEN_DATE]	datetime	NULL,

	[NOISENTDATE]	datetime	NULL,

	[NOISTARTDATE]	datetime	NULL,

	[NOISTARTDT_OVR]	datetime	NULL,

	[NOIENDDATE]	datetime	NULL,

	[LAST_LOAN_CLOSE_DT]	datetime	NULL,

	[COMMBEGDTOVR]	datetime	NULL,

	[COMMENDDTOVR]	datetime	NULL,

	[CREDITDECISIONSTARTDATE]	datetime	NULL,

	[CREDITDECISIONCLOCKEND]	datetime	NULL,

	[CRDTDECSTRTDTOVERR]	datetime	NULL,

	[NOI_LETTER_EXPIRE_DATE]	datetime	NULL,

	[TITLE_POLICYDATE]	datetime	NULL,

	[HUD_REVIEWDATE]	datetime	NULL,

	[FILE_RECVD_PC]	datetime	NULL,

	[LAST_DOC_REC_DATE]	datetime	NULL,

	[USDA_OBLIGATION_DT]	datetime	NULL,

	[NOTICE_OF_SALE]	datetime	NULL,

	[LAST_CONTACT_DATE]	datetime	NULL,

	[HO_PLCY_RCVD]	datetime	NULL,

	[SELLER_ACQUIRED]	datetime	NULL,

	[FINALAPRDT]	datetime	NULL,

	[CONDTNLETRDT]	datetime	NULL,

	[MRC_RECORDED_DATE]	datetime	NULL,

	[MERS_MIN_TRNSFD_DATE]	datetime	NULL,

	[SENT_INSURER_DATE]	datetime	NULL,

	[PC_DOCS_RVWD_DATE]	datetime	NULL,

	[INS_FEE_PAID_DATE]	datetime	NULL,

	[INS_CNFMD_DATE]	datetime	NULL,

	[PRICE_EFFECTIVE_DATE]	datetime	NULL,

	[SERVCND_PAIDOFF_DT]	datetime	NULL,

	[SERVCNG_RELEASED_DT]	datetime	NULL,

	[REPURCH_DT]	datetime	NULL,

	[GOODBYE_LTR_DT]	datetime	NULL,

	[INDEMNF_DT]	datetime	NULL,

	[DT_FLOOD_NTB_MAILED]	datetime	NULL,

	[APPRLEXP_OVR_DT]	datetime	NULL,

	[CONTRACT_SETTLEMENT_DT]	datetime	NULL,

	[DOCSRETBYDT]	datetime	NULL,

CONSTRAINT [PK_DATES] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[DECLRTN]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[JUDGMENT]	nchar(1)	NULL,

	[A_DBID]	nchar(5)	NULL,

	[A_SERIAL]	int	NULL,

	[BANKRUPT]	nchar(1)	NULL,

	[B_DBID]	nchar(5)	NULL,

	[B_SERIAL]	int	NULL,

	[FORECLOS]	nchar(1)	NULL,

	[C_DBID]	nchar(5)	NULL,

	[C_SERIAL]	int	NULL,

	[LAWSUIT]	nchar(1)	NULL,

	[D_DBID]	nchar(5)	NULL,

	[D_SERIAL]	int	NULL,

	[OBLIGATE]	nchar(1)	NULL,

	[E_DBID]	nchar(5)	NULL,

	[E_SERIAL]	int	NULL,

	[DELINQNT]	nchar(1)	NULL,

	[F_DBID]	nchar(5)	NULL,

	[F_SERIAL]	int	NULL,

	[ALIMONY]	nchar(1)	NULL,

	[G_DBID]	nchar(5)	NULL,

	[G_SERIAL]	int	NULL,

	[BORROWED]	nchar(1)	NULL,

	[H_DBID]	nchar(5)	NULL,

	[H_SERIAL]	int	NULL,

	[COMAKER]	nchar(1)	NULL,

	[I_DBID]	nchar(5)	NULL,

	[I_SERIAL]	int	NULL,

	[CITIZEN]	nchar(1)	NULL,

	[J_DBID]	nchar(5)	NULL,

	[J_SERIAL]	int	NULL,

	[ALIEN]	nchar(1)	NULL,

	[K_DBID]	nchar(5)	NULL,

	[K_SERIAL]	int	NULL,

	[OCCUPY]	nchar(1)	NULL,

	[L_DBID]	nchar(5)	NULL,

	[L_SERIAL]	int	NULL,

	[OWNRSHIP]	nchar(1)	NULL,

	[M_DBID]	nchar(5)	NULL,

	[M_SERIAL]	int	NULL,

	[S_PRPTYP]	nvarchar(8)	NULL,

	[S_TITLE]	nvarchar(8)	NULL,

	[BNKRPT_DISCHARGE_MOS]	smallint	NULL,

	[FORECLOSURE_MOS]	smallint	NULL,

	[NON_PERMANENT_RESIDENT_ALIEN]	nchar(1)	NULL,

	[JUDGMENT_NOTES]	nvarchar(1024)	NULL,

	[BANKRUPT_NOTES]	nvarchar(1024)	NULL,

	[FORECLOS_NOTES]	nvarchar(1024)	NULL,

	[LAWSUIT_NOTES]	nvarchar(1024)	NULL,

	[OBLIGATE_NOTES]	nvarchar(1024)	NULL,

	[DELINQNT_NOTES]	nvarchar(1024)	NULL,

	[ALIMONY_NOTES]	nvarchar(1024)	NULL,

	[BORROWED_NOTES]	nvarchar(1024)	NULL,

	[COMAKER_NOTES]	nvarchar(1024)	NULL,

	[CITIZEN_NOTES]	nvarchar(1024)	NULL,

	[ALIEN_NOTES]	nvarchar(1024)	NULL,

	[OCCUPY_NOTES]	nvarchar(1024)	NULL,

	[OWNRSHIP_NOTES]	nvarchar(1024)	NULL,

	[AFFILIATION]	nchar(1)	NULL,

	[DOWNPMT_BORR_AMT]	decimal(16,3)	NULL,

	[INSTALLMENT_LOAN]	nchar(1)	NULL,

	[MORTGAGE_LOAN]	nchar(1)	NULL,

	[PROPTAXES]	nchar(1)	NULL,

	[SHORT_SALE]	nchar(1)	NULL,

	[PROPFORECLOSE]	nchar(1)	NULL,

	[S_BANKRUPTCY_TYPE]	nvarchar(8)	NULL,

	[PREFORECLOS_NOTES]	nvarchar(1024)	NULL,

	[PROPFORECL_NOTES]	nvarchar(1024)	NULL,

	[PRIMRESID_NOTES]	nvarchar(1024)	NULL,

	[OWNERINTRST_NOTES]	nvarchar(1024)	NULL,

	[MORTGAGELN_NOTES]	nvarchar(1024)	NULL,

	[NEWCREDIT_NOTES]	nvarchar(1024)	NULL,

	[AFFILIATION_NOTES]	nvarchar(1024)	NULL,

	[PROPERTYTAXES_NOTES]	nvarchar(1024)	NULL,

	[CHAPTER7_CHK]	nvarchar(1)	NULL,

	[CHAPTER12_CHK]	nvarchar(1)	NULL,

	[CHAPTER13_CHK]	nvarchar(1)	NULL,

	[CHAPTER11_CHK]	nvarchar(1)	NULL,

	[OUTSTANJUDGE_EXTCIRCUM]	nchar(1)	NULL,

	[OUTSTANJUDGE_INCINFORM]	nchar(1)	NULL,

	[DELINQUENT_DEBT_EXTCIRCUM]	nchar(1)	NULL,

	[DELINQUENT_DEBT_INCINFORM]	nchar(1)	NULL,

	[FORECLOSURE_EXTCIRCUM]	nchar(1)	NULL,

	[FORECLOSURE_INCINFORM]	nchar(1)	NULL,

	[SHORTSALE_EXTCIRCUM]	nchar(1)	NULL,

	[SHORTSALE_INCINFORM]	nchar(1)	NULL,

	[PROPERTYFORCLOSE_EXTCIRCUM]	nchar(1)	NULL,

	[PROPERTYFORCLOSE_INCINFORM]	nchar(1)	NULL,

	[DECBANKRUPTCY_EXTCIRCUM]	nchar(1)	NULL,

	[DECBANKRUPTCY_INCINFORM]	nchar(1)	NULL,

	[FHA_SECOND_RESID_IND]	nchar(1)	NULL,

CONSTRAINT [PK_DECLRTN] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	)
);
CREATE TABLE [dbo].[DELIVERY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[COMNUM]	nvarchar(10)	NULL,

	[CONTRACT]	nvarchar(10)	NULL,

	[COMTYPE]	nchar(1)	NULL,

	[SELLNUM]	nvarchar(10)	NULL,

	[NUMBED1]	smallint	NULL,

	[NUMBED2]	smallint	NULL,

	[NUMBED3]	smallint	NULL,

	[NUMBED4]	smallint	NULL,

	[RENTS1]	decimal(18,3)	NULL,

	[RENTS2]	decimal(18,3)	NULL,

	[RENTS3]	decimal(18,3)	NULL,

	[RENTS4]	decimal(18,3)	NULL,

	[S_SPF1]	nvarchar(8)	NULL,

	[S_SPF2]	nvarchar(8)	NULL,

	[S_SPF3]	nvarchar(8)	NULL,

	[S_SPF4]	nvarchar(8)	NULL,

	[S_SPF5]	nvarchar(8)	NULL,

	[S_SPF6]	nvarchar(8)	NULL,

	[ASSUM]	nchar(1)	NULL,

	[RDF]	nchar(1)	NULL,

	[INTPD]	datetime	NULL,

	[MATDATE]	datetime	NULL,

	[S_SFSRC1]	nvarchar(8)	NULL,

	[S_SFSRC2]	nvarchar(8)	NULL,

	[SFAMT1]	decimal(18,3)	NULL,

	[SFAMT2]	decimal(18,3)	NULL,

	[S_BECA1]	nvarchar(8)	NULL,

	[S_BECA2]	nvarchar(8)	NULL,

	[S_BECF1]	nvarchar(8)	NULL,

	[S_BECF2]	nvarchar(8)	NULL,

	[S_DPSRC1]	nvarchar(8)	NULL,

	[S_DPSRC2]	nvarchar(8)	NULL,

	[S_DPSRC3]	nvarchar(8)	NULL,

	[S_DPSRC4]	nvarchar(8)	NULL,

	[DPAMT1]	decimal(18,3)	NULL,

	[DPAMT2]	decimal(18,3)	NULL,

	[DPAMT3]	decimal(18,3)	NULL,

	[DPAMT4]	decimal(18,3)	NULL,

	[S_CCSRC1]	nvarchar(8)	NULL,

	[S_CCSRC2]	nvarchar(8)	NULL,

	[S_CCSRC3]	nvarchar(8)	NULL,

	[S_CCSRC4]	nvarchar(8)	NULL,

	[CCAMT1]	decimal(18,3)	NULL,

	[CCAMT2]	decimal(18,3)	NULL,

	[CCAMT3]	decimal(18,3)	NULL,

	[CCAMT4]	decimal(18,3)	NULL,

	[MICOV]	decimal(16,6)	NULL,

	[UPB]	decimal(18,3)	NULL,

	[S_LFC]	nvarchar(8)	NULL,

	[INTEND]	datetime	NULL,

	[LPID]	datetime	NULL,

	[INTONLY]	nchar(1)	NULL,

	[LOOKBACK]	smallint	NULL,

	[NETNEGAM]	decimal(16,6)	NULL,

	[S_RFC]	nvarchar(8)	NULL,

	[UWNAME]	nvarchar(30)	NULL,

	[INVLNUM]	nvarchar(14)	NULL,

	[MTGORIG]	nchar(1)	NULL,

	[TP1]	nvarchar(25)	NULL,

	[TP2]	nvarchar(25)	NULL,

	[MAXTERM]	smallint	NULL,

	[SELLER]	nvarchar(8)	NULL,

	[CID_SELLER_AGENT]	int	NULL,

	[S_SPF7]	nvarchar(8)	NULL,

	[S_SPF8]	nvarchar(8)	NULL,

	[S_SPF9]	nvarchar(8)	NULL,

	[S_SPF10]	nvarchar(8)	NULL,

	[UPBO]	decimal(18,3)	NULL,

	[ESCROW_ACCT_BALANCE]	decimal(18,3)	NULL,

	[ESCROW_PYMT_AMT]	decimal(18,3)	NULL,

	[NEXTPMTDUEDATE]	datetime	NULL,

	[APPR_DOC_ID]	nvarchar(20)	NULL,

	[READY_FOR_DELIVERY]	nchar(1)	NULL,

	[S_INT_ACCRUAL_TYPE]	nvarchar(8)	NULL,

	[S_INT_CALC_BASIS_TYPE]	nvarchar(8)	NULL,

	[INT_CALC_EFF_MONTHS]	int	NULL,

	[S_INT_CALC_PERIOD]	nvarchar(8)	NULL,

	[S_INT_CALC_METHOD]	nvarchar(8)	NULL,

	[LOAN_DELIV_GSE]	nchar(1)	NULL,

	[LTV_RATIO_PCT]	decimal(16,6)	NULL,

	[S_FNM_HOME_IMP_PROD]	nvarchar(8)	NULL,

	[ADJ_LOAN_AMT]	decimal(18,3)	NULL,

	[ADJ_LOAN_AMT_OVRD]	decimal(18,3)	NULL,

	[APPR_DOC_ID_OVER]	nvarchar(20)	NULL,

	[MLADISCCOMPLETE]	nchar(1)	NULL,

	[S_SIGNDOCPUSHBACK]	nvarchar(8)	NULL,

	[MI_CANCELLED]	nchar(1)	NULL,

	[HFA_IDENTIFIER]	nvarchar(7)	NULL,

CONSTRAINT [PK_DELIVERY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[DENIAL]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[APPRGUIDE]	nchar(1)	NULL,

	[APPRINCON]	nchar(1)	NULL,

	[APPRCOMP]	nchar(1)	NULL,

	[APPRUNACC]	nchar(1)	NULL,

	[APPRRATIO]	nchar(1)	NULL,

	[APPROTHR]	nchar(1)	NULL,

	[APPRREASN]	nvarchar(80)	NULL,

	[CRDHISTRY]	nchar(1)	NULL,

	[BANKRPTCY]	nchar(1)	NULL,

	[PYMTPRES]	nchar(1)	NULL,

	[PYMTPREV]	nchar(1)	NULL,

	[CRDEXPLAN]	nchar(1)	NULL,

	[NONCRD]	nchar(1)	NULL,

	[OBLIGATN]	nchar(1)	NULL,

	[CRDOTHR]	nchar(1)	NULL,

	[CRDREASN]	nvarchar(80)	NULL,

	[IRREGEMP]	nchar(1)	NULL,

	[ESTINC]	nchar(1)	NULL,

	[STABLEINC]	nchar(1)	NULL,

	[EMPOTHR]	nchar(1)	NULL,

	[EMPREASN]	nvarchar(80)	NULL,

	[LIQASST]	nchar(1)	NULL,

	[CASH]	nchar(1)	NULL,

	[SECFINC]	nchar(1)	NULL,

	[ASSTOTHR]	nchar(1)	NULL,

	[ASSTREASN]	nvarchar(80)	NULL,

	[INCINSUF1]	nchar(1)	NULL,

	[INCINSUF2]	nchar(1)	NULL,

	[SHORTINC]	nchar(1)	NULL,

	[EXCESSRAT]	nchar(1)	NULL,

	[QUALOTHR]	nchar(1)	NULL,

	[QUALREASN]	nvarchar(80)	NULL,

	[APPLINCMP]	nchar(1)	NULL,

	[OTHER]	nchar(1)	NULL,

	[OTHERREASN]	nvarchar(80)	NULL,

CONSTRAINT [PK_DENIAL] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[DOWNPYMT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[DPYMTCTR]	smallint	NOT NULL,

	[S_TYPE]	nvarchar(8)	NULL,

	[AMOUNT]	decimal(18,3)	NULL,

	[NAME]	nvarchar(30)	NULL,

	[ADDR1]	nvarchar(35)	NULL,

	[ADDR2]	nvarchar(35)	NULL,

	[CITY]	nvarchar(25)	NULL,

	[STATE]	nchar(2)	NULL,

	[ZIP]	nvarchar(10)	NULL,

	[PHONE]	nvarchar(10)	NULL,

	[RELATION]	nvarchar(30)	NULL,

	[INCASS]	nchar(1)	NULL,

	[FNDGIVEN]	nchar(1)	NULL,

	[DTAVAIL]	datetime	NULL,

	[FININST]	nchar(1)	NULL,

	[ACCTNUM]	nvarchar(35)	NULL,

	[BANKNAME]	nvarchar(80)	NULL,

	[FIADDR1]	nvarchar(35)	NULL,

	[FIADDR2]	nvarchar(35)	NULL,

	[FICITY]	nvarchar(25)	NULL,

	[FISTATE]	nchar(2)	NULL,

	[FIZIP]	nvarchar(10)	NULL,

	[FIACCTYP]	nvarchar(8)	NULL,

	[VERIFYFND]	nchar(1)	NULL,

	[OTHERDOWNPAYTYPEDESC]	nvarchar(80)	NULL,

	[S_DOWN_PMT_SRC_TYP]	nvarchar(8)	NULL,

	[S_DOWN_PMT_SRC_OTH]	nvarchar(8)	NULL,

	[S_DOWN_PMT_TYP]	nvarchar(8)	NULL,

	[S_TYPE_OTH]	nvarchar(8)	NULL,

	[PRIMARY_SRC]	nchar(1)	NULL,

	[DOWNPAYMENTPERCENT]	decimal(16,6)	NULL,

	[S_DOWN_PMT_SRC]	nvarchar(8)	NULL,

	[S_TYPENM]	nvarchar(8)	NULL,

	[DOWNPAYTYPENMOTHERDESC]	nvarchar(80)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[TOTAL_GIFT_FUNDS]	decimal(18,3)	NULL,

	[ASSETCTR]	smallint	NULL,

CONSTRAINT [PK_DOWNPYMT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [DPYMTCTR]

	)
);
CREATE TABLE [dbo].[DTLTRAN]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[TRANCTR]	smallint	NOT NULL,

	[S_TRAN]	nvarchar(8)	NULL,

	[TRANDESC]	nvarchar(30)	NULL,

	[TRANAMT]	decimal(18,3)	NULL,

	[OTHERAMT]	decimal(16,6)	NULL,

	[S_PURCH_CREDIT_TYPE]	nvarchar(8)	NULL,

	[S_PURCH_SOURCE_TYPE]	nvarchar(8)	NULL,

	[OTHERPURCHCREDTYPEDESC]	nvarchar(80)	NULL,

	[OTHERPURCHSRCTYPEDESC]	nvarchar(80)	NULL,

	[MANUALAMT]	numeric(16,6)	NULL,

	[FEEAMT]	numeric(16,6)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[USE_BY_SYSTEM]	nchar(1)	NULL,

	[BUILDER_EARNEST_CREDIT]	nchar(1)	NULL,

	[EXCLOTHCREDPREP]	nchar(1)	NULL,

	[POSTCLOSE_TOLERANCECURE]	nchar(1)	NULL,

CONSTRAINT [PK_DTLTRAN] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [TRANCTR]

	)
);
CREATE TABLE [dbo].[FEEVALS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBCODE]	nvarchar(8)	NOT NULL,

	[HUDLINE]	smallint	NULL,

	[BPORTION]	decimal(18,3)	NULL,

	[SPORTION]	decimal(18,3)	NULL,

	[LPORTION]	decimal(18,3)	NULL,

	[BRPRTION]	decimal(18,3)	NULL,

	[BPOCPORT]	decimal(18,3)	NULL,

	[SPOCPORT]	decimal(18,3)	NULL,

	[NDSVCPVD]	nvarchar(8)	NULL,

	[IFACTOR]	decimal(16,6)	NULL,

	[BFACTOR]	decimal(16,6)	NULL,

	[BPOCFCTR]	decimal(16,6)	NULL,

	[SFACTOR]	decimal(16,6)	NULL,

	[SPOCFCTR]	decimal(16,6)	NULL,

	[LFACTOR]	decimal(16,6)	NULL,

	[BRFACTOR]	decimal(16,6)	NULL,

	[CALCTYPE]	nchar(1)	NULL,

	[CATEGORY]	nchar(1)	NULL,

	[INCINTOT]	nchar(1)	NULL,

	[ESCMONTH]	smallint	NULL,

	[REFERBY]	nvarchar(32)	NULL,

	[HUDDESC]	nvarchar(80)	NULL,

	[ESCITEM]	nchar(1)	NULL,

	[RATELOCK]	nchar(1)	NULL,

	[NOTEDBID]	nchar(5)	NULL,

	[NOTESERN]	int	NULL,

	[HUDALLOW]	nchar(1)	NULL,

	[WAIVDBID]	nchar(5)	NULL,

	[WAIVSERN]	int	NULL,

	[INCHUD]	nchar(1)	NULL,

	[WAIVED]	nchar(1)	NULL,

	[CSHMONTH]	smallint	NULL,

	[S_PERIOD]	nvarchar(8)	NULL,

	[TOTALATC]	decimal(18,3)	NULL,

	[INCGFE]	nchar(1)	NULL,

	[SPOVERRIDE]	nvarchar(40)	NULL,

	[TOTAL]	decimal(16,6)	NULL,

	[DIRECTBILL]	nchar(1)	NULL,

	[REFUNDABLE]	nchar(1)	NULL,

	[IAGFEVERBIAGE]	nchar(1)	NULL,

	[INCHCL]	nchar(1)	NULL,

	[CID_FEE_SRVC_PRVDR_CO]	int	NULL,

	[S_MISC_DESC]	nvarchar(8)	NULL,

	[LOCKEDYN]	nchar(1)	NULL,

	[LOCKEDTOTAL]	decimal(18,3)	NULL,

	[ISSUE_CHECK]	nchar(1)	NULL,

	[CREDIT_BACK]	nchar(1)	NULL,

	[IPORTION]	decimal(18,3)	NULL,

	[BORRCHOOSEPRVDR]	nchar(1)	NULL,

	[SUBFEE]	nchar(1)	NULL,

	[FEECODE]	nvarchar(20)	NOT NULL,

	[S_AGGTYPE]	nvarchar(8)	NULL,

	[S_RESP_PARTY]	nvarchar(8)	NULL,

	[S_PAIDBY]	nvarchar(8)	NULL,

	[S_PAIDTO]	nvarchar(8)	NULL,

	[SUBCODE]	smallint	NULL,

	[IS_NOCOST]	nchar(1)	NULL,

	[MANAGED_OVR]	nchar(1)	NULL,

	[TO_AFFILIATE]	nchar(1)	NULL,

	[S_SECTION_TYPE]	nvarchar(8)	NULL,

	[ID_SECTION_SUBTYPE]	nvarchar(80)	NULL,

	[PREPAID_MONTH]	int	NULL,

	[S_TOLERANCE_CATEGORY]	nvarchar(8)	NULL,

	[S_CHANGE_TYPE]	nvarchar(8)	NULL,

	[CHANGE_REASON]	nvarchar(80)	NULL,

	[BOROPT]	nchar(1)	NULL,

	[EXC_MAPR]	nchar(1)	NULL,

CONSTRAINT [PK_FEEVALS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBCODE]

	)
);
CREATE TABLE [dbo].[FIELD_HISTORY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[FLDNAME]	nvarchar(20)	NULL,

	[USRID]	int	NULL,

	[MODIFY_DATE]	datetime	NULL,

	[TEXT_VALUE]	nvarchar(256)	NULL,

	[P_TEXT_VALUE]	nvarchar(256)	NULL,

	[PKFIX]	int	NOT NULL,

CONSTRAINT [PK_FIELD_HISTORY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [PKFIX]

	)
);
CREATE TABLE [dbo].[FLOOD]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[INSREQ]	nchar(1)	NULL,

	[FLDZNCRT]	nchar(1)	NULL,

	[LIFELOAN]	nchar(1)	NULL,

	[DETMNNUM]	nvarchar(14)	NULL,

	[DETMNDAT]	datetime	NULL,

	[S_FIRM]	nvarchar(8)	NULL,

	[S_FLDZON]	nvarchar(8)	NULL,

	[FLDMAPDT]	datetime	NULL,

	[COMMNUMB]	nvarchar(40)	NULL,

	[SFHAREA]	nchar(1)	NULL,

	[NOTMAPD]	nchar(1)	NULL,

	[OBTNINS]	nchar(1)	NULL,

	[NOTFLOOD]	nchar(1)	NULL,

	[MAPNUMB]	nvarchar(40)	NULL,

	[NFIP_MAP_PANEL_DATE]	datetime	NULL,

	[COMMNAME]	nvarchar(50)	NULL,

CONSTRAINT [PK_FLOOD] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_AFFORDABILITY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[INCOME]	decimal(18,3)	NULL,

	[DEBTS]	decimal(18,3)	NULL,

	[TAXRATE]	decimal(16,6)	NULL,

	[HAZRATE]	decimal(16,6)	NULL,

	[CASHONHAND]	decimal(18,3)	NULL,

	[LIMITDOWNPMT]	nchar(1)	NULL,

	[PROPOSEDINTRATE]	decimal(16,6)	NULL,

	[PROPOSEDLOANTERM]	smallint	NULL,

	[PROPOSEDHOUSINGRATIO]	decimal(16,6)	NULL,

	[PROPOSEDDEBTRATIO]	decimal(16,6)	NULL,

	[AFFORDPITI]	decimal(18,3)	NULL,

	[AFFORDLOANAMT]	decimal(18,3)	NULL,

	[AFFORDSALESPRICE]	decimal(18,3)	NULL,

	[AFFORDPNTS]	decimal(16,6)	NULL,

	[AFFORDCLOSINGCOSTS]	decimal(18,3)	NULL,

CONSTRAINT [PK_GF_TL_AFFORDABILITY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_DATES]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[SEVEN_DAYS_EXP_DT]	datetime	NULL,

	[ANALYSIS_DT]	datetime	NULL,

	[APPEAL_REQ_DT]	datetime	NULL,

	[APPRAIS_ORDERED_DT]	datetime	NULL,

	[APP_DATE_OVR]	datetime	NULL,

	[ASSET_EXP_DT]	datetime	NULL,

	[BOOKED_DT]	datetime	NULL,

	[CALL_BACK_DT]	datetime	NULL,

	[CDU_DT]	datetime	NULL,

	[COMP_SALE_DT]	datetime	NULL,

	[CREDIT_DOC_DATE]	datetime	NULL,

	[CREDIT_DOC_EXP_DT]	datetime	NULL,

	[CREDIT_RPT_EXP_DT]	datetime	NULL,

	[CUTOFF_DT]	datetime	NULL,

	[DID_NOT_CLOSE_DT]	datetime	NULL,

	[DNC_SUB_DT]	datetime	NULL,

	[DOC_SIGN_DT]	datetime	NULL,

	[EST_APPR_RECEIVED_DT]	datetime	NULL,

	[FEE_EXC_DT]	datetime	NULL,

	[FEE_EXC_EXP_DT]	datetime	NULL,

	[FILE_TO_PPS_DT]	datetime	NULL,

	[GAP_LTR_DT]	datetime	NULL,

	[HCM_DISCL_DT]	datetime	NULL,

	[INCOME_DT]	datetime	NULL,

	[INCOME_EXP_DT]	datetime	NULL,

	[INIT_APPRV_DT]	datetime	NULL,

	[INIT_DEC_DT]	datetime	NULL,

	[LETTER_DT]	datetime	NULL,

	[LOCK_CALL_DT]	datetime	NULL,

	[MR_BNK_STMT_DT]	datetime	NULL,

	[MR_CONSUM_DT]	datetime	NULL,

	[MR_DISCH_DT]	datetime	NULL,

	[MR_FILING_DT]	datetime	NULL,

	[NOTE_DT]	datetime	NULL,

	[OLD_BNK_STMT_DT]	datetime	NULL,

	[PRICE_EXC_DT]	datetime	NULL,

	[PRICE_EXC_EXP_DT]	datetime	NULL,

	[RECERT_EXP_DT]	datetime	NULL,

	[REGISTER_DT]	datetime	NULL,

	[REINSTATED_DT]	datetime	NULL,

	[REMOVAL_DT]	datetime	NULL,

	[RESCIND_EXP_DT]	datetime	NULL,

	[RESCISSN_RECVD]	datetime	NULL,

	[RPTD_SALE_DT]	datetime	NULL,

	[THIRTY_DAY_GUAR_EXP_DT]	datetime	NULL,

	[TITLE_COMM_DT]	datetime	NULL,

	[TITLE_EFF_DT]	datetime	NULL,

	[TITLE_EXP_DT]	datetime	NULL,

	[TREAS_FUNDS_REC_DT]	datetime	NULL,

	[VALUATION_DT]	datetime	NULL,

	[TX_CRED_NOTICE_DT]	datetime	NULL,

	[FIRST_PYMT_DUE_INV]	datetime	NULL,

	[INIT_DISCLOSURE_DT]	datetime	NULL,

	[FINAL_DISCLOSURE_DT]	datetime	NULL,

	[RECISSION_EXP_DT]	datetime	NULL,

	[REDISCLOSE_DT]	datetime	NULL,

	[CLOSE_PKG_EXPIRE_DT]	datetime	NULL,

	[UFMIP_VAFF_WIRE_DT]	datetime	NULL,

	[DOCS_DRAWN_DATE]	datetime	NULL,

	[FILE_SUB_DATE]	datetime	NULL,

	[NOIA_DATE]	datetime	NULL,

	[ORIGINATION_DATE]	datetime	NULL,

	[PROCESSING_BEGIN_DATE]	datetime	NULL,

	[READY_FOR_DOCS_DATE]	datetime	NULL,

	[REQ_ADDTL_PROC_DATE]	datetime	NULL,

	[READY_SHIP_DATE]	datetime	NULL,

	[RESCISSION_EXP_DATE]	datetime	NULL,

	[SHIPPED_DATE]	datetime	NULL,

	[INV_FUNDED_DATE]	datetime	NULL,

	[READY_FUND_DATE]	datetime	NULL,

	[READY_UW_DATE]	datetime	NULL,

	[BORROWER_ACCEPTS_GFE]	datetime	NULL,

	[GFE_RT_GOOD_THRU_DT_OVR]	datetime	NULL,

	[GFE_EST_GOOD_THRU]	datetime	NULL,

	[FIRST_CREDIT_RPT_DT]	datetime	NULL,

	[LAST_CREDIT_RPT_DT]	datetime	NULL,

	[SUBMITDT]	datetime	NULL,

	[FINAL_DOCS_SHIPPED]	datetime	NULL,

	[REDISCLOSE_REQUIRED_DATE]	datetime	NULL,

	[GFE_EST_GOOD_THRU_DT_OVR]	datetime	NULL,

	[BROKER_DISC_DATE]	datetime	NULL,

	[CLOSINGDOCDUEDATE]	datetime	NULL,

	[GFE_REDISCLOSE_DT]	datetime	NULL,

	[TIL_REDISCLOSE_DT]	datetime	NULL,

	[TIL_REDISCLOSE_REQUIRED_DT]	datetime	NULL,

	[RECISSION_EXP_DT_OVR]	datetime	NULL,

	[COUNSEL_LIST_DT]	datetime	NULL,

	[APP_REC_BY_ORIG_DT]	datetime	NULL,

	[APP_DISCLOSURE_DT]	datetime	NULL,

	[INIT_CLOSING_DISCL_DT]	datetime	NULL,

	[FINAL_DISCLOSURE_EX]	datetime	NULL,

	[FNM_UPLOAD_DATE]	datetime	NULL,

	[BORRCOVRDEXPDT]	datetime	NULL,

	[BORRCOVRDVALDT]	datetime	NULL,

	[VERBALDISCDATE]	datetime	NULL,

	[INIT_CD_READY_DT]	datetime	NULL,

	[POST_CON_CD_DT]	datetime	NULL,

	[LOAN_EST_APPRVD]	datetime	NULL,

	[LOANREGDATE]	datetime	NULL,

	[CORRSLKDT]	datetime	NULL,

	[LENDER_DISC_DT]	datetime	NULL,

	[CONFIG_DATE]	datetime	NULL,

	[POST_CLOSE_CD_DT]	datetime	NULL,

	[REV_RE_DT]	datetime	NULL,

	[REV_LE_DT]	datetime	NULL,

	[REDISCLOSE_DUE_DATE]	datetime	NULL,

	[INITDISCLOSE_DUE_DATE]	datetime	NULL,

	[INIT_DISCLOSURE_SENT_DATE]	datetime	NULL,

	[NOTE_SHIP_WAREHSE_DT]	datetime	NULL,

	[LOAN_IMG_OFFSITE_UPLOAD_DT]	datetime	NULL,

CONSTRAINT [PK_GF_TL_DATES] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_DATES3]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[VAAUTHEXPDT]	datetime	NULL,

	[APPRAISER_ASSIGNED_DT]	datetime	NULL,

	[SCORECARD_DEC_DATE]	datetime	NULL,

	[ADV_ACTION_MAIL_DATE]	datetime	NULL,

	[UWEXPOVRD]	datetime	NULL,

	[CREDIT_FILE_RECEIVED_DT]	datetime	NULL,

	[FILE_COMPLETE_DT]	datetime	NULL,

	[CLOSING_PKG_RECEIVED_DT]	datetime	NULL,

	[LOAN_SPECIALIST_REVIEW_DT]	datetime	NULL,

	[CREDIT_REVIEW_DT]	datetime	NULL,

	[APPROVED_W_CONDITIONS_DT]	datetime	NULL,

	[SENTPROC]	datetime	NULL,

	[INTENT_TO_PROCEED_DT]	datetime	NULL,

	[COUNTER_OFFER_ACCEPT_DATE]	datetime	NULL,

	[COUNTER_OFFER_ISSUED]	datetime	NULL,

	[UNDERWRITING_RESUBMIT_DATE]	datetime	NULL,

	[NOTE_SENT_TO_SEC]	datetime	NULL,

	[REGB_END_DATE]	datetime	NULL,

	[CONSENT_DATE]	datetime	NULL,

	[CONSENT_DECLINED_DATE]	datetime	NULL,

	[WHL_LOAN_REG_DATE]	datetime	NULL,

	[PREVREGB_END_DATE]	datetime	NULL,

	[HOMESTY_COMPLT_DATE]	datetime	NULL,

	[REHAB_COMPLETN_DATE]	datetime	NULL,

	[REMOVE_RECOUR_REQ_DATE]	datetime	NULL,

	[PRED_CLOSING_DT_AI_HLM]	datetime	NULL,

	[PC_NOTE_RXD_DT]	datetime	NULL,

	[PC_NOTE_SENT_DT]	datetime	NULL,

	[FINCONDT]	datetime	NULL,

	[CREDIT_FILE_ACCEPTED_DT]	datetime	NULL,

	[CLOSING_PKG_ACCEPTED_DT]	datetime	NULL,

	[FINAL_NOTE]	datetime	NULL,

	[ORIG_RECORDED_MTG]	datetime	NULL,

	[ALLONGE]	datetime	NULL,

	[FINAL_TITLE_PLCY_RCVD_DATE]	datetime	NULL,

	[TRUST_ADDENDUM_POA]	datetime	NULL,

	[LOAN_IMPORT_UPDATE_COMP]	datetime	NULL,

CONSTRAINT [PK_GF_TL_DATES3] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_HOUSING_PROPSD]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[GROUND_RENT_AMT]	decimal(16,6)	NULL,

	[GROUND_RENT_OVRD]	decimal(16,6)	NULL,

	[HAZARD_INS_AMT]	decimal(18,3)	NULL,

	[HAZARD_INS_OVRD]	decimal(18,3)	NULL,

	[HOA_DUES_AMT]	decimal(18,3)	NULL,

	[HOA_DUES_OVRD]	decimal(18,3)	NULL,

	[LEASEHOLD_PMT_AMT]	decimal(18,3)	NULL,

	[LEASEHOLD_PMT_OVRD]	decimal(18,3)	NULL,

	[MAINT_MISC_AMT]	decimal(18,3)	NULL,

	[MAINT_MISC_OVRD]	decimal(18,3)	NULL,

	[MI_AMT]	decimal(18,3)	NULL,

	[MI_OVRD]	decimal(18,3)	NULL,

	[MTG_PITI_AMT]	decimal(16,6)	NULL,

	[MTG_PITI_OVRD]	decimal(16,6)	NULL,

	[MTG_PRIN_INT_AMT]	decimal(18,3)	NULL,

	[MTG_PRIN_INT_OVRD]	decimal(18,3)	NULL,

	[OTHER_MTG_PITI_AMT]	decimal(16,6)	NULL,

	[OTHER_MTG_PITI_OVRD]	decimal(16,6)	NULL,

	[OTHER_MTG_PRIN_INT_AMT]	decimal(18,3)	NULL,

	[OTHER_MTG_PRIN_INT_OVRD]	decimal(18,3)	NULL,

	[REAL_ESTATE_TAX_AMT]	decimal(18,3)	NULL,

	[REAL_ESTATE_TAX_OVRD]	decimal(18,3)	NULL,

	[UTILITIES_AMT]	decimal(18,3)	NULL,

	[UTILITIES_OVRD]	decimal(18,3)	NULL,

	[OTHER_EXP_ALL]	decimal(18,3)	NULL,

	[TOTAL_PROPOSED]	decimal(18,3)	NULL,

	[ASSESSMENT_AMT]	numeric(18,3)	NULL,

	[ASSESSMENT_OVRD]	numeric(18,3)	NULL,

	[FLOOD_INS_AMT]	numeric(18,3)	NULL,

	[FLOOD_INS_OVRD]	numeric(18,3)	NULL,

	[WATER_PURI_AMT]	numeric(18,3)	NULL,

	[WATER_PURI_OVRD]	numeric(18,3)	NULL,

	[SUPPLE_INS_AMT_OVRD]	decimal(18,3)	NULL,

	[SUPPLE_INS_AMT]	decimal(18,3)	NULL,

	[HOMEOWN_INS_AMT_OVRD]	decimal(18,3)	NULL,

	[HOMEOWN_INS_AMT]	decimal(18,3)	NULL,

CONSTRAINT [PK_GF_TL_HOUSING_PROPSD] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_LOAN_CONTACTS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[CID_ACCOUNT_EXECUTIVE]	int	NULL,

	[CID_APPRAISAL_COMPANY]	int	NULL,

	[CID_APPRAISER]	int	NULL,

	[CID_ATTORNEY]	int	NULL,

	[CID_BANK_ATTORNEY]	int	NULL,

	[CID_BANKING_INSTITUTION]	int	NULL,

	[CID_BRANCH]	int	NULL,

	[CID_CLOSER]	int	NULL,

	[CID_CLOSING_AGENT]	int	NULL,

	[CID_CLOSING_LENDER]	int	NULL,

	[CID_CORRESPONDENT]	int	NULL,

	[CID_CREDIT_BUREAU]	int	NULL,

	[CID_DOC_PREP_AGENCY]	int	NULL,

	[CID_DOC_PREPARER]	int	NULL,

	[CID_ECOA_FEDERAL_AGENCY]	int	NULL,

	[CID_FUNDER]	int	NULL,

	[CID_FUNDING_LOCATION]	int	NULL,

	[CID_INVESTOR]	int	NULL,

	[CID_LOAN_OFFICER]	int	NULL,

	[CID_LOAN_SERVICER]	int	NULL,

	[CID_MI_AGENT]	int	NULL,

	[CID_MI_COMPANY]	int	NULL,

	[CID_MANUFACTURER]	int	NULL,

	[CID_MORTGAGE_BROKER]	int	NULL,

	[CID_MORTGAGE_BROKER_AGENT]	int	NULL,

	[CID_ORIGINATING_LENDER]	int	NULL,

	[CID_ORIGINATOR]	int	NULL,

	[CID_POST_CLOSER]	int	NULL,

	[CID_PROCESSOR]	int	NULL,

	[CID_REGION]	int	NULL,

	[CID_SALES_REPRESENTATIVE]	int	NULL,

	[CID_SETTLEMENT_AGENT]	int	NULL,

	[CID_TITLE]	int	NULL,

	[CID_TITLE_INSURER]	int	NULL,

	[CID_TRUSTEE]	int	NULL,

	[CID_UNDERWRITER]	int	NULL,

	[CID_LOAN_CONSULTANT]	int	NULL,

	[CID_FLOOD_INS_CO]	int	NULL,

	[CID_HAZARD_INS_CO]	int	NULL,

	[CID_HOA]	int	NULL,

	[CID_TERMITE_CO]	int	NULL,

	[CID_TITLEINS_UW]	decimal(16,6)	NULL,

	[CID_CLOSING_ASSIST]	int	NULL,

	[CID_DIVISION]	int	NULL,

	[CID_DIV_MGR]	int	NULL,

	[CID_HMDA_ECOA_SPCLST]	int	NULL,

	[CID_REGION_MGR]	int	NULL,

	[CID_BRANCH_MGR]	int	NULL,

	[CID_BROKER_PRINCIPAL]	int	NULL,

	[CID_BROKER_BRANCH]	int	NULL,

	[CID_CMS_OL_BUSINESS_CHAN]	int	NULL,

	[CID_CMS_CL_BUSINESS_CHAN]	int	NULL,

	[CID_CMS_OL_PRINCIPAL]	int	NULL,

	[CID_CMS_CL_PRINCIPAL]	int	NULL,

	[CID_BROKER_ACNT_EXEC]	int	NULL,

	[CID_BROKER_REL_MGR]	int	NULL,

	[CID_BROKER_PROCESSOR]	int	NULL,

	[CID_COMPLIANCE]	int	NULL,

	[CID_APPRAISERCOORDINATOR]	int	NULL,

	[CID_QC_AUDITOR]	int	NULL,

	[CID_SPECIAL_INVEST_REVIEWER]	int	NULL,

	[CID_CREDIT_RISK_REVIEWER]	int	NULL,

	[CID_COLLAT_RISK_REVIEWER]	int	NULL,

	[CID_SERVICING_REVIEWER]	int	NULL,

	[CID_SECONDARY_REP]	int	NULL,

	[CID_DOC_CUSTODIAN]	int	NULL,

	[CID_HR_APPROVER]	int	NULL,

	[CID_DEALER]	int	NULL,

	[CID_CNSLNDMGR]	int	NULL,

	[CID_RTLLNDMGR]	int	NULL,

	[CID_CHFLNDOFF]	int	NULL,

	[CID_PRODCRMGR]	int	NULL,

	[CID_REFRTLNDMGR]	int	NULL,

	[CID_MTGORGPRDMGR]	int	NULL,

	[CID_PRCUNDMGR]	int	NULL,

	[CID_MTGPROC]	int	NULL,

	[CID_MTGCLERK]	int	NULL,

	[CID_CLOSESUPER]	int	NULL,

	[CID_WHLSMRKMGR]	int	NULL,

	[CID_WHLSASSTMGR]	int	NULL,

	[CID_WHLSUNDER]	int	NULL,

	[CID_WHLSPROCESS]	int	NULL,

	[CID_WHLSCLOSER]	int	NULL,

	[CID_WHLSCLERK]	int	NULL,

	[CID_REGPRES]	int	NULL,

	[CID_DISTMGR]	int	NULL,

	[CID_AREA]	int	NULL,

	[CID_BRCHASSTMGR]	int	NULL,

	[CID_PRSBANKER]	int	NULL,

	[CID_MNGTRAINEE]	int	NULL,

	[CID_CALLCNTMGR]	int	NULL,

	[CID_CALLCNTASTMGR]	int	NULL,

	[CID_CALLCNTLO]	int	NULL,

	[CID_CALLCNTSUPR]	int	NULL,

	[CID_CALLCNTCSR]	int	NULL,

	[CID_FLDSRVPRVDR]	int	NULL,

	[CID_CRDINS]	int	NULL,

	[CID_COLINSCO]	int	NULL,

	[CID_COLINSAGNT]	int	NULL,

	[CID_TAXSVCPRVD]	int	NULL,

	[CID_APPATRNY]	int	NULL,

	[CID_MORTGAGE_LIFE_INSURER]	int	NULL,

	[CID_MORTGAGE_LIFE_AGENT]	int	NULL,

	[CID_CORP_APPROVER]	int	NULL,

	[CID_SELLING_LENDER]	int	NULL,

	[CID_INTERIMFUNDER]	int	NULL,

	[CID_SUBSERVICER]	int	NULL,

	[CID_WAREHOUSE]	int	NULL,

	[CID_LISTINGAGENT]	int	NULL,

CONSTRAINT [PK_GF_TL_LOAN_CONTACTS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_LOAN_CONTACTS2]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[CID_ACCOUNT_REP]	int	NULL,

	[CID_APPRAISAL]	int	NULL,

	[CID_AREA_SALES_MANAGER]	int	NULL,

	[CID_ASSIGNEE]	int	NULL,

	[CID_ASSIGNEE_CONTACT]	int	NULL,

	[CID_ASSIGNOR]	int	NULL,

	[CID_ASSIGNOR_CONTACT]	int	NULL,

	[CID_ATTESTOR]	int	NULL,

	[CID_AUDITOR]	int	NULL,

	[CID_AUTHORIZED_AGENT]	int	NULL,

	[CID_BENEFICIARY]	int	NULL,

	[CID_BUILDER]	int	NULL,

	[CID_BUYERS_AGENT]	int	NULL,

	[CID_BUYERS_ATTORNEY]	int	NULL,

	[CID_BUYERS_REALTOR]	int	NULL,

	[CID_COMMITMNT_AUTH_CORR]	int	NULL,

	[CID_CONTRACTOR]	int	NULL,

	[CID_CORRESPONDENT_ACCT_REP]	int	NULL,

	[CID_DEPOSITORY]	int	NULL,

	[CID_ESCROW]	int	NULL,

	[CID_ESCROW_AGENT]	int	NULL,

	[CID_FEE_INSPECTOR]	int	NULL,

	[CID_FIN_INSTITUTION]	int	NULL,

	[CID_FLOOD_AGENT]	int	NULL,

	[CID_HAZARD_AGENT]	int	NULL,

	[CID_HOME_BUYERS_WARRANTY]	int	NULL,

	[CID_INSURER_GUARANTOR]	int	NULL,

	[CID_INS_CERT_AGENT]	int	NULL,

	[CID_INS_CERT_PROVIDER]	int	NULL,

	[CID_INVESTOR_CONTACT]	int	NULL,

	[CID_MARKETING_COORD]	int	NULL,

	[CID_NOTARY_PUBLIC]	int	NULL,

	[CID_OFFICER]	int	NULL,

	[CID_PLAN_REVIEWER]	int	NULL,

	[CID_RECORDER]	int	NULL,

	[CID_REG_VICE_PRESIDENT]	int	NULL,

	[CID_RENT_LOSS_AGENT]	int	NULL,

	[CID_RENT_LOSS_INSURER]	int	NULL,

	[CID_SECRETARY]	int	NULL,

	[CID_SELLERS_ATTORNEY]	int	NULL,

	[CID_SELLING_AGENT]	int	NULL,

	[CID_SELLING_REALTOR]	int	NULL,

	[CID_SERVICING_AGENT]	int	NULL,

	[CID_SHIPPER]	int	NULL,

	[CID_SPONSOR]	int	NULL,

	[CID_SURVEYING_COMPANY]	int	NULL,

	[CID_SURVEYOR]	int	NULL,

	[CID_TAX_CERTIFICATE_PROV]	int	NULL,

	[CID_TAX_COLLECTOR]	int	NULL,

	[CID_THIRD_PARTY]	int	NULL,

	[CID_VA_OFFICE]	int	NULL,

	[CID_VERIFICATION_OFFICER]	int	NULL,

	[CID_VICE_PRESIDENT]	int	NULL,

	[CID_WAREHOUSE_LENDER]	int	NULL,

	[CID_WARRANTOR]	int	NULL,

	[CID_WHLSALE_MARKTNG_COOR]	int	NULL,

	[CID_WITNESS]	int	NULL,

	[CID_TRUSTEE2]	int	NULL,

	[CID_WHOLESALE_LENDER]	int	NULL,

	[CID_CONTRACT_UNDERWRITER]	int	NULL,

	[CID_CONDO]	int	NULL,

	[CID_FINAL_INVESTOR]	int	NULL,

	[CID_UNDERWRITER2]	int	NULL,

	[CID_UNDERWRITER3]	int	NULL,

	[CID_COMMUNITY_LAND_TRUST]	int	NULL,

	[CID_RTRN_CLOS_PKG]	int	NULL,

	[CID_RTRN_REC_DOCS]	int	NULL,

	[CID_HB_COUNSELING_ORG2]	int	NULL,

	[CID_HB_COUNSELING_AGT2]	int	NULL,

	[CID_SEC_FINCNG_PVDR]	int	NULL,

	[CID_SEC_FINCNG_REP]	int	NULL,

	[CID_FUNDING_SOURCE]	int	NULL,

	[CID_TAX_SRV_PROCESSOR]	int	NULL,

	[CID_HB_COUNSELING_ORG1]	int	NULL,

	[CID_HB_COUNSELING_AGT1]	int	NULL,

	[CID_MAINT_ORG]	int	NULL,

	[CID_COMM_LAND_TR_REP]	int	NULL,

	[CID_LOSS_PAYEE]	int	NULL,

	[CID_HUD_OFFICE]	int	NULL,

	[CID_FINAL_INV_CONTACT]	int	NULL,

	[CID_203KCONSULTANT]	int	NULL,

	[CID_FHAVAAPPRUW]	int	NULL,

	[CID_LISTING_REALTOR]	int	NULL,

	[CID_REFERRALTYPE]	int	NULL,

	[CID_REFERRALCHANNEL]	int	NULL,

	[CID_REFERRALSOURCE]	int	NULL,

	[CID_REFERRALRELATIONSHIP]	int	NULL,

	[CID_REFERALTYPE2]	int	NULL,

	[CID_REFERALCHANNEL2]	int	NULL,

	[CID_REFERALSOURCE2]	int	NULL,

	[CID_REFERALRELATIONSHIP2]	int	NULL,

	[CID_CLSNG_PROTCTN_INS_CO]	int	NULL,

	[CID_SALESMGR]	int	NULL,

	[CID_PROCMGR]	int	NULL,

	[CID_PROCASST]	int	NULL,

	[CID_UWMGR]	int	NULL,

	[CID_SUSPANALYST]	int	NULL,

	[CID_TEAM]	int	NULL,

	[CID_CUSTRELATIONS]	int	NULL,

	[CID_SUBLENDER]	int	NULL,

	[CID_SUBLENDERREP]	int	NULL,

	[CID_CLSPRTCTNLTRCO]	int	NULL,

	[CID_SALESASSISTANT]	int	NULL,

	[CID_COMMUNITY]	int	NULL,

	[CID_TRAILINGDOCS]	int	NULL,

	[CID_LOAN_REVIEWER]	int	NULL,

	[CID_CLOSMGR]	int	NULL,

	[CID_FNDMGR]	int	NULL,

	[CID_OPSMGR]	int	NULL,

	[CID_UWALST]	int	NULL,

	[CID_HMDRWR]	int	NULL,

	[CID_DISBCOMP]	int	NULL,

	[CID_OTHINS]	int	NULL,

	[CID_OTHAGT]	int	NULL,

CONSTRAINT [PK_GF_TL_LOAN_CONTACTS2] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_LOAN_DATA]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ACH_CODE]	nchar(1)	NULL,

	[ADJ_RT_001]	nchar(1)	NULL,

	[AGREE_WITH_UW_DECISION]	nchar(1)	NULL,

	[AGREE_W_UW_DECISION]	nchar(1)	NULL,

	[ANNUAL_CAP]	decimal(18,3)	NULL,

	[APPR_MATCH_NOTE]	nchar(1)	NULL,

	[BRANCH_CODE]	nvarchar(3)	NULL,

	[BROKER_SIGN]	nchar(1)	NULL,

	[CASHOUT_FLG]	nchar(1)	NULL,

	[COST_NEW]	decimal(18,3)	NULL,

	[COUNTEROFFER_TYPE]	nvarchar(8)	NULL,

	[CREDCO]	nchar(1)	NULL,

	[DETERMINATION]	nvarchar(8)	NULL,

	[EQUIFAX]	nchar(1)	NULL,

	[ESCROW_REQ]	nchar(1)	NULL,

	[EST_CASH_IN_HAND]	decimal(18,3)	NULL,

	[EST_HOUSING_PMT_CHG]	decimal(18,3)	NULL,

	[EST_P_L]	decimal(18,3)	NULL,

	[EST_TOTAL_PMT_CHG]	decimal(18,3)	NULL,

	[EXPERIAN]	nchar(1)	NULL,

	[FLD_ADDR1]	nvarchar(35)	NULL,

	[FLD_ADD_CORRECT]	nchar(1)	NULL,

	[FLD_CERT_AVAIL]	nchar(1)	NULL,

	[FLD_CERT_CODE]	nvarchar(20)	NULL,

	[FLD_CERT_CORRECT]	nchar(1)	NULL,

	[FLD_INS_COV_Y_N]	nchar(1)	NULL,

	[FLD_LOL_CODE]	nvarchar(20)	NULL,

	[FLD_REV_REQ_WAIVED]	nchar(1)	NULL,

	[GUAR_RATECODE]	nvarchar(10)	NULL,

	[GUAR_REPL_COST]	nchar(1)	NULL,

	[LTV_ADJ_CODE]	nvarchar(15)	NULL,

	[MAX_DTI_INPUT]	decimal(16,6)	NULL,

	[MULTI_LOANS_TO_BOR]	nchar(1)	NULL,

	[NBR_STMENTS]	smallint	NULL,

	[NONARMLENGTH_TRANS]	nchar(1)	NULL,

	[OUTSIDE_AGENCY]	nchar(1)	NULL,

	[PAY_OTHER_DEBTS]	nchar(1)	NULL,

	[PERF_MORT_CODE]	smallint	NULL,

	[POINT_OVERRIDE]	decimal(16,6)	NULL,

	[PREPAY_PERC]	decimal(16,6)	NULL,

	[PREPAY_TERM]	nvarchar(8)	NULL,

	[PRICE_EXC_DESC]	nvarchar(80)	NULL,

	[RATE_TEST]	decimal(16,6)	NULL,

	[REQ_FROM_BOR_COM]	nvarchar(80)	NULL,

	[SELLER_CONCES_DLR]	decimal(18,3)	NULL,

	[SELLER_CONCES_PERC]	decimal(16,6)	NULL,

	[SITE_CONDO]	nchar(1)	NULL,

	[STMT_TYPE]	nvarchar(8)	NULL,

	[SVCS_ALTA]	nchar(1)	NULL,

	[SVCS_CLTA]	nchar(1)	NULL,

	[SVCS_FLAG]	nchar(1)	NULL,

	[SVCS_FLAG65]	nchar(1)	NULL,

	[SVCS_FULL]	nchar(1)	NULL,

	[SVCS_SUB]	nchar(1)	NULL,

	[MAX_POINTS]	nvarchar(8)	NULL,

	[MIN_POINTS]	nvarchar(8)	NULL,

	[POINT_OBJECTIVE]	nvarchar(8)	NULL,

	[PROP_REG]	nvarchar(8)	NULL,

	[SUBORD_MORT]	nvarchar(8)	NULL,

	[TOTAL_CALC_POINTS]	decimal(16,6)	NULL,

	[TOTAL_PAYMENT]	decimal(16,6)	NULL,

	[TRANSUNION]	nchar(1)	NULL,

	[PROD_SHOW_ALL]	nchar(1)	NULL,

	[CUR_HOUSING_PMT]	decimal(16,6)	NULL,

	[OTHERINDEXTYPEDESC]	nvarchar(80)	NULL,

	[S_INDEX]	nvarchar(8)	NULL,

	[S_PAYEETYPE]	nvarchar(8)	NULL,

	[PAYEETYPEOTHERDESC]	nvarchar(255)	NULL,

	[CLNUM_COUNTER]	int	NULL,

	[LEAD_COUNTER]	int	NULL,

	[INITIAL_DRAW_AMOUNT]	decimal(18,3)	NULL,

	[HLD_LEND_FEE]	nchar(1)	NULL,

	[ODD_DAYS_AMOUNT]	decimal(18,3)	NULL,

	[FULLY_AMORT_PYMT]	decimal(18,3)	NULL,

	[DMI_OWN_RIGHTS]	nvarchar(8)	NULL,

	[DMI_BILLING_MODE]	nvarchar(8)	NULL,

	[S_AUSUWTYPE]	nvarchar(8)	NULL,

	[MSP_INVESTOR_ID]	nvarchar(4)	NULL,

	[MSP_INVESTOR_ID_OVERRIDE]	nvarchar(4)	NULL,

	[MSP_INVESTOR_CATEGORY]	nvarchar(4)	NULL,

	[MSP_INVESTOR_CATEGORY_OVERRIDE]	nvarchar(4)	NULL,

	[FIRST_DISB_REC_AMT]	decimal(18,3)	NULL,

	[S_INTPRD_COMM_MET]	nvarchar(8)	NULL,

	[EXCLUDE_FROM_QRM]	nchar(1)	NULL,

	[READY_REDISCLSR]	nchar(1)	NULL,

	[S_WELCOME_CALL]	nvarchar(8)	NULL,

	[LOAN_AMOUNT_TOLER]	nchar(1)	NULL,

	[MAX_APPR_RATE]	numeric(16,6)	NULL,

	[S_AUS_RESULT]	nvarchar(8)	NULL,

	[P_ADMINOVR]	numeric(16,6)	NULL,

	[P_CB_ADMINOVR]	nchar(1)	NULL,

	[P_COMPOVR]	numeric(16,6)	NULL,

	[P_CB_COMPOVR]	nchar(1)	NULL,

	[REFI_PAYOFF_AMOUNT]	decimal(16,6)	NULL,

	[HARP_MI_REQUIRED]	nchar(1)	NULL,

	[NET_NEW_DOLLARS]	decimal(16,6)	NULL,

	[S_INIT_DISC_DELIVERY_MTHD]	nvarchar(8)	NULL,

	[CONFIDENCE_SCR_HLMAI]	decimal(8,2)	NULL,

	[S_BRANCH_TYPE]	nvarchar(8)	NULL,

	[BRANCH_ID]	nvarchar(8)	NULL,

	[BRANCH_BANK_CODE]	nvarchar(8)	NULL,

	[BRANCH_COST_CENTER]	nvarchar(8)	NULL,

	[BOP_VERBIAGE_TXT]	nvarchar(2000)	NULL,

	[EFCC_HIGH_RISK_INDICATOR]	nchar(1)	NULL,

	[PROMOTION_CODE]	nvarchar(20)	NULL,

	[ONBOARD_DISB_STATUS]	nvarchar(50)	NULL,

CONSTRAINT [PK_GF_TL_LOAN_DATA] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_LOAN_STATUS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[S_LOAN_STATUS]	nvarchar(8)	NULL,

	[S_UW_STATUS]	nvarchar(8)	NULL,

	[S_LOCK_STATUS]	nvarchar(8)	NULL,

	[LOCK_STATUS_DISPLAY]	nvarchar(30)	NULL,

	[SENT_TO_MIDANET]	nchar(1)	NULL,

	[AP_ADMIN_ONLY]	nchar(1)	NULL,

	[STATUS_MODIFIED_DT]	datetime	NULL,

	[EXT_LOAN_STATUS_VERSION_ID]	int	NULL,

	[EXT_LOAN_STATUS_VERSION]	int	NULL,

CONSTRAINT [PK_GF_TL_LOAN_STATUS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_MISC_CK]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[GF_CK1]	nchar(1)	NULL,

	[GF_CK2]	nchar(1)	NULL,

	[GF_CK3]	nchar(1)	NULL,

	[GF_CK4]	nchar(1)	NULL,

	[GF_CK5]	nchar(1)	NULL,

	[GF_CK6]	nchar(1)	NULL,

	[GF_CK7]	nchar(1)	NULL,

	[GF_CK8]	nchar(1)	NULL,

	[GF_CK10]	nchar(1)	NULL,

	[GF_CK9]	nchar(1)	NULL,

	[GF_CK11]	nchar(1)	NULL,

	[GF_CK12]	nchar(1)	NULL,

	[GF_CK13]	nchar(1)	NULL,

	[GF_CK14]	nchar(1)	NULL,

	[GF_CK15]	nchar(1)	NULL,

	[GF_CK16]	nchar(1)	NULL,

	[GF_CK17]	nchar(1)	NULL,

	[GF_CK18]	nchar(1)	NULL,

	[GF_CK19]	nchar(1)	NULL,

	[GF_CK20]	nchar(1)	NULL,

	[GF_CREDIT_SCORE]	int	NULL,

CONSTRAINT [PK_GF_TL_MISC_CK] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_PMT_STREAMS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[PAYMENTCTR]	int	NOT NULL,

	[NUMPAYMENTS]	smallint	NULL,

	[STARTDATE]	datetime	NULL,

	[FULLPAYMENT]	decimal(16,6)	NULL,

	[CONSTINTERESTFLAG]	nchar(1)	NULL,

	[DEFERODDDAYSFLAG]	nchar(1)	NULL,

	[BOUGHTDOWNFLAG]	nchar(1)	NULL,

	[INTERESTONLYFLAG]	nchar(1)	NULL,

	[MINPMTSTREAMFLAG]	nchar(1)	NULL,

	[DISCLOSEDPMT]	decimal(16,6)	NULL,

	[PMI]	decimal(16,6)	NULL,

	[EFFECTIVERATE]	decimal(16,6)	NULL,

	[PAYMENTRATE]	decimal(16,6)	NULL,

	[ADJUSTEDPAYMENT]	decimal(16,6)	NULL,

	[BALANCE]	decimal(16,6)	NULL,

	[PIPAYMENT]	decimal(16,6)	NULL,

CONSTRAINT [PK_GF_TL_PMT_STREAMS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [PAYMENTCTR]

	)
);
CREATE TABLE [dbo].[GF_TL_PNP_IPG_DETAIL]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[INVESTOR_CODE]	nvarchar(4)	NULL,

	[PRODUCT_CODE]	nvarchar(4)	NULL,

	[PROGRAM_CODE]	nvarchar(4)	NULL,

	[PRICE_GROUP_CODE]	nvarchar(4)	NULL,

	[IPG_NAME]	nvarchar(240)	NULL,

	[S_SEC_MANAGE_TYPE]	nvarchar(8)	NULL,

	[S_SEC_LOAN_TYPE]	nvarchar(8)	NULL,

	[S_SEC_POOL_TYPE]	nvarchar(8)	NULL,

	[S_PREPAY_PEN]	nvarchar(8)	NULL,

	[OVER_ALLOW_PCT]	decimal(16,6)	NULL,

	[SHORT_ALLOW_PCT]	decimal(16,6)	NULL,

	[OVER_SPLIT_PCT]	decimal(16,6)	NULL,

	[SHORT_SPLIT_PCT]	decimal(16,6)	NULL,

	[REQUIRES_MERS]	nchar(1)	NULL,

	[REQUIRES_MI]	nchar(1)	NULL,

	[ONE_TIMECLOSE_CONST]	nchar(1)	NULL,

	[INTERIM_CONSTRUCTION]	nchar(1)	NULL,

	[ASSUMABLE]	nchar(1)	NULL,

	[CONV_PERIOD_ST]	smallint	NULL,

	[CONV_PERIOD_END]	smallint	NULL,

	[EZD_PRODUCT]	nchar(1)	NULL,

	[HMDA_REPORTABLE]	nchar(1)	NULL,

	[BUYDOWN_ALLOWED]	nchar(1)	NULL,

	[HELOC_ALLOW_YN]	nchar(1)	NULL,

	[PROD_PROF_TRUE]	nchar(1)	NULL,

	[PRICE_NAME]	nvarchar(240)	NULL,

	[ALLOW_DPA]	nchar(1)	NULL,

	[AVAIL_BTOC]	nchar(1)	NULL,

	[FIRST_LOCK_IND]	nchar(1)	NULL,

	[OLD_AGENCY_NUM_IND]	nchar(1)	NULL,

	[PRODUCT_IDENTIFIER]	nvarchar(80)	NULL,

	[S_AUS_IND]	nvarchar(8)	NULL,

	[S_SERVICE_TYPE]	nvarchar(8)	NULL,

	[SERVICING_INTERFACE_IND]	nvarchar(30)	NULL,

	[SERVICING_LOCATION]	nvarchar(20)	NULL,

	[SUB_PRIME_IND]	nchar(1)	NULL,

	[MI_REQUIRE]	nchar(1)	NULL,

	[INTEREST_ONLY_PRODUCT]	nchar(1)	NULL,

	[S_SPEC_PROG]	nvarchar(8)	NULL,

	[CRA_REPORT]	nchar(1)	NULL,

	[INV_CODE_OVR]	nvarchar(4)	NULL,

	[INV_PROD_CODE_OVR]	nvarchar(4)	NULL,

	[INV_PROG_CODE_OVR]	nvarchar(4)	NULL,

	[INV_NAME_OVR]	nvarchar(40)	NULL,

	[INV_PROD_NAME_OVR]	nvarchar(40)	NULL,

	[INV_PROG_NAME_OVR]	nvarchar(40)	NULL,

	[INV_PRICE_NAME_OVR]	nvarchar(40)	NULL,

	[INV_PRICE_CODE_OVR]	nvarchar(40)	NULL,

	[MIN_ALLOW_LN_TERM]	int	NULL,

	[MAX_ALLOW_LN_TERM]	int	NULL,

	[ODDDAYSDEFER]	nchar(1)	NULL,

	[OVRD_PROD_RULES]	nchar(1)	NULL,

	[DEBT_PROTECT_OFFERED]	nchar(1)	NULL,

	[EVAL_ATR]	nchar(1)	NULL,

	[EVAL_QM]	nchar(1)	NULL,

	[APPLY_MLA_RULES]	nchar(1)	NULL,

	[LNDR_PD_MI_ALLOWED]	nchar(1)	NULL,

	[S_ASSUMABILITY_FEATURE]	nvarchar(8)	NULL,

CONSTRAINT [PK_GF_TL_PNP_IPG_DETAIL] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_POINT_OF_SALE_INFO]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[S_REFSC]	nvarchar(8)	NULL,

	[TBDADDR]	nchar(1)	NULL,

	[POSFHA]	nchar(1)	NULL,

	[S_PROPTYPE]	nvarchar(8)	NULL,

	[PROJCLAS]	nvarchar(35)	NULL,

	[PROJNAME]	nvarchar(35)	NULL,

	[DPPERCT]	decimal(16,6)	NULL,

	[HELINE]	decimal(16,6)	NULL,

	[HECURBAL]	decimal(16,6)	NULL,

	[S_DOCLVL]	nvarchar(8)	NULL,

	[S_LNSTATUS]	nvarchar(8)	NULL,

	[HLTVH]	decimal(16,6)	NULL,

	[TSWE_INC_EXPECTED]	nchar(1)	NULL,

	[QUAL_TSWE_LOAN]	nchar(1)	NULL,

	[LNSTATUS_DT]	datetime	NULL,

	[SCHEME_ID]	int	NULL,

	[BORRCONTACTMETH]	nchar(1)	NULL,

	[EST_PROCESSING_DAYS]	int	NULL,

	[TABLE_FUNDED_IND]	nchar(1)	NULL,

	[WAIT_WAIVED_BPOC]	nchar(1)	NULL,

	[WAIT_WAIVED_CLOSDT]	nchar(1)	NULL,

	[USE_RESPA_2010]	nchar(1)	NULL,

	[LO_NAME_OVR]	nvarchar(50)	NULL,

	[LO_NMLS_NUM_OVR]	nvarchar(20)	NULL,

	[LO_PHONE_OVR]	nvarchar(10)	NULL,

	[S_GFE_TIME_ZONE]	nvarchar(8)	NULL,

	[ALLOWWITHDRAWLOAN]	nchar(1)	NULL,

	[GFE_INT_RATE_LSC]	decimal(16,6)	NULL,

	[GFE_INT_RATE_LIR]	decimal(16,6)	NULL,

	[GFE_SET_CHRG_LSC]	decimal(18,3)	NULL,

	[GFE_SET_CHRG_LIR]	decimal(18,3)	NULL,

	[MAXLTV]	decimal(16,6)	NULL,

	[EMPLOYEE_LOAN_YN]	nchar(1)	NULL,

	[HIGH_PRICE_LOAN_YN]	nchar(1)	NULL,

	[MONTHLY_ESCROW_TOTAL]	decimal(18,3)	NULL,

	[REFI_LOAN_ACCT_NBR]	nvarchar(25)	NULL,

	[LO_NMLS_NUM]	nvarchar(21)	NULL,

	[LO_COMP_NMLS_NUM]	nvarchar(21)	NULL,

	[DU_DISPLAY]	nvarchar(35)	NULL,

	[LP2_RISK_CLASS]	nvarchar(35)	NULL,

	[AUTO_UW_YN]	nchar(1)	NULL,

	[VA_TOT_RESID_INCOME]	decimal(18,3)	NULL,

	[PER_DIEM_CALC_BASIS]	nvarchar(8)	NULL,

	[PER_DIEM]	decimal(18,3)	NULL,

	[PER_DIEM_INTEREST]	decimal(16,6)	NULL,

	[ESCROW_CUSHION_MNTH]	int	NULL,

	[SPEC_FLOOD_HAZ_AREA]	nchar(1)	NULL,

	[NFIP_FLOOD_ZONE_ID]	nvarchar(35)	NULL,

	[SCHEME_VERSION]	int	NULL,

	[HLTV_ROUNDED]	int	NULL,

	[CHECKLOANSTATUS]	nchar(1)	NULL,

	[TOTAL_PROPOSED_HOUSING_EXP]	decimal(18,3)	NULL,

	[SELLER_OUT_MORT]	nchar(1)	NULL,

	[LO_EMAIL_OVR]	nvarchar(128)	NULL,

	[USE_NEW_ESCROW_CALC]	nchar(1)	NULL,

	[SPONSORORIG]	nchar(1)	NULL,

	[ACH_SELECTED]	nchar(1)	NULL,

	[REFERREDBY]	nvarchar(50)	NULL,

	[LO_EMPLOYER_OVR]	nvarchar(90)	NULL,

	[LO_ADDR1_OVR]	nvarchar(50)	NULL,

	[LO_CSZ_OVR]	nvarchar(60)	NULL,

	[TIL_UNDER_DISCL_AMT]	numeric(16,6)	NULL,

	[LO_COMP_NMLS_NO_OVR]	nvarchar(20)	NULL,

	[ORIGINATOR_NMLS_NO]	nvarchar(25)	NULL,

	[APP_DATE_REQUIREMENTS_MET]	nchar(1)	NULL,

	[IS_TEMPORARY_FINANCING_LOAN]	nchar(1)	NULL,

	[LO_PROPST_LICNUM_OVR]	nvarchar(50)	NULL,

	[ADJHCLTV]	decimal(16,6)	NULL,

	[PRODNAMEPARAM_EMAIL]	nvarchar(50)	NULL,

	[LP2_RISK_CLASS_OVR]	nvarchar(20)	NULL,

	[DU_DISPLAY_OVR]	nvarchar(20)	NULL,

CONSTRAINT [PK_GF_TL_POINT_OF_SALE_INFO] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_PORTAL]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[PORTAL_LNUM]	nvarchar(36)	NULL,

	[PORTAL_SOURCE]	nvarchar(50)	NULL,

	[PORTAL_VENDER]	nvarchar(50)	NULL,

	[PORTAL_VERSION]	nvarchar(15)	NULL,

	[PORTAL_DEALER]	nchar(1)	NULL,

CONSTRAINT [PK_GF_TL_PORTAL] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_TRANSOVR]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[REFIAMTOVRD]	decimal(18,3)	NULL,

	[ESTPREPDOVRD]	decimal(18,3)	NULL,

	[ESTCLCOSTOVRD]	decimal(18,3)	NULL,

	[MIFFOVRD]	decimal(18,3)	NULL,

	[SELLCOSTOVRD]	decimal(18,3)	NULL,

	[OTHCRDOVRT]	decimal(18,3)	NULL,

	[FINFEESOVRD]	decimal(18,3)	NULL,

	[IMPREPOVRD]	decimal(18,3)	NULL,

	[SUBFINOVRD]	decimal(18,3)	NULL,

	[DISCOVRD]	decimal(18,3)	NULL,

	[CASHFROMTOBORR]	numeric(16,6)	NULL,

	[NONSPDEBTPAYOFFOVRD]	decimal(18,3)	NULL,

CONSTRAINT [PK_GF_TL_TRANSOVR] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_UW_4]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ADDRESVS]	nchar(1)	NULL,

	[ADUTPROD]	nchar(1)	NULL,

	[ALTSCORE]	smallint	NULL,

	[BADCREDIT]	nchar(1)	NULL,

	[BADHR]	nchar(1)	NULL,

	[BADLTV]	nchar(1)	NULL,

	[BORROWERDEL]	nchar(1)	NULL,

	[CHGREFI]	nchar(1)	NULL,

	[COBORROWERDEL]	nchar(1)	NULL,

	[CTROFFYES]	nchar(1)	NULL,

	[DELETED]	nchar(1)	NULL,

	[EMPLYUNA]	nchar(1)	NULL,

	[FHAYES]	nchar(1)	NULL,

	[FRED500YES]	nchar(1)	NULL,

	[LOWERLTV]	nchar(1)	NULL,

	[MAJCRDGS]	nchar(1)	NULL,

	[MANAYES]	nchar(1)	NULL,

	[MINCRDGS]	nchar(1)	NULL,

	[NOSAVE]	nchar(1)	NULL,

	[PMTSHOCK]	nchar(1)	NULL,

	[PORTFOUR]	nchar(1)	NULL,

	[PORTONE]	nchar(1)	NULL,

	[PORTPLUS]	nchar(1)	NULL,

	[PORTTHREE]	nchar(1)	NULL,

	[PORTTWO]	nchar(1)	NULL,

	[TTL_MONTH_INCOME]	decimal(18,3)	NULL,

	[TTL_MONTH_DEBTS]	decimal(18,3)	NULL,

	[CREDIT_SCORE_IMPAIRMENT]	nvarchar(8)	NULL,

	[CREDIT_SELECTION_METHOD]	nvarchar(8)	NULL,

	[CHKAPPENDIXQ]	nchar(1)	NULL,

	[APPQREASON]	nvarchar(256)	NULL,

	[OVERALL_FRAUD_SCORE]	int	NULL,

	[INCL_INVST_PRP_IN_QM_TEST]	nchar(1)	NULL,

CONSTRAINT [PK_GF_TL_UW_4] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[GF_TL_UWAPPREXT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[CNTR]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[FLOODMAPDATE]	datetime	NULL,

	[FLOODMAPNUMBER]	nvarchar(40)	NULL,

	[NOTFLOODAREA]	nchar(1)	NULL,

	[PRIMARYAPPRAISAL]	nchar(1)	NULL,

	[REPAIRAMOUNT]	decimal(18,3)	NULL,

	[REPLACEMENTAMOUNT]	decimal(18,3)	NULL,

	[S_FLOODMAPZONE]	nvarchar(8)	NULL,

	[APP_SENT_BORROWER]	datetime	NULL,

	[APPRAISAL_DELIVERED]	datetime	NULL,

	[APP_TIME_WAIVE]	datetime	NULL,

	[SELLER_ACQUIRED_PRC]	numeric(16,6)	NULL,

	[APP_DELIVERED_DATETYPE]	nvarchar(8)	NULL,

	[APP_WAIVED_OK]	nchar(1)	NULL,

	[UW_APPR_DOC_ID]	nvarchar(20)	NULL,

	[APPRSL_CENTRAL_AIR]	nchar(1)	NULL,

	[PERCENT_SINGLE_FAM]	int	NULL,

	[PERCENT_TWO_FOUR_UNIT]	int	NULL,

	[PERCENT_MULTI_FAM]	int	NULL,

	[PERCENT_COMMERCIAL]	int	NULL,

	[S_PROP_LOC_TYPE]	nvarchar(8)	NULL,

	[PROP_LTN_TYP_OTHDESC]	nvarchar(80)	NULL,

	[S_CAR_STORAGE_TYPE]	nvarchar(8)	NULL,

	[CARSTORAGE_TYPE_OTHR_DESC]	nvarchar(80)	NULL,

	[CARSTORAGE_NBR_CARS]	int	NULL,

	[S_FOUNDATION_TYPE]	nvarchar(8)	NULL,

	[FNDN_TYPE_OTHER_DESC]	nvarchar(80)	NULL,

CONSTRAINT [PK_GF_TL_UWAPPREXT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [CNTR]

	, [DBID]

	)
);
CREATE TABLE [dbo].[GF_TLB_EQ_RES_EDAS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[EDAS_SCORE]	smallint	NULL,

	[REGION_IND_TEXT]	nvarchar(11)	NULL,

	[REGION_IND_CODE]	nchar(1)	NULL,

	[REASON1]	nvarchar(5)	NULL,

	[REASON2]	nvarchar(5)	NULL,

	[REASON3]	nvarchar(5)	NULL,

	[REASON4]	nvarchar(5)	NULL,

	[REJECT_MSG_CODE]	nchar(1)	NULL,

	[REASON_TEXT1]	nvarchar(79)	NULL,

	[REASON_TEXT2]	nvarchar(79)	NULL,

	[REASON_TEXT3]	nvarchar(79)	NULL,

	[REASON_TEXT4]	nvarchar(79)	NULL,

	[ENHANCED_DAS_IND]	nchar(1)	NULL,

CONSTRAINT [PK_GF_TLB_EQ_RES_EDAS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLB_EQ_RES_SUMMARY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[BEGIN_DT]	datetime	NULL,

	[END_DT]	datetime	NULL,

	[PR_SEG_NUM]	smallint	NULL,

	[COLL_SEG_NUM]	smallint	NULL,

	[LOW_HIGH_CRED_AMT]	decimal(18,3)	NULL,

	[HIGH_HIGH_CRED_AMT]	decimal(18,3)	NULL,

	[ACCTS_NUM]	smallint	NULL,

	[MOP_RT_ONES_NUM]	smallint	NULL,

	[MOP_RT_SIXES_NUM]	smallint	NULL,

	[MOP_RT_TWOS_NUM]	smallint	NULL,

	[MOP_RT_SEVENS_NUM]	smallint	NULL,

	[MOP_RT_THREES_NUM]	smallint	NULL,

	[MOP_RT_EIGHTS_NUM]	smallint	NULL,

	[MOP_RT_FOURS_NUM]	smallint	NULL,

	[MOP_RT_NINES_NUM]	smallint	NULL,

	[MOP_RT_FIVES_NUM]	smallint	NULL,

	[MOP_RT_OTHERS_NUM]	smallint	NULL,

	[HIST_RT_TWOS_NUM]	smallint	NULL,

	[HIST_RT_SEVENS_NUM]	smallint	NULL,

	[HIST_RT_THREES_NUM]	smallint	NULL,

	[HIST_RT_EIGHTS_NUM]	smallint	NULL,

	[HIST_RT_FOURS_NUM]	smallint	NULL,

	[HIST_RT_NINES_NUM]	smallint	NULL,

	[HIST_RT_FIVES_NUM]	smallint	NULL,

	[HIST_RT_SIXES_NUM]	smallint	NULL,

	[INQUIRY_ALERT_IND]	nchar(1)	NULL,

	[INQUIRY_NUM]	smallint	NULL,

	[SINCE_DT]	datetime	NULL,

CONSTRAINT [PK_GF_TLB_EQ_RES_SUMMARY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLB_EX_RES_TRENDS_SUM]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[VARIATION_IND]	nchar(1)	NULL,

	[MONTH_IND]	smallint	NULL,

	[REVOLVE_BAL_TTL]	decimal(18,3)	NULL,

	[REVOLVE_BAL_AVG]	decimal(18,3)	NULL,

	[PERCENT_UTILIZED]	smallint	NULL,

	[BANK_NAT_CARDS]	smallint	NULL,

	[RETAIL_CARDS]	smallint	NULL,

	[CARD_WITH_BALANCE]	smallint	NULL,

CONSTRAINT [PK_GF_TLB_EX_RES_TRENDS_SUM] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLB_HOUSING_PRSNT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[GROUND_RENT_AMT]	decimal(16,6)	NULL,

	[HAZARD_INS_AMT]	decimal(18,3)	NULL,

	[HOA_DUES_AMT]	decimal(18,3)	NULL,

	[LEASEHOLD_PMT_AMT]	decimal(18,3)	NULL,

	[MAINT_MISC_AMT]	decimal(18,3)	NULL,

	[MI_AMT]	decimal(18,3)	NULL,

	[MTG_PITI_AMT]	decimal(16,6)	NULL,

	[MTG_PRIN_INT_AMT]	decimal(18,3)	NULL,

	[OTHER_HOUSING_AMT]	decimal(16,6)	NULL,

	[OTHER_MTG_PITI_AMT]	decimal(16,6)	NULL,

	[OTHER_MTG_PRIN_INT_AMT]	decimal(18,3)	NULL,

	[REAL_ESTATE_TAX_AMT]	decimal(18,3)	NULL,

	[RENT_AMT]	decimal(18,3)	NULL,

	[UTILITIES_AMT]	decimal(18,3)	NULL,

	[OTHER_EXP_TOTAL]	decimal(18,3)	NULL,

	[FLOOD_INS_AMT]	numeric(18,3)	NULL,

	[ASSESSMENT_AMT]	numeric(18,3)	NULL,

	[WATER_PURI_AMT]	numeric(18,3)	NULL,

CONSTRAINT [PK_GF_TLB_HOUSING_PRSNT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	)
);
CREATE TABLE [dbo].[GF_TLB_MAILING]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[MAILADDR1]	nvarchar(100)	NULL,

	[MAILADDR2]	nvarchar(100)	NULL,

	[MAILCITY]	nvarchar(25)	NULL,

	[MAILSTATE]	nchar(2)	NULL,

	[MAILCNTY]	nvarchar(35)	NULL,

	[MAILZIP]	nvarchar(10)	NULL,

	[MAILCOUNTRY]	nvarchar(35)	NULL,

	[MAIL_FADDR_INDICATOR]	nchar(1)	NULL,

	[S_MAIL_UNIT_TYPE]	nvarchar(8)	NULL,

	[MAIL_UNIT_NUM]	nvarchar(12)	NULL,

	[MAIL_COUNTRY_CODE]	nvarchar(3)	NULL,

	[BOR_MAIL_STATE_FOREIN]	nvarchar(35)	NULL,

	[MAIL_POST_CODE_FOREIN]	nvarchar(12)	NULL,

CONSTRAINT [PK_GF_TLB_MAILING] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	)
);
CREATE TABLE [dbo].[GF_TLB_TU_RES_CRED_SUM]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[REPORTING_PERIOD]	nchar(1)	NULL,

	[PUB_REC_NUM]	smallint	NULL,

	[COLLECTIONS_NUM]	smallint	NULL,

	[NEG_TRADE_NUM]	smallint	NULL,

	[HIST_NEG_TRADE_NUM]	smallint	NULL,

	[HIST_OCC_NEG_NUM]	smallint	NULL,

	[TRADE_NUM]	smallint	NULL,

	[REV_CHKCRED_TRD_NUM]	smallint	NULL,

	[INSTALL_TRD_NUM]	smallint	NULL,

	[MORT_TRD_NUM]	smallint	NULL,

	[OPEN_TRADE_NUM]	smallint	NULL,

	[INQUIRY_NUM]	smallint	NULL,

	[UNSPECIFIEDTRADECOUNT]	int	NULL,

CONSTRAINT [PK_GF_TLB_TU_RES_CRED_SUM] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLBC_EQ_RES_COLLECT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWCOUNTER]	smallint	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[ECOA_DESIGNATOR]	nchar(1)	NULL,

	[ASSIGNED_DT]	datetime	NULL,

	[ORIG_AMT]	decimal(18,3)	NULL,

	[FIRST_DELINQUENCY_DT]	datetime	NULL,

	[AGENCY_CUST_NUM]	nvarchar(10)	NULL,

	[AUTO_UPDATE_IND]	nchar(1)	NULL,

	[CLIENT_ID]	nvarchar(30)	NULL,

	[REPORTED_DT]	datetime	NULL,

	[BALANCE]	decimal(18,3)	NULL,

	[ACCT_NUM]	nvarchar(30)	NULL,

	[STATUS_CODE]	nchar(1)	NULL,

	[STATUS_CODE_TEXT]	nvarchar(18)	NULL,

	[NARRATIVE_CODE1]	nchar(2)	NULL,

	[NARRATIVE_TEXT1]	nvarchar(72)	NULL,

	[NARRATIVE_CODE2]	nchar(2)	NULL,

	[NARRATIVE_TEXT2]	nvarchar(72)	NULL,

	[CREDITOR_CLASS_CODE]	nchar(2)	NULL,

	[CRECITOR_CLASS_TEXT]	nvarchar(72)	NULL,

	[LAST_PMT_DT]	datetime	NULL,

CONSTRAINT [PK_GF_TLBC_EQ_RES_COLLECT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWCOUNTER]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLBC_TU_RES_GEOCODE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[ROWCOUNTER]	smallint	NOT NULL,

	[ADDRESS_IND]	nvarchar(15)	NULL,

	[GEO_ZIP_CODE]	nvarchar(9)	NULL,

	[BLOCK_GROUP_STATUS]	nchar(1)	NULL,

	[GEO_STATUS]	nvarchar(2)	NULL,

	[CENSUS_TRACK_STATUS]	nchar(1)	NULL,

	[SMSA_CODE]	smallint	NULL,

	[STATE_CODE]	nchar(2)	NULL,

	[COUNTY_CODE]	nvarchar(3)	NULL,

	[CENSUS_TRACK_CODE]	nvarchar(4)	NULL,

	[CENSUS_TRACK_SUFFIX]	nvarchar(2)	NULL,

	[BLOCK_CODE]	nchar(1)	NULL,

	[LATITIUDE]	nvarchar(8)	NULL,

	[LONGITUDE]	nvarchar(8)	NULL,

CONSTRAINT [PK_GF_TLBC_TU_RES_GEOCODE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	, [ROWCOUNTER]

	)
);
CREATE TABLE [dbo].[GF_TLBC_TU_RES_PUB_REC]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWCOUNTER]	smallint	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[FILED_DT]	datetime	NULL,

	[ASSETS]	decimal(18,3)	NULL,

	[PLAINTIFF]	nvarchar(32)	NULL,

	[ECOA]	nvarchar(25)	NULL,

	[INDUSTRY_CODE]	nchar(2)	NULL,

	[MEMBER_CODE]	nvarchar(8)	NULL,

	[PR_TYPE]	nchar(2)	NULL,

	[DOCKET_NUMBER]	nvarchar(30)	NULL,

	[ATTORNEY]	nvarchar(38)	NULL,

	[REPORTED_DT]	datetime	NULL,

	[PAID_DT]	datetime	NULL,

	[LIABILITIES_AMOUNT]	decimal(18,3)	NULL,

	[ORIGINAL_BALANCE]	decimal(18,3)	NULL,

	[CURRENT_BALANCE]	decimal(18,3)	NULL,

	[PR_SOURCE_CODE]	nvarchar(25)	NULL,

	[SOURCE_CITY]	nvarchar(28)	NULL,

	[SOURCE_STATE]	nchar(2)	NULL,

CONSTRAINT [PK_GF_TLBC_TU_RES_PUB_REC] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWCOUNTER]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLBC_TU_RES_TRADELINE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWCOUNTER]	smallint	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[CUSTOMER_NAME]	nvarchar(30)	NULL,

	[PORTFOLIO_TYPE]	nchar(1)	NULL,

	[HIGH_CREDIT]	decimal(18,3)	NULL,

	[ECOA_DESIGNATOR]	nchar(1)	NULL,

	[ACCOUNT_NUM]	nvarchar(30)	NULL,

	[REPORTED_DT]	datetime	NULL,

	[OPENED_DT]	datetime	NULL,

	[MONTHS_REVIEWED]	smallint	NULL,

	[ACCT_TYPE_CODE]	nchar(2)	NULL,

	[CLOSED_DT]	datetime	NULL,

	[SCHED_PAYMENT_AMT]	decimal(18,3)	NULL,

	[TERMS_FREQUENCY]	nvarchar(15)	NULL,

	[INDUSTRY_CODE]	nvarchar(2)	NULL,

	[MEMBER_CODE]	nvarchar(8)	NULL,

	[CLOSED_DATE_IND]	nvarchar(10)	NULL,

	[CURRENCY]	nchar(1)	NULL,

	[CURRENT_BALANCE_AMT]	decimal(18,3)	NULL,

	[TERMS_PMT_AMT]	decimal(18,3)	NULL,

	[CUR_ACCT_RATING]	nchar(2)	NULL,

	[PMT_PATTERN_START_DT]	datetime	NULL,

	[PMT_PATTERN]	nvarchar(48)	NULL,

	[TIMES_30_DAYS_LATE]	smallint	NULL,

	[TIMES_60_DAYS_LATE]	smallint	NULL,

	[TIMES_90_DAYS_LATE]	smallint	NULL,

	[HIGH_PAST_DUE_AMT]	decimal(18,3)	NULL,

	[HIGH_PAST_DUE_AMT_DT]	datetime	NULL,

	[HIGH_PAST_DUE_AMT_RT]	nchar(2)	NULL,

	[MAX_DELINQUENCY_AMT]	decimal(18,3)	NULL,

	[MAX_DELINQUENCY_DT]	datetime	NULL,

	[MAX_DELINQUENCY_ACCT_RT]	nchar(2)	NULL,

	[PMT_SCHED_TYPE_CODE]	nvarchar(10)	NULL,

	[PMT_SCHED_DT]	datetime	NULL,

	[PORTFOLIO_SALE_CODE]	nvarchar(15)	NULL,

	[PORTFOLIO_SALE_NAME]	nvarchar(30)	NULL,

	[AFFILIATE_REMARK_CODE]	nvarchar(3)	NULL,

	[GENERIC_REMARK_CODE]	nvarchar(3)	NULL,

	[RATING_HIST_REMARK_CODE]	nvarchar(3)	NULL,

	[COMPLIANCE_REMARK_CODE]	nvarchar(3)	NULL,

	[CONSUMER_STATEMENT_CODE]	nvarchar(3)	NULL,

	[UPDATE_METHOD_CODE]	nchar(1)	NULL,

	[LAST_PMT_DT]	datetime	NULL,

	[TERMS_PMT_SCHED_MNTH_CNT]	smallint	NULL,

	[PAST_DUE_AMT]	decimal(18,3)	NULL,

	[CREDIT_LIMIT_AMT]	decimal(18,3)	NULL,

CONSTRAINT [PK_GF_TLBC_TU_RES_TRADELINE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWCOUNTER]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLBR_ADDITIONALDATA]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ETHINICITY]	nvarchar(8)	NULL,

	[CELL_PHONE]	nvarchar(10)	NULL,

	[PRIM_CONTACT]	nchar(1)	NULL,

	[S_FIRSTTIMEHBCOUNSEL]	nvarchar(8)	NULL,

	[S_TITLE]	nvarchar(8)	NULL,

	[CURRENT_CUSTOMER]	nchar(1)	NULL,

	[WORK_EXT]	nvarchar(5)	NULL,

	[CREDIT_AUTHORIZATION_YN]	nchar(1)	NULL,

	[NATIONALITY]	nvarchar(30)	NULL,

	[AFFILIATE]	nchar(1)	NULL,

	[S_COUNSEL_CONFIRM_TYP]	nvarchar(8)	NULL,

	[S_COUNSEL_CONFIRM_OTH]	nvarchar(8)	NULL,

	[S_COUNSEL_FORMAT_TYP]	nvarchar(8)	NULL,

	[CREDIT_AUTHORIZATION_DATE]	datetime	NULL,

	[CUSTOMER_ID]	nvarchar(15)	NULL,

	[S_CRDTSCORE_MODEL_OVR]	nvarchar(8)	NULL,

	[URLA_BESTCONTACT]	nvarchar(20)	NULL,

	[URLA_ALTCONTACT]	nvarchar(20)	NULL,

	[S_CREDIT_TYPE]	nvarchar(8)	NULL,

	[JOINT_CREDIT_BNUM]	nvarchar(8)	NULL,

	[SPOUSE_FNAME]	nvarchar(250)	NULL,

	[SPOUSE_MNAME]	nvarchar(30)	NULL,

	[SPOUSE_LNAME]	nvarchar(30)	NULL,

	[SPOUSE_ADD1]	nvarchar(100)	NULL,

	[SPOUSE_ADD2]	nvarchar(100)	NULL,

	[SPOUSE_CITY]	nvarchar(25)	NULL,

	[SPOUSE_STATE]	nchar(2)	NULL,

	[SPOUSE_ZIP]	nvarchar(10)	NULL,

	[ATTR_BORROWER_ID]	nchar(1)	NULL,

	[MARITALSTATUSYN]	nchar(1)	NULL,

	[DATEOFCHANGEMS]	datetime	NULL,

	[EXPLANATIONMS]	nvarchar(80)	NULL,

	[ATTR_CAIVRS]	nchar(1)	NULL,

	[ATTR_ESIGN]	nchar(1)	NULL,

	[S_LANGUAGEPREFERENCE]	nvarchar(8)	NULL,

	[OTHER_LANGUAGE]	nvarchar(50)	NULL,

	[CURRENTINCOTHERTOTAL]	decimal(18,3)	NULL,

	[CURRENTINCOMETOTAL]	decimal(18,3)	NULL,

	[TOTALCURRENTINCOME]	decimal(18,3)	NULL,

	[ATTR_SPOUSE_INFO]	nchar(1)	NULL,

	[ON_NOTE_BORROWERS]	int	NULL,

	[CALL_CONSENT_PREFER]	nchar(1)	NULL,

	[HASCHECKINGACCT_WITHCU]	nvarchar(8)	NULL,

	[HASSAVINGACCT_WITHCU]	nvarchar(8)	NULL,

	[CURRENT_CUSTOMERID]	nvarchar(30)	NULL,

	[ISCUSTOMER_STATUS_VERIFIED]	nvarchar(8)	NULL,

	[ISCURRENTCUSTOMER]	nvarchar(8)	NULL,

	[HMDA_DISC_NOTICE]	nchar(1)	NULL,

	[CRDTSCORE_MODEL_OTHDESC_OVR]	nvarchar(100)	NULL,

	[PERSON_RECORD_FOUND]	nchar(1)	NULL,

	[MOTHERS_MAIDEN]	nvarchar(100)	NULL,

	[APP_DISCL_READ]	nchar(1)	NULL,

	[S_ELIGIBLE_TYPE]	nvarchar(8)	NULL,

	[ELIGIBLE_CODE]	nvarchar(20)	NULL,

	[ELIGIBLE_TEXT]	nvarchar(400)	NULL,

CONSTRAINT [PK_GF_TLBR_ADDITIONALDATA] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	)
);
CREATE TABLE [dbo].[GF_TLBR_ALIAS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[FIRST_NAME]	nvarchar(30)	NULL,

	[MID_NAME]	nvarchar(30)	NULL,

	[LAST_NAME]	nvarchar(30)	NULL,

	[S_BORR_ALIAS]	nvarchar(8)	NULL,

	[NAME_SUFFIX]	nvarchar(20)	NULL,

	[ALIAS_TYPE_OTH_DESC]	nvarchar(80)	NULL,

	[CREDITORNAME]	nvarchar(120)	NULL,

	[ALIASACCTNUM]	nvarchar(25)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

CONSTRAINT [PK_GF_TLBR_ALIAS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLBR_ASSIST_PROGRAMS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[GIFTCTR]	smallint	NOT NULL,

	[FUNDS_RESERVED]	nchar(1)	NULL,

	[FUNDS_FRONTED]	nchar(1)	NULL,

	[GRANT_CRA_CODE]	nvarchar(30)	NULL,

	[PROGRAM_EXP]	datetime	NULL,

	[S_ASSIST_TYPE]	nvarchar(8)	NULL,

	[REPAY_TERM]	smallint	NULL,

	[REPAY_RATE]	decimal(16,6)	NULL,

	[REPAY_PMT]	decimal(18,3)	NULL,

	[GRANT_LOAN_NUM]	nchar(20)	NULL,

	[AGENCY_APP_DATE]	datetime	NULL,

	[AHP_PROJECT]	nchar(40)	NULL,

	[REPAY_REQ]	nchar(1)	NULL,

	[ALLOW_AP_EXCEPT]	nchar(1)	NULL,

	[PROVIDER_EIN]	nvarchar(10)	NULL,

	[S_ASSIST_PVDR_TYP]	nvarchar(8)	NULL,

	[AP_OTH_DESC]	nvarchar(80)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[ASSETCTR]	smallint	NULL,

CONSTRAINT [PK_GF_TLBR_ASSIST_PROGRAMS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [GIFTCTR]

	)
);
CREATE TABLE [dbo].[GF_TLBR_BORROWERID]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[PADBID]	nchar(5)	NULL,

	[PASERIALNO]	int	NULL,

	[IDENTIFICATION_TYPE]	nvarchar(8)	NULL,

	[IDENTIFICATION_NUMBER]	nvarchar(100)	NULL,

	[IDENTIFICATION_ORIGIN]	nvarchar(100)	NULL,

	[IDENTIFICATION_DATE]	datetime	NULL,

	[IDENTIFICATION_EXP]	datetime	NULL,

	[PICTUREID]	nchar(1)	NULL,

	[COUNTRY_DBCODE]	nvarchar(35)	NULL,

	[COUNTRY_CODE_A2]	nvarchar(3)	NULL,

	[BORROWERID_STATE]	nvarchar(2)	NULL,

CONSTRAINT [PK_GF_TLBR_BORROWERID] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLBR_CREDIT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[F_SCORE]	smallint	NULL,

	[B_SCORE]	smallint	NULL,

	[E_SCORE]	smallint	NULL,

	[C_SCORE]	smallint	NULL,

	[L_SCORE]	smallint	NULL,

	[MAN_OVERRIDE]	smallint	NULL,

	[CREDIT_SOURCE]	nvarchar(25)	NULL,

	[LINK]	nchar(1)	NULL,

CONSTRAINT [PK_GF_TLBR_CREDIT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLBR_CREDIT_SCORE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[SCOREID]	int	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[BNUM]	smallint	NULL,

	[SOURCE_TYPE]	nvarchar(8)	NULL,

	[SCORE_DATE]	datetime	NULL,

	[REASON_TYPE]	nvarchar(8)	NULL,

	[MODEL_TYPE]	nvarchar(8)	NULL,

	[OTHER_DESCRIPTION]	nvarchar(80)	NULL,

	[SCORE_VALUE]	decimal(16,6)	NULL,

	[BORROWER_ID]	nvarchar(20)	NOT NULL,

	[CREDREPOSSRCTYPEOTHERDESC]	nvarchar(50)	NULL,

	[FACTAINQUIRIESINDICATOR]	nchar(1)	NULL,

	[RANK_PERCENTILE]	int	NULL,

CONSTRAINT [PK_GF_TLBR_CREDIT_SCORE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	, [SCOREID]

	, [DBID]

	, [BORROWER_ID]

	)
);
CREATE TABLE [dbo].[GF_TLBR_DEPENDENTS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[FIRST_NAME]	nvarchar(30)	NULL,

	[MIDDLE_NAME]	nvarchar(30)	NULL,

	[LAST_NAME]	nvarchar(30)	NULL,

	[AGE]	smallint	NULL,

	[SSN]	nvarchar(9)	NULL,

	[DOB]	datetime	NULL,

CONSTRAINT [PK_GF_TLBR_DEPENDENTS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLBR_EMPLOYER]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[EMPID]	smallint	NOT NULL,

	[TITLE]	nvarchar(30)	NULL,

	[BUSTYPE]	nvarchar(30)	NULL,

	[SUPERVSR]	nvarchar(35)	NULL,

	[INCMNAME]	nvarchar(50)	NULL,

	[ADDR1]	nvarchar(35)	NULL,

	[ADDR2]	nvarchar(35)	NULL,

	[CITY]	nvarchar(35)	NULL,

	[STATE]	nchar(2)	NULL,

	[ZIP]	nvarchar(10)	NULL,

	[PHONE]	nvarchar(11)	NULL,

	[PHONEXT]	nvarchar(6)	NULL,

	[ATTNOF]	nvarchar(35)	NULL,

	[FAXNO]	nvarchar(11)	NULL,

	[ID]	nvarchar(12)	NULL,

	[EMPDFROM]	datetime	NULL,

	[EMPDTO]	datetime	NULL,

	[YRSATJOB]	smallint	NULL,

	[YRSINPRO]	smallint	NULL,

	[PRIMARY_EMPLOYER]	nchar(1)	NULL,

	[TYPEFLAG]	nchar(1)	NULL,

	[SELFEMPL]	nchar(1)	NULL,

	[PERCBUSOWN]	decimal(16,6)	NULL,

	[S_JOB_TYPE]	nvarchar(8)	NULL,

	[OVRTIME_CONT]	nvarchar(25)	NULL,

	[PROB_CONT_EMPLOY]	nvarchar(25)	NULL,

	[OTHERINCTYPEDESC]	nvarchar(80)	NULL,

	[S_SPECBOREMPRELTYPE]	nvarchar(8)	NULL,

	[OTHERSPECBOREMPRELTYPEDSC]	nvarchar(80)	NULL,

	[IS_EMPLOYED_ABROAD]	nchar(1)	NULL,

	[COUNTRY]	nvarchar(10)	NULL,

	[MONTHS_AT_JOB]	smallint	NULL,

	[MONTHS_IN_PROFESSION]	smallint	NULL,

CONSTRAINT [PK_GF_TLBR_EMPLOYER] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [EMPID]

	)
);
CREATE TABLE [dbo].[GF_TLBR_ETHNICITY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ETHNICITY_CTR]	int	NOT NULL,

	[S_ETHNICITY]	nvarchar(8)	NULL,

	[FURNISH_INFO_YN]	nchar(1)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

CONSTRAINT [PK_GF_TLBR_ETHNICITY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ETHNICITY_CTR]

	)
);
CREATE TABLE [dbo].[GF_TLBR_HOUSNG_PRSNT_OTH]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[CTR]	smallint	NOT NULL,

	[OTHER_HOUSING_EXP_AMT]	decimal(18,3)	NULL,

	[OTHER_HOUSING_EXP_DESC]	nvarchar(128)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

CONSTRAINT [PK_GF_TLBR_HOUSNG_PRSNT_OTH] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [CTR]

	)
);
CREATE TABLE [dbo].[GF_TLBR_RACE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[S_RACE]	nvarchar(8)	NULL,

	[OTHER_AMERICAN_DESC]	nvarchar(100)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

CONSTRAINT [PK_GF_TLBR_RACE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLBR_RAW_SCORES]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[CREDIT_REPORT_ID]	nvarchar(20)	NULL,

	[CREDIT_REP_SOURCE]	nvarchar(8)	NULL,

	[CREDIT_SCORE_DATE]	datetime	NULL,

	[CRDT_SC_EXCLU_REASON]	nvarchar(8)	NULL,

	[CRDT_SC_MODEL_NAME]	nvarchar(8)	NULL,

	[MODEL_OTHER_DESC]	nvarchar(80)	NULL,

	[CREDIT_SCORE_VALUE]	decimal(16,6)	NULL,

	[OTHER_SOURCE]	nvarchar(80)	NULL,

	[RANK_PERCENTILE]	int	NULL,

CONSTRAINT [PK_GF_TLBR_RAW_SCORES] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLBR_SUBETHNICITY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[SUBETHNICITY_CTR]	int	NOT NULL,

	[S_SUBETHNICITY]	nvarchar(8)	NULL,

	[OTHER_DESC]	nvarchar(100)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

CONSTRAINT [PK_GF_TLBR_SUBETHNICITY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [SUBETHNICITY_CTR]

	)
);
CREATE TABLE [dbo].[GF_TLBR_SUBRACE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[SUBRACE_CTR]	int	NOT NULL,

	[S_SUBRACE]	nvarchar(8)	NULL,

	[OTHER_ASIAN_DESC]	nvarchar(100)	NULL,

	[OTHER_PACISLDR_DESC]	nvarchar(100)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

CONSTRAINT [PK_GF_TLBR_SUBRACE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [SUBRACE_CTR]

	)
);
CREATE TABLE [dbo].[GF_TLR_CREDIT_RESPONSE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[VERSION_IDENT]	nvarchar(20)	NULL,

	[CREDIT_REPORT_IDENT]	nvarchar(20)	NULL,

	[FIRST_ISSUE_DATE]	datetime	NULL,

	[LAST_UPDATE_DATE]	datetime	NULL,

	[MERGE_TYPE]	nvarchar(8)	NULL,

	[REPORT_TYPE]	nvarchar(8)	NULL,

	[REPORT_TYPE_OTHER]	nvarchar(35)	NULL,

	[RATEING_CODE_TYPE]	nvarchar(8)	NULL,

	[RATING_TYPE_OTHER]	nvarchar(35)	NULL,

	[EQUIFAX_INDC]	nchar(1)	NULL,

	[EXPERIAN_INDC]	nchar(1)	NULL,

	[TRANSUNION_INDC]	nchar(1)	NULL,

	[OTHER_REPOSITORY_NAME]	nvarchar(35)	NULL,

	[CREDITREPORTTRANSID]	nvarchar(20)	NULL,

	[CREDIT_RESP_IMPORT_XML]	nvarchar(max)	NULL,

CONSTRAINT [PK_GF_TLR_CREDIT_RESPONSE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	, [DBID]

	)
);
CREATE TABLE [dbo].[GF_TLR_DISBURSEMENTS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[MODIFIED_USERID]	int	NULL,

	[S_FMETHOD]	nvarchar(8)	NULL,

	[S_FSTATUS]	nvarchar(8)	NULL,

	[S_DMETHOD]	nvarchar(8)	NULL,

	[AMOUNT]	decimal(16,6)	NULL,

	[PAYEE_NAME]	nvarchar(35)	NULL,

	[PAYEE_ADDRESS]	nvarchar(35)	NULL,

	[PAYEE_CITY]	nvarchar(35)	NULL,

	[PAYEE_STATE]	nvarchar(2)	NULL,

	[PAYEE_ZIP]	nvarchar(10)	NULL,

	[ISSUEDATE]	datetime	NULL,

	[REQDATE]	datetime	NULL,

	[S_TYPE]	nvarchar(8)	NULL,

	[S_FUNDLOC]	nvarchar(8)	NULL,

	[ROUTENUM]	nvarchar(35)	NULL,

	[ACCOUNTNUM]	nvarchar(35)	NULL,

	[TRANSNUM]	nvarchar(35)	NULL,

	[TRANSREF]	nvarchar(35)	NULL,

	[BENNAME]	nvarchar(50)	NULL,

	[BENACCTNUM]	nvarchar(35)	NULL,

	[BENNOTES]	nvarchar(256)	NULL,

	[BENFILEREFNUM]	nvarchar(80)	NULL,

	[BENBANKNAME]	nvarchar(35)	NULL,

	[BENABANUM]	nvarchar(10)	NULL,

	[BENLOCATION]	nvarchar(35)	NULL,

	[BENBANKNOTES]	nvarchar(256)	NULL,

	[BFDUSED]	nchar(1)	NULL,

	[BFDOVERRIDE]	nchar(1)	NULL,

	[BFDBANKNAME]	nvarchar(35)	NULL,

	[BFDABANUM]	nvarchar(10)	NULL,

	[BFDLOCATION]	nvarchar(35)	NULL,

	[BFDBANKNOTES]	nvarchar(80)	NULL,

	[IBDUSED]	nchar(1)	NULL,

	[IBDOVERRIDE]	nchar(1)	NULL,

	[IBDBANKNAME]	nvarchar(35)	NULL,

	[IBDABANUM]	nvarchar(10)	NULL,

	[IBDLOCATION]	nvarchar(35)	NULL,

	[IBDBANKNOTES]	nvarchar(80)	NULL,

	[DATE_PROCESSED]	datetime	NULL,

	[CONFIRMED_YN]	nchar(1)	NULL,

	[DATE_CONFIRMED]	datetime	NULL,

	[FROM_GL_ACCT]	nvarchar(20)	NULL,

	[TO_GL_ACCT]	nvarchar(20)	NULL,

	[BATCHID]	int	NULL,

	[CANCEL_OR_VOID]	nchar(1)	NULL,

	[DATE_TERMINATED]	datetime	NULL,

	[DISB_DESCRIPTION]	nvarchar(150)	NULL,

	[PROCESS_YN]	nchar(1)	NULL,

	[PAYEE_ADDRESS2]	nvarchar(35)	NULL,

	[PAYEE_TITLE]	nvarchar(35)	NULL,

	[WIRE_BANK_CID]	int	NULL,

	[WIRECTR]	int	NULL,

	[BEN_CREDIT_TO_ACCT]	nvarchar(30)	NULL,

	[BEN_CREDIT_TO_NAME]	nvarchar(30)	NULL,

	[PAYEE_COUNTRY]	nvarchar(35)	NULL,

	[WIRE_CONFIRMATION_NBR]	nvarchar(25)	NULL,

	[DISBDESC]	nvarchar(150)	NULL,

	[ACH_ACCOUNT_TYPE]	varchar(8)	NULL,

	[ACH_DEBIT_OR_CREDIT]	varchar(8)	NULL,

	[ACH_ROUTING_NUMBER]	varchar(30)	NULL,

	[ACH_ACCOUNT_NUMBER]	varchar(30)	NULL,

	[W_APPRVDBY1]	nvarchar(30)	NULL,

	[W_REQUESTEDDT]	datetime	NULL,

	[W_REQUESTEDBY]	nvarchar(30)	NULL,

	[W_APPRVDBY2]	nvarchar(30)	NULL,

	[W_APPRVDDT1]	datetime	NULL,

	[W_APPRVDDT2]	datetime	NULL,

CONSTRAINT [PK_GF_TLR_DISBURSEMENTS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLR_DISCL_DATA]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[APR]	decimal(16,6)	NULL,

	[FINANCE_CHARGE_AMOUNT]	decimal(18,3)	NULL,

	[FINANCED_AMOUNT]	decimal(18,3)	NULL,

	[TOTAL_PAYMENT_AMOUNT]	decimal(18,3)	NULL,

	[YSP_AMOUNT]	decimal(18,3)	NULL,

	[DISCL_LOAN_AMOUNT]	decimal(18,3)	NULL,

	[DISCL_CLOSING_COSTS]	decimal(18,3)	NULL,

	[DISCL_REVIEW_TILA]	nvarchar(20)	NULL,

	[DISCL_LOAN_TYPE]	nvarchar(20)	NULL,

	[DISCL_PROGRAM]	nvarchar(20)	NULL,

	[DISCL_PAYMENT_STREAM]	nvarchar(20)	NULL,

	[DISCL_MI_PLAN]	nvarchar(20)	NULL,

	[DISCL_OCCUPANCY]	nvarchar(20)	NULL,

	[INT_RATE]	decimal(16,6)	NULL,

	[DISCL_BORROWER_COUNT]	int	NULL,

	[VERBALDISC]	nchar(1)	NULL,

CONSTRAINT [PK_GF_TLR_DISCL_DATA] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ROWSERIALNO]

	, [DBID]

	)
);
CREATE TABLE [dbo].[GF_TLR_FLOOD_DETMN]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[FLOODRESPONSEID]	int	NOT NULL,

	[FLOOD_CERT_ID]	nvarchar(35)	NULL,

	[FLOOD_CERT_DATE]	datetime	NULL,

	[FLOOD_CERT_TRANS_IND]	nchar(1)	NULL,

	[FLOOD_CERT_LIFELOAN]	nchar(1)	NULL,

	[FLOOD_SFHA_IND]	nchar(1)	NULL,

	[FLOOD_PARTIAL_IND]	nchar(1)	NULL,

	[PROP_ADDR2]	nvarchar(35)	NULL,

	[PROP_ADDR1]	nvarchar(35)	NULL,

	[PROP_CITY]	nvarchar(35)	NULL,

	[PROP_STATE]	nvarchar(2)	NULL,

	[PROP_ZIP]	nvarchar(10)	NULL,

	[REG_AGENCY_LENDER_ID]	nvarchar(35)	NULL,

	[FLLOD_INSURANCE_AMT]	decimal(18,3)	NULL,

	[NFIP_COMMUNITY_NAME]	nvarchar(40)	NULL,

	[NFIP_COUNTY]	nvarchar(35)	NULL,

	[NFIP_STATE_CODE]	nvarchar(2)	NULL,

	[NFIP_COMMUNITY_ID]	nvarchar(6)	NULL,

	[NFIP_START_DATE]	datetime	NULL,

	[NFIP_MAP_ID]	nvarchar(11)	NULL,

	[NFIP_MAP_PANEL_ID]	nvarchar(5)	NULL,

	[NFIP_MAP_PANEL_DATE]	datetime	NULL,

	[NFIP_MAP_PANEL_SUFFIX]	nvarchar(1)	NULL,

	[NFIP_FLOOD_REV_TYPE]	nvarchar(8)	NULL,

	[NFIP_MAP_DATE]	datetime	NULL,

	[NFIP_FLOOD_ZONE_ID]	nvarchar(35)	NULL,

	[NFIP_MAP_IND]	nchar(1)	NULL,

	[NFIP_STATUS_TYPE]	nvarchar(8)	NULL,

	[PROTECTED_AREA_IND]	nchar(1)	NULL,

	[PROTECTED_AREA_DATE]	datetime	NULL,

	[SELECTED_FOR_LOAN_IND]	nchar(1)	NULL,

	[NFIP_COMM_FIRM_DATE]	datetime	NULL,

	[FLOOD_CHECK_IDENTIFIER]	nvarchar(35)	NULL,

	[FLOOD_PRODUCT_CERTIFY_DATE]	datetime	NULL,

CONSTRAINT [PK_GF_TLR_FLOOD_DETMN] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [RESPONSEID]

	, [FLOODRESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLR_FUNDITEM]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[TRANS_COUNTER]	int	NOT NULL,

	[TRANS_DBID]	nchar(5)	NOT NULL,

	[SOURCE_XREF]	nvarchar(80)	NULL,

	[MODIFIED_DATE]	datetime	NULL,

	[MODIFIED_USER]	nvarchar(30)	NULL,

	[DESCRIPT]	nvarchar(255)	NULL,

	[AMOUNT]	decimal(16,6)	NULL,

	[OMIT_FROM_FUNDING]	nchar(1)	NULL,

	[ACTION_TO_TAKE]	nvarchar(15)	NULL,

	[ITEM_STATUS]	nvarchar(15)	NULL,

	[GL_TRANS_CODE]	nvarchar(3)	NULL,

	[BATCHID]	int	NULL,

	[SOURCE_DISPLAY]	nvarchar(40)	NULL,

	[SRC_FLDNAME]	nvarchar(40)	NULL,

	[SRC_CODE]	nvarchar(8)	NULL,

CONSTRAINT [PK_GF_TLR_FUNDITEM] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [TRANS_COUNTER]

	, [TRANS_DBID]

	)
);
CREATE TABLE [dbo].[GF_TLR_INSURANCE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[S_INSTYPE]	nvarchar(8)	NULL,

	[COVAMNT]	decimal(18,3)	NULL,

	[MINCOVER]	decimal(18,3)	NULL,

	[PREMAMT]	decimal(18,3)	NULL,

	[COVERPER]	int	NULL,

	[POLICYNO]	nvarchar(20)	NULL,

	[FILENUM]	nvarchar(20)	NULL,

	[EFFINSDT]	datetime	NULL,

	[INSEXPDT]	datetime	NULL,

	[BINDEXPD]	datetime	NULL,

	[PAYEECDE]	nvarchar(20)	NULL,

	[ESCRITEM]	nchar(1)	NULL,

	[COMPNAME]	nvarchar(35)	NULL,

	[INSADDR1]	nvarchar(35)	NULL,

	[INSADDR2]	nvarchar(35)	NULL,

	[INSCITY]	nvarchar(25)	NULL,

	[INSSTATE]	nvarchar(2)	NULL,

	[INSZIP]	nvarchar(10)	NULL,

	[INSPHONE]	nvarchar(10)	NULL,

	[INSFAX]	nvarchar(10)	NULL,

	[AGENTNAME]	nvarchar(100)	NULL,

	[GUAR_REPL_COST]	nchar(1)	NULL,

	[INSURANCE_TERM]	nvarchar(8)	NULL,

	[NEXT_DUE_DATE]	datetime	NULL,

	[INS_PAID_RECEIPT]	nchar(1)	NULL,

	[INS_DEDUCTIBLE]	decimal(18,3)	NULL,

	[COVERAGETYPEDESC]	nvarchar(255)	NULL,

	[CUSHION]	decimal(16,6)	NULL,

	[MASTER_POLICY_IND]	nchar(1)	NULL,

	[COLFIRSTYR]	nchar(1)	NULL,

	[RATE_CHARGED_ON_COST]	decimal(16,6)	NULL,

	[PMTOPTDBID]	nchar(5)	NULL,

	[PMTOPTSERNO]	int	NULL,

	[S_OTH_INS_TYPE_DESC]	nvarchar(60)	NULL,

	[HUDLINE]	smallint	NULL,

	[POLICY_TERM]	int	NULL,

	[S_ESCINS]	nvarchar(8)	NULL,

	[ASSETID]	int	NULL,

	[DT_ORDERED]	datetime	NULL,

	[DT_EXPECTED]	datetime	NULL,

	[DT_RECEIVED]	datetime	NULL,

	[COVG_RESOLUTION]	nvarchar(8)	NULL,

	[INS_NOTES_DBID]	nchar(5)	NULL,

	[INS_NOTES_SN]	int	NULL,

	[REPLACE_COST]	numeric(16,6)	NULL,

	[DEDUCTIBLE]	numeric(16,6)	NULL,

	[SECURED_PARTY_INS]	nvarchar(8)	NULL,

	[SECURED_PARTY_INS_OTH]	nvarchar(35)	NULL,

	[APIADDLINFO]	nvarchar(80)	NULL,

	[INSEMAIL]	nvarchar(128)	NULL,

	[CIDINS_PROVIDER]	int	NULL,

	[CIDINS_AGENT]	int	NULL,

	[PREPAID_INS_MNTH]	int	NULL,

	[IS_INS_POLICY_EXIST]	nchar(1)	NULL,

	[PREFIRM_CONSTRUCTION]	nchar(1)	NULL,

	[REPLACEMENT_VALUE]	decimal(18,3)	NULL,

	[NFIP_MAX_COVERAGE]	decimal(18,3)	NULL,

	[MINIMUM_COVERAGE]	decimal(18,3)	NULL,

CONSTRAINT [PK_GF_TLR_INSURANCE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLR_PYMT_HIST]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[TRAN_DATE]	datetime	NULL,

	[DUE_DATE]	datetime	NULL,

	[PRINCIPAL]	decimal(18,3)	NULL,

	[INTEREST]	decimal(16,6)	NULL,

	[ESCROW]	decimal(18,3)	NULL,

	[LT_CHRG]	decimal(18,3)	NULL,

	[PRIN_BAL]	decimal(18,3)	NULL,

	[USERNAME]	nvarchar(128)	NULL,

	[TOTAL_PYMT]	decimal(18,3)	NULL,

	[ESCROW_BAL]	decimal(18,3)	NULL,

	[TRAN_TYPE]	nvarchar(20)	NULL,

	[CHECK_NUMBER]	nvarchar(30)	NULL,

	[NOTES]	nvarchar(100)	NULL,

	[EFFECTIVE_DATE]	datetime	NULL,

	[BUYDOWN_INT]	decimal(16,6)	NULL,

CONSTRAINT [PK_GF_TLR_PYMT_HIST] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLR_REG_O]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[BOD_APPROVAL]	nchar(1)	NULL,

	[O_DATE]	datetime	NULL,

	[OFFICER_TITLE]	nvarchar(40)	NULL,

	[NUMBER_OF_SHARES]	int	NULL,

	[REG_O_BORROWER]	nchar(1)	NULL,

	[EMPLOYEE_BORROWER]	nchar(1)	NULL,

	[S_EMP_REGO_TYPE]	nvarchar(8)	NULL,

	[EXEC_EDUC]	nchar(1)	NULL,

	[EXEC_OFFIC_OTH]	nvarchar(30)	NULL,

	[EXEC_OFFIC_YN]	nvarchar(30)	NULL,

	[EXEC_FIRST_LIEN]	nvarchar(30)	NULL,

	[BOD_APPROVAL_DATE]	datetime	NULL,

	[COMMITTEE_APPROVAL]	nchar(1)	NULL,

CONSTRAINT [PK_GF_TLR_REG_O] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	)
);
CREATE TABLE [dbo].[GF_TLR_REOWNED_BORROWERS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[REOCNTR]	smallint	NOT NULL,

	[REL_DBID]	nchar(5)	NOT NULL,

	[REL_BNUM]	smallint	NOT NULL,

CONSTRAINT [PK_GF_TLR_REOWNED_BORROWERS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [REOCNTR]

	, [REL_DBID]

	, [REL_BNUM]

	)
);
CREATE TABLE [dbo].[GF_TLR_REQ_CREDIT_LIAB_REP]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[REQUESTID]	int	NOT NULL,

	[CREDITREQUESTID]	int	NOT NULL,

	[LIABILITYID]	int	NOT NULL,

	[REPOSITORYID]	int	NOT NULL,

	[SOURCE_TYPE]	nvarchar(8)	NULL,

	[SUBSCRIBER_ID]	nvarchar(20)	NULL,

	[SOURCE_TYPE_OTHER]	nvarchar(50)	NULL,

CONSTRAINT [PK_GF_TLR_REQ_CREDIT_LIAB_REP] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [REQUESTID]

	, [CREDITREQUESTID]

	, [LIABILITYID]

	, [REPOSITORYID]

	)
);
CREATE TABLE [dbo].[GF_TLR_REQ_NADA]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[REQUESTID]	int	NOT NULL,

	[NADAREQUESTID]	int	NOT NULL,

	[VIN]	nvarchar(20)	NULL,

	[REGION]	nvarchar(50)	NULL,

	[VEHICLEYEAR]	nvarchar(4)	NULL,

	[MAKE]	nvarchar(50)	NULL,

	[SERIES]	nvarchar(50)	NULL,

	[BODY]	nvarchar(50)	NULL,

	[MILEAGE]	int	NULL,

CONSTRAINT [PK_GF_TLR_REQ_NADA] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [REQUESTID]

	, [NADAREQUESTID]

	)
);
CREATE TABLE [dbo].[GF_TLR_REQUESTS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[REQUESTID]	int	NOT NULL,

	[TIMESTAMP]	datetime	NULL,

CONSTRAINT [PK_GF_TLR_REQUESTS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [REQUESTID]

	)
);
CREATE TABLE [dbo].[GF_TLR_RES_CRD_FILE_ALIAS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[CREDITFILEID]	nvarchar(50)	NOT NULL,

	[BORROWER_ID]	nvarchar(20)	NOT NULL,

	[ALIAS_ID]	int	NOT NULL,

	[FIRSTNAME]	nvarchar(35)	NULL,

	[MIDDLENAME]	nvarchar(35)	NULL,

	[LASTNAME]	nvarchar(35)	NULL,

	[NAMESUFFIX]	nvarchar(20)	NULL,

	[UNPARSEDNAME]	nvarchar(90)	NULL,

CONSTRAINT [PK_GF_TLR_RES_CRD_FILE_ALIAS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	, [CREDITFILEID]

	, [BORROWER_ID]

	, [ALIAS_ID]

	)
);
CREATE TABLE [dbo].[GF_TLR_RES_CREDIT_FILE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[CREDITFILEID]	nvarchar(50)	NOT NULL,

	[BORROWER_ID]	nvarchar(20)	NOT NULL,

	[CREDITSCOREID]	nvarchar(20)	NULL,

	[REPOSITORY_SOURCE_TYPE]	nvarchar(10)	NULL,

	[INFILE_DATE]	datetime	NULL,

	[BNUM]	smallint	NULL,

	[S_RESULTSTATUSTYPE]	nvarchar(8)	NULL,

	[RESULTSTATUSTTHERDESC]	nvarchar(50)	NULL,

	[CREDREPOSSRCTYPEOTHERDESC]	nvarchar(50)	NULL,

CONSTRAINT [PK_GF_TLR_RES_CREDIT_FILE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	, [CREDITFILEID]

	, [BORROWER_ID]

	)
);
CREATE TABLE [dbo].[GF_TLR_RES_CREDIT_INQUIRY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[INQUIRYID]	int	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[PRIMARY_BNUM]	smallint	NULL,

	[PRIMARY_DBID]	nvarchar(5)	NULL,

	[SECONDARY_BNUM]	int	NULL,

	[SECONDARY_DBID]	nvarchar(5)	NULL,

	[NAME]	nvarchar(35)	NULL,

	[ADDRESS1]	nvarchar(35)	NULL,

	[ADDRESS2]	nvarchar(35)	NULL,

	[CITY]	nvarchar(35)	NULL,

	[STATE]	nvarchar(2)	NULL,

	[POSTAL_CODE]	nvarchar(9)	NULL,

	[DATE_OF_INQUIRY]	datetime	NULL,

	[INQUIRY_RESULT_TYPE]	nvarchar(8)	NULL,

	[CREDIT_BUSINESS_TYPE]	nvarchar(8)	NULL,

	[CREDIT_LOAN_TYPE]	nvarchar(8)	NULL,

	[TYPE_OTHER_DESC]	nvarchar(35)	NULL,

	[CREDITLIABILITYID]	nvarchar(20)	NULL,

CONSTRAINT [PK_GF_TLR_RES_CREDIT_INQUIRY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	, [INQUIRYID]

	, [DBID]

	)
);
CREATE TABLE [dbo].[GF_TLR_RES_CREDIT_LIABILITY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[LIABILITYID]	int	NOT NULL,

	[PRIMARY_BNUM]	smallint	NULL,

	[PRIMARY_DBID]	nchar(5)	NULL,

	[SECONDARY_BNUM]	int	NULL,

	[SECONDARY_DBID]	nchar(5)	NULL,

	[CREDIT_TRADEID]	nvarchar(20)	NULL,

	[CLOSE_DATE]	datetime	NULL,

	[ACCOUNT_IDENTIFIER]	nvarchar(20)	NULL,

	[OPENED_DATE]	datetime	NULL,

	[OWNERSHIP_TYPE]	nvarchar(8)	NULL,

	[PAID_DATE]	datetime	NULL,

	[REPORTED_DATE]	datetime	NULL,

	[STATUS_DATE]	datetime	NULL,

	[ACCOUNT_STATUS_TYPE]	nvarchar(8)	NULL,

	[ACCOUNT_TYPE]	nvarchar(8)	NULL,

	[BALLOON_PAYMENT]	decimal(18,3)	NULL,

	[CHARGE_OFF_AMOUNT]	decimal(18,3)	NULL,

	[CHARGE_OFF_DATE]	datetime	NULL,

	[COLATERAL_DESC]	nvarchar(80)	NULL,

	[CONSUMER_DISPUTE_INDC]	nchar(1)	NULL,

	[CREDIT_LIMIT_AMOUNT]	decimal(18,3)	NULL,

	[DEROGATORY_INDC]	nchar(1)	NULL,

	[HIGH_BALANCE]	decimal(18,3)	NULL,

	[HIGH_CREDIT]	decimal(18,3)	NULL,

	[LAST_ACTIVITY_DATE]	datetime	NULL,

	[MANUAL_UPDATE_INDC]	nchar(1)	NULL,

	[MONTHLY_AMOUNT]	decimal(18,3)	NULL,

	[MONTHS_REMAINING]	smallint	NULL,

	[MONTHS_REVIEWED]	smallint	NULL,

	[ORIGINAL_CREDITOR_NAME]	nvarchar(35)	NULL,

	[PAST_DUE_AMOUNT]	decimal(18,3)	NULL,

	[TERMS_DESC]	nvarchar(80)	NULL,

	[TERMS_MONTHS]	smallint	NULL,

	[TERMS_SOURCE_TYPE]	nvarchar(8)	NULL,

	[UNPAID_BALANCE]	decimal(18,3)	NULL,

	[CREDIT_BUSINESS_TYPE]	nvarchar(8)	NULL,

	[CREDIT_LOAN_TYPE]	nvarchar(8)	NULL,

	[CREDIT_LOAN_OTHER_DESC]	nvarchar(80)	NULL,

	[CURRENT_RATING_CODE]	nvarchar(20)	NULL,

	[CURRENT_RATING_TYPE]	nvarchar(8)	NULL,

	[LATE_30_DAYS]	smallint	NULL,

	[LATE_60_DAYS]	smallint	NULL,

	[LATE_90_DAYS]	smallint	NULL,

	[RECENT_ADVERSE_AMOUNT]	decimal(18,3)	NULL,

	[RECENT_ADVERSE_CODE]	nvarchar(20)	NULL,

	[RECENT_ADVERSE_TYPE]	nvarchar(8)	NULL,

	[RECENT_ADVERSE_DATE]	datetime	NULL,

	[PATTERN_START_DATE]	datetime	NULL,

	[PAYMENT_PATTERN]	nvarchar(100)	NULL,

	[VERIFY_BY_NAME]	nvarchar(35)	NULL,

	[VERIFY_COMMENT]	nvarchar(80)	NULL,

	[VERIFY_DATE]	datetime	NULL,

	[VERIFY_STATUS_TYPE]	nvarchar(8)	NULL,

	[LATE120DAYS]	smallint	NULL,

	[CREDITLIABILITYID]	nvarchar(20)	NULL,

	[ACCOUNTBALANCEDATE]	datetime	NULL,

	[BALLOONPAYMENTDUEDATE]	datetime	NULL,

	[HIGHEST_ADVERSE_AMOUNT]	decimal(18,3)	NULL,

	[HIGHEST_ADVERSE_CODE]	nvarchar(20)	NULL,

	[HIGHEST_ADVERSE_TYPE]	nvarchar(8)	NULL,

	[HIGHEST_ADVERSE_DATE]	datetime	NULL,

	[CREDITCOUNSELINGINDICATOR]	nchar(1)	NULL,

CONSTRAINT [PK_GF_TLR_RES_CREDIT_LIABILITY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	, [LIABILITYID]

	)
);
CREATE TABLE [dbo].[GF_TLR_RES_CREDIT_SUMMARY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[CREDITRESPONSEID]	int	NOT NULL,

	[PRCNT_REV_CRED_AVAIL]	int	NULL,

	[TOTAL_INQ_COUNT]	int	NULL,

	[REALEST_LT30DAYS_CURDELINQ]	int	NULL,

	[TOTAL_LT60DAYS_CURDELINQ]	int	NULL,

	[REALEST_LATE60DAYS_CURDELINQ]	int	NULL,

	[REV_LATE60DAYS_CURDELINQ]	int	NULL,

	[TOTAL_LT90PLUSDAYS_CURDELINQ]	int	NULL,

	[REALEST_LT90PLUSDAYS_CURDELINQ]	int	NULL,

	[NEW_TRDS_IN6MONTHS]	int	NULL,

	[TOTAL_TRDLINES_COUNT]	int	NULL,

	[TOTAL_CLOSED_TRDLINES_COUNT]	int	NULL,

	[INST_TRDLINES_COUNT]	int	NULL,

	[INST_CLOSED_TRDLINES_COUNT]	int	NULL,

	[REALEST_TTRDLINES_COUNT]	int	NULL,

	[REALEST_CLOSED_TRDLINES_COUNT]	int	NULL,

	[REV_TRDLINES_COUNT]	int	NULL,

	[REV_CLOSED_TRDLINES_COUNT]	int	NULL,

	[REV_CURRENT_TRDLINES_COUNT]	int	NULL,

	[OTHER_CURRENT_TRDLINES_COUNT]	int	NULL,

	[INST_CURRENT_TRDLINES_COUNT]	int	NULL,

	[TOTAL_COLLECTIONS]	int	NULL,

	[OLDEST_TRADE_DATE]	datetime	NULL,

	[REALEST_CURRENT_TRDLINES_COUNT]	int	NULL,

	[TOTAL_CURRENT_TRDLINES_COUNT]	int	NULL,

	[REV_TRL_MTH_PMT_AMOUNT]	decimal(18,3)	NULL,

	[INST_TRL_MTH_PMT_AMOUNT]	decimal(18,3)	NULL,

	[IDENTITY_ON_FILEDATE]	datetime	NULL,

	[TERM]	nvarchar(30)	NULL,

	[INQ_AGE_DAYS]	nvarchar(30)	NULL,

	[ELIM_SAME_DAY_INQ_COUNT]	int	NULL,

	[INQ_ADJ_TOTAL]	int	NULL,

	[PAID_AS_AGREED]	int	NULL,

	[NOW_DELINQUENT]	int	NULL,

	[ALL_DELINQUENT]	int	NULL,

	[HIGHEST_HIGH_CREDIT]	int	NULL,

	[LOWEST_HIGH_CREDIT]	int	NULL,

	[HIST_DELINQ_COUNT]	int	NULL,

	[REV_OTHER_ACCOUNTSCOUNT]	int	NULL,

	[BAL_REVOLVING_OTHER]	int	NULL,

	[PMTS_REVOLVING_OTHER]	int	NULL,

	[REV_OTH_CREDIT_AVAILABLE]	int	NULL,

	[REV_OTH_CREDIT_PERCENT]	int	NULL,

	[TOTAL_TRL_BAL_AMT]	int	NULL,

	[TOTAL_TRL_MNTHLY_PMT_AMT]	int	NULL,

	[TOTAL_CUR_TRDLINES_COUNT]	int	NULL,

	[TOTAL_UNRATED_TRDLINES_COUNT]	int	NULL,

	[TOTAL_LT30DAYS_CURDELINQ]	int	NULL,

	[TOTAL_LT30DAYS_HISTDELINQ]	int	NULL,

	[TOTAL_LT60DAYS_HISTDELINQ]	int	NULL,

	[TOTAL_LT90PLUSDAYS_HISTDELINQ]	int	NULL,

	[REALEST_TRLBAL_AMOUNT]	decimal(18,3)	NULL,

	[REALEST_TRLMONTHLY_PMT_AMOUNT]	decimal(18,3)	NULL,

	[REALEST_UNRATED_TRDLINES_COUNT]	int	NULL,

	[REALEST_LT30DAYS_HISTDELINQ]	int	NULL,

	[REALEST_LT60DAYS_HISTDELINQ]	int	NULL,

	[REALEST_LT90PLSDAYS_HISTDELINQ]	int	NULL,

	[INST_TRL_BAL_AMOUNT]	decimal(18,3)	NULL,

	[INST_UNRATED_TRDLINES_COUNT]	int	NULL,

	[INST_LT30DAYS_CURDELINQ]	int	NULL,

	[INST_LT60DAYS_CURDELINQ]	int	NULL,

	[INST_LT90PLUSDAYS_CURDELINQ]	int	NULL,

	[INST_LT30DAYS_HISTDELINQ]	int	NULL,

	[INST_LT60DAYS_HISTDELINQ]	int	NULL,

	[INST_LT90PLUSDAYS_HISTDELINQ]	int	NULL,

	[REV_CREDITAVAILABLE]	int	NULL,

	[REV_CREDITTOTAL]	int	NULL,

	[REV_TRL_BAL_AMOUNT]	decimal(18,3)	NULL,

	[REV_UNRATED_TRDLINES_COUNT]	int	NULL,

	[REV_LT30DAYS_CURDELINQ]	int	NULL,

	[REV_LT60DAYS_CURDELINQ]	int	NULL,

	[REV_LT90PLUSDAYS_CURDELINQ]	int	NULL,

	[REV_LT30DAYS_HISTDELINQ]	int	NULL,

	[REV_LT60DAYS_HISTDELINQ]	int	NULL,

	[REV_LT90PLUSDAYS_HISTDELINQ]	int	NULL,

	[OTHER_CREDITAVAILABLE]	int	NULL,

	[OTHER_CREDITTOTAL]	int	NULL,

	[OTHER_TRDLINES_COUNT]	int	NULL,

	[OTHER_TRL_BAL_AMOUNT]	decimal(18,3)	NULL,

	[OTHER_TRL_MTH_PMT_AMOUNT]	decimal(18,3)	NULL,

	[OTHER_CLOSED_TRDLINES_COUNT]	int	NULL,

	[OTHER_UNRATED_TRDLINES_COUNT]	int	NULL,

	[OTHER_LT30DAYS_CURDELINQ]	int	NULL,

	[OTHER_LT60DAYS_CURDELINQ]	int	NULL,

	[OTHER_LT90PLUSDAYS_CURDELINQ]	int	NULL,

	[OTHER_LT30DAYS_HISTDELINQ]	int	NULL,

	[OTHER_LT60DAYS_HISTDELINQ]	int	NULL,

	[OTHER_LT90PLUSDAYS_HISTDELINQ]	int	NULL,

	[ANY_PUBREC_LAST_2YRS]	nchar(1)	NULL,

	[TOTAL_PRCOUNT]	int	NULL,

	[EFX_PUBREC_COUNT]	int	NULL,

	[TUC_PUBREC_COUNT]	int	NULL,

	[XPN_PUBREC_COUNT]	int	NULL,

CONSTRAINT [PK_GF_TLR_RES_CREDIT_SUMMARY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [RESPONSEID]

	, [CREDITRESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLR_RES_NADA_VAL]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[NADARESPONSEID]	int	NOT NULL,

	[BASE_VALUE_TRADEIN]	decimal(18,3)	NULL,

	[BASE_VALUE_LOAN]	decimal(18,3)	NULL,

	[BASE_VALUE_RETAIL]	decimal(18,3)	NULL,

	[ADJUSTED_VALUE_TRADEIN]	decimal(18,3)	NULL,

	[ADJUSTED_VALUE_LOAN]	decimal(18,3)	NULL,

	[ADJUSTED_VALUE_RETAIL]	decimal(18,3)	NULL,

	[MILEAGE_ADJ]	decimal(18,3)	NULL,

	[MSRP]	decimal(18,3)	NULL,

	[VALUE_SELECTED]	nchar(1)	NULL,

	[BASE_VALUE_LOAN_OVR]	decimal(18,3)	NULL,

	[ACCESS_VALUE_LOAN]	decimal(18,3)	NULL,

	[ACCESS_VALUE_TRADIN]	decimal(18,3)	NULL,

	[ACCESS_VALUE_RETAIL]	decimal(18,3)	NULL,

	[MILEAGE]	int	NULL,

	[MILEADJLOAN]	numeric(16,6)	NULL,

	[MILEADJRETAIL]	numeric(16,6)	NULL,

	[MILEADJTRADEIN]	numeric(16,6)	NULL,

	[WEIGHT]	int	NULL,

	[AVEMILEAGE]	int	NULL,

	[TRADEINVINACC]	numeric(16,6)	NULL,

	[TRADEINVINACCMILE]	numeric(16,6)	NULL,

	[LOANVINACC]	numeric(16,6)	NULL,

	[LOANVINACCMILE]	numeric(16,6)	NULL,

	[RETAILVINACC]	numeric(16,6)	NULL,

	[RETAILVINACCMILE]	numeric(16,6)	NULL,

	[AVGTRADEIN]	numeric(16,6)	NULL,

	[ROUGHTRADEIN]	numeric(16,6)	NULL,

	[BASE_VALUE_ROUGH_TRADEIN]	decimal(18,3)	NULL,

	[ACCESS_VALUE_ROUGH_TRADEIN]	decimal(18,3)	NULL,

	[TOTAL_VALUE_ROUGH_TRADEIN]	decimal(18,3)	NULL,

	[BASE_VALUE_CLEAN_TRADEIN]	decimal(18,3)	NULL,

	[ACCESS_VALUE_CLEAN_TRADEIN]	decimal(18,3)	NULL,

	[TOTAL_VALUE_CLEAN_TRADEIN]	decimal(18,3)	NULL,

	[BASE_VALUE_AVG_TRADEIN]	decimal(18,3)	NULL,

	[ACCESS_VALUE_AVG_TRADEIN]	decimal(18,3)	NULL,

	[TOTAL_VALUE_AVG_TRADEIN]	decimal(18,3)	NULL,

	[TOTAL_VALUE_RETAIL_TRADEIN]	decimal(18,3)	NULL,

	[ASSETID_LINKED_TO_RESP]	int	NULL,

	[VALUATIONID_LINKED_TO_RESP]	int	NULL,

CONSTRAINT [PK_GF_TLR_RES_NADA_VAL] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [RESPONSEID]

	, [NADARESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLR_RES_TITLE_TAX]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[TITLERESPONSEID]	int	NOT NULL,

	[TAXID]	nvarchar(50)	NULL,

	[LANDVALUE]	decimal(18,3)	NULL,

	[IMPROVEDVALUE]	decimal(18,3)	NULL,

	[TOTALVALUE]	decimal(18,3)	NULL,

CONSTRAINT [PK_GF_TLR_RES_TITLE_TAX] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [RESPONSEID]

	, [DBID]

	, [TITLERESPONSEID]

	)
);
CREATE TABLE [dbo].[GF_TLR_RESPONSE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[INTERNAL_ACCOUNT]	nvarchar(20)	NULL,

	[TIMESTAMP]	datetime	NULL,

	[DISPLAYFORLOAN]	nchar(1)	NULL,

	[CONTEXTNAME]	nvarchar(20)	NULL,

	[REQUESTID]	int	NULL,

	[VENDOR_NAME]	nvarchar(35)	NULL,

CONSTRAINT [PK_GF_TLR_RESPONSE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [RESPONSEID]

	, [DBID]

	)
);
CREATE TABLE [dbo].[GF_TLR_RSP_LP_LOANFDBCK]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[LPRESPONSEID]	int	NOT NULL,

	[LOANFEEDBACKID]	int	NOT NULL,

	[LPKEYIDENTIFIER]	nvarchar(8)	NULL,

	[LPLOANIDENTIFIER]	nvarchar(20)	NULL,

	[FRELPTRANSACTIONIDENTIFIER]	nvarchar(20)	NULL,

	[LPTRANSACTIONIDENTIFIER]	nvarchar(8)	NULL,

	[LENDERCASEIDENTIFIER]	nvarchar(15)	NULL,

	[LPSUBMISSIONNUMBER]	int	NULL,

	[LPSERVICEEVALUATIONTYPE]	nvarchar(45)	NULL,

	[LPEVALUATIONSTATUSTYPE]	nvarchar(14)	NULL,

	[LPSUBMISSIONDATE]	nvarchar(23)	NULL,

	[LPEVALUATIONDATE]	nvarchar(23)	NULL,

	[FREPURCHASEELIGIBILITYTYPE]	nvarchar(56)	NULL,

	[LPINITIALLTVRATIO]	decimal(16,6)	NULL,

	[LPINITIALTOTALLTVRATIO]	decimal(16,6)	NULL,

	[LPCREDITRISKCLASSTYPE]	nvarchar(7)	NULL,

	[LPDOCCLASSTYPE]	nvarchar(10)	NULL,

	[LPACCEPTPLUSELIGIBLEINDICATOR]	nchar(1)	NULL,

	[CREDSCOREDATAREPOSSRCTYPE]	nvarchar(15)	NULL,

	[SCOREDBORROWERNAME]	nvarchar(45)	NULL,

	[CREDITSCOREVALUE]	int	NULL,

	[HOUSINGRATIOPERCENT]	decimal(16,6)	NULL,

	[DEBTRATIOPERCENT]	decimal(16,6)	NULL,

	[LPRISKGRADEASSIGNEDTYPE]	nvarchar(5)	NULL,

	[FINANCINGCONCESSIONAMOUNT]	decimal(16,6)	NULL,

	[FRECASHOUTINDICATOR]	nchar(1)	NULL,

	[ORIGINATINGCOMPANYNAME]	nvarchar(250)	NULL,

	[SUBMITTINGCOMPANYNAME]	nvarchar(250)	NULL,

	[FRELOANPURPOSEDESCRIPTION]	nvarchar(25)	NULL,

	[FREPROPERTYCATEGORYDESC]	nvarchar(30)	NULL,

	[MORTGAGELOANLIMIT]	decimal(16,6)	NULL,

	[FREHIGHERTOTALLTV]	decimal(16,6)	NULL,

	[FREOCCUPANTHOUSINGRATIO]	decimal(16,6)	NULL,

	[FREOCCUPANTDEBTRATIO]	decimal(16,6)	NULL,

	[FRECREDITEXPIRATIONDATE]	nvarchar(10)	NULL,

	[FRECREDITSCORELTVFEELVLDESC]	nvarchar(20)	NULL,

	[FRELOANASSIGNMENTSTATUSDESC]	nvarchar(18)	NULL,

	[FREDOCUMENTATIONLEVELDESC]	nvarchar(20)	NULL,

	[FREHUDSCOREDINDICATOR]	nvarchar(1)	NULL,

	[ASSIGNFROMUNPARSEDNAME]	nvarchar(45)	NULL,

	[ASSIGNTOUNPARSEDNAME]	nvarchar(45)	NULL,

	[FRELOANRELEASEFROMUNPRSDNME]	nvarchar(45)	NULL,

	[FRELOANRELEASETOUNPARSEDNME]	nvarchar(45)	NULL,

	[FRELOANMSPASSIGNUNPRSDNME]	nvarchar(45)	NULL,

	[CREDITREPORTIDENTIFIER]	nvarchar(30)	NULL,

	[DOCCHECKLSTRPT]	nvarchar(5)	NULL,

	[DOCCHECKLST_SER]	int	NULL,

	[FEEDBACKRPT]	nvarchar(5)	NULL,

	[FEEDBACK_SER]	int	NULL,

	[MIFEEDBACKRPT]	nvarchar(5)	NULL,

	[MIFEEDBACK_SER]	int	NULL,

	[FEEDBACKREPORTIMAGEID]	nvarchar(100)	NULL,

	[MIFEEDBACKREPORTIMAGEID]	nvarchar(100)	NULL,

	[DOCCHECKLISTIMAGEID]	nvarchar(100)	NULL,

	[MERGEDCREDCERT]	nvarchar(5)	NULL,

	[MERGEDCRED_SER]	int	NULL,

	[LPERRORRPT]	nvarchar(5)	NULL,

	[LPERROR_SER]	int	NULL,

	[ERRORRPTIMAGEID]	nvarchar(100)	NULL,

	[MERGEDCREDITCERTIMAGEID]	nvarchar(100)	NULL,

	[S_CRWELIGIBILITYTYPE]	nvarchar(8)	NULL,

	[HVERPTIMAGEID]	nvarchar(100)	NULL,

	[MERGEDCREDITIMAGEID]	nvarchar(100)	NULL,

	[LPATTLASSETDEFICITAMT]	decimal(16,6)	NULL,

	[LPATTLTHRDPRTYVALIDATEAMT]	decimal(16,6)	NULL,

	[LPAPRODUCTIDENTIFIER]	nvarchar(5)	NULL,

	[LPAVERIFIEDASSETTOTALAMT]	decimal(16,6)	NULL,

	[LPACOLLREPANDWARRRELIEFDES]	nvarchar(30)	NULL,

	[LPAINCREPANDWARRRELIEF]	nvarchar(15)	NULL,

	[LPAGFTGRNTTTLCASHMARKETAMT]	decimal(16,6)	NULL,

	[LPATTLELIGIBLEASSETAMOUNT]	decimal(16,6)	NULL,

	[LPATTLFNDSTOVERIFIEDAMOUNT]	decimal(16,6)	NULL,

	[LPANONSUBPROPDBTTOPAIDOFF]	decimal(16,6)	NULL,

	[LPALIABILITYPTPAIDOFFAMT]	decimal(16,6)	NULL,

	[LPAPURCHASEPRICEAMOUNT]	decimal(16,6)	NULL,

	[LPATOTALDOWNPMTAMOUNT]	decimal(16,6)	NULL,

	[LPAHOUEXPPRESENTTTLMTLYAMT]	decimal(16,6)	NULL,

	[LPAHOUEXPPROPOSEDMNTLYAMT]	decimal(16,6)	NULL,

	[LPANONOCCBORRHEXPPRSNTPMT]	decimal(16,6)	NULL,

	[LPATTLSUBFINANCEPROCEEDAMT]	decimal(16,6)	NULL,

	[LPAPROJECTEDRESERVESAMT]	decimal(16,6)	NULL,

	[LPAQUALIFYINGPMTAMT]	decimal(16,6)	NULL,

	[LPATTLLIABLTYMNTHLYPMTAMT]	decimal(16,6)	NULL,

	[LPATTLMNTLYINCOMEAMT]	decimal(16,6)	NULL,

	[LPANONOCCUBORRTTLNHLIABPMT]	decimal(16,6)	NULL,

	[LPATTLREQUIREDFUNDSAMT]	decimal(16,6)	NULL,

	[LPATTLREQUIREDRESERVESAMT]	decimal(16,6)	NULL,

	[CREDIT_INFILE]	nvarchar(100)	NULL,

CONSTRAINT [PK_GF_TLR_RSP_LP_LOANFDBCK] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [RESPONSEID]

	, [LPRESPONSEID]

	, [LOANFEEDBACKID]

	)
);
CREATE TABLE [dbo].[GF_TLR_SUBJPRP_INSURANCE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

CONSTRAINT [PK_GF_TLR_SUBJPRP_INSURANCE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLR_SUBJPRP_TAX]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

CONSTRAINT [PK_GF_TLR_SUBJPRP_TAX] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLR_TAXITEMS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[HUDLINE]	smallint	NULL,

	[S_TAXTYPE]	nvarchar(8)	NULL,

	[ANN_AMT]	decimal(16,6)	NULL,

	[FIRST_DUE]	datetime	NULL,

	[ESCROW]	nchar(1)	NULL,

	[INSTYPE]	nchar(1)	NULL,

	[TRETS_ID]	nvarchar(10)	NULL,

	[MONTH_AG]	decimal(16,6)	NULL,

	[ANNUAL_AG]	decimal(16,6)	NULL,

	[MONTH_AMT]	decimal(16,6)	NULL,

	[MONTH_PD_1]	datetime	NULL,

	[MONTH_PD_2]	datetime	NULL,

	[MONTH_PD_3]	datetime	NULL,

	[MONTH_PD_4]	datetime	NULL,

	[PMT_AMT_1]	decimal(16,6)	NULL,

	[PMT_AMT_2]	decimal(16,6)	NULL,

	[PMT_AMT_3]	decimal(16,6)	NULL,

	[PMT_AMT_4]	decimal(16,6)	NULL,

	[DISBURSID]	nvarchar(8)	NULL,

	[AUTH_NAME]	nvarchar(50)	NULL,

	[TAX_DELINQUENT]	nchar(1)	NULL,

	[PAID_THRU_DATE]	datetime	NULL,

	[PARCEL_ID]	nvarchar(250)	NULL,

	[CUSHION]	decimal(16,6)	NULL,

	[SFREQUENCY]	nvarchar(8)	NULL,

	[PROJASESSEDVAL]	decimal(16,6)	NULL,

	[RATEPERTHOUSAND]	decimal(16,6)	NULL,

	[COLFIRSTYR]	nchar(1)	NULL,

	[S_ESCTAX]	nvarchar(8)	NULL,

	[ISMERGEDINT]	nchar(1)	NULL,

	[TAX_TYPE_DESC]	nvarchar(80)	NULL,

	[UPFRONT_TAX_AMOUNT]	decimal(16,2)	NULL,

CONSTRAINT [PK_GF_TLR_TAXITEMS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TLR_TL_REC_DOC_ROLES]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[RESPONSEID]	int	NOT NULL,

	[TITLERESPONSEID]	int	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RECDOCID]	int	NOT NULL,

	[RECDOCEXTID]	int	NOT NULL,

	[EXTITEMSID]	int	NOT NULL,

	[FIRSTNAME]	nvarchar(250)	NULL,

	[LASTNAME]	nvarchar(30)	NULL,

	[VESTINGINFO]	nvarchar(250)	NULL,

	[COMMENTS]	nvarchar(250)	NULL,

	[UNPARSEDNAME]	nvarchar(128)	NULL,

	[EXTTYPE]	nvarchar(20)	NULL,

CONSTRAINT [PK_GF_TLR_TL_REC_DOC_ROLES] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [RESPONSEID]

	, [TITLERESPONSEID]

	, [DBID]

	, [RECDOCID]

	, [RECDOCEXTID]

	, [EXTITEMSID]

	)
);
CREATE TABLE [dbo].[GF_TLRR_FUNDDISB]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DISB_DBID]	nchar(5)	NOT NULL,

	[DISB_SERNO]	int	NOT NULL,

	[ORIG_CNTR]	int	NOT NULL,

	[ORIG_DBID]	nchar(5)	NOT NULL,

	[VOIDED_YN]	nchar(1)	NULL,

	[PCT_OF_FUNDITEM]	decimal(16,6)	NULL,

CONSTRAINT [PK_GF_TLRR_FUNDDISB] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DISB_DBID]

	, [DISB_SERNO]

	, [ORIG_CNTR]

	, [ORIG_DBID]

	)
);
CREATE TABLE [dbo].[GF_TS_AUDIT_LOAN_DELETE]	( 

	[DELETED_LNUM]	nchar(20)	NOT NULL,

	[DELETED_CLNUM]	nvarchar(20)	NULL,

	[USRID]	int	NOT NULL,

	[ACTIVITY]	nvarchar(40)	NULL,

	[TERMINAL]	nvarchar(50)	NULL,

	[OS_USER]	nvarchar(30)	NULL,

	[DELETED_DATE]	datetime	NULL,

CONSTRAINT [PK_GF_TS_AUDIT_LOAN_DELETE] PRIMARY KEY CLUSTERED (

	  [DELETED_LNUM]

	, [USRID]

	)
);
CREATE TABLE [dbo].[GF_TS_AUDIT_USER_LOCK]	( 

	[UL_ID]	int	NOT NULL,

	[UL_LNUM]	nchar(20)	NULL,

	[UL_ACTION]	nchar(1)	NULL,

	[INSERT_USERID]	int	NULL,

	[INSERT_USERNAME]	nvarchar(128)	NULL,

	[INSERT_TIMELOCKED]	datetime	NULL,

	[INSERT_LASTLOCKED]	datetime	NULL,

	[DELETE_USERID]	int	NULL,

	[DELETE_USERNAME]	nvarchar(128)	NULL,

	[DELETE_TIMELOCKED]	datetime	NULL,

	[DELETE_LASTLOCKED]	datetime	NULL,

	[MODIFIED_DATETIME]	datetime	NULL,

CONSTRAINT [PK_GF_TS_AUDIT_USER_LOCK] PRIMARY KEY CLUSTERED (

	  [UL_ID]

	)
);
CREATE TABLE [dbo].[GF_TS_CMS_CONTACT_ADDRESS]	( 

	[CID]	int	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[S_ADDRTYPE]	nvarchar(8)	NULL,

	[ADDR1]	nvarchar(35)	NULL,

	[ADDR2]	nvarchar(35)	NULL,

	[CITY]	nvarchar(35)	NULL,

	[COUNTY]	nvarchar(35)	NULL,

	[STATE]	nchar(2)	NULL,

	[COUNTRY]	nvarchar(35)	NULL,

	[ZIP]	nvarchar(10)	NULL,

	[TIMEZONE]	nchar(3)	NULL,

	[S_CMSADR_UNIT_TYPE]	nvarchar(8)	NULL,

	[CMSADR_UNIT_NUM]	nvarchar(12)	NULL,

CONSTRAINT [PK_GF_TS_CMS_CONTACT_ADDRESS] PRIMARY KEY CLUSTERED (

	  [CID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TS_CMS_CONTACT_EMAIL]	( 

	[CID]	int	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[S_EMAILTYPE]	nvarchar(8)	NOT NULL,

	[EMAILADDR]	nvarchar(128)	NULL,

CONSTRAINT [PK_GF_TS_CMS_CONTACT_EMAIL] PRIMARY KEY CLUSTERED (

	  [CID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TS_CMS_CONTACT_INFO]	( 

	[CID]	int	NOT NULL,

	[ACTIVE]	nchar(1)	NOT NULL,

	[S_CMSSTATUS]	nvarchar(8)	NULL,

	[FULLNAME]	nvarchar(90)	NULL,

	[SHORTNAME]	nvarchar(20)	NULL,

	[SSNTIN]	nvarchar(11)	NULL,

	[S_TITLE]	nvarchar(8)	NULL,

	[REFCODE]	nvarchar(20)	NULL,

	[CREATED_BY_USER]	int	NULL,

	[CREATED_DATE]	datetime	NULL,

	[LAST_UPDATE_USER]	int	NULL,

	[LAST_UPDATED]	datetime	NULL,

	[SPANISH_SPEAKING]	nchar(1)	NULL,

	[DOB]	datetime	NULL,

	[E_SIGNATURE_GUID]	nvarchar(100)	NULL,

	[FIRSTNAME]	nvarchar(30)	NULL,

	[MIDDLENAME]	nvarchar(30)	NULL,

	[LASTNAME]	nvarchar(35)	NULL,

	[SUFFIXNAME]	nvarchar(4)	NULL,

	[PORTAL_REFCODE]	nvarchar(40)	NULL,

CONSTRAINT [PK_GF_TS_CMS_CONTACT_INFO] PRIMARY KEY CLUSTERED (

	  [CID]

	)
);
CREATE TABLE [dbo].[GF_TS_CMS_CONTACT_PHONE]	( 

	[CID]	int	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[S_PHONETYPE]	nvarchar(8)	NOT NULL,

	[PHONENBR]	nvarchar(10)	NULL,

	[PHONEEXT]	nvarchar(5)	NULL,

CONSTRAINT [PK_GF_TS_CMS_CONTACT_PHONE] PRIMARY KEY CLUSTERED (

	  [CID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[GF_TS_CMS_CONTACT_TYPE]	( 

	[CID]	int	NOT NULL,

	[S_CMSTYPE]	nvarchar(8)	NOT NULL,

CONSTRAINT [PK_GF_TS_CMS_CONTACT_TYPE] PRIMARY KEY CLUSTERED (

	  [CID]

	, [S_CMSTYPE]

	)
);
CREATE TABLE [dbo].[GF_TS_CMS_INFOBYTYPE]	( 

	[CID]	int	NOT NULL,

	[S_CMSTYPE]	nvarchar(8)	NOT NULL,

	[S_STATUS]	nvarchar(8)	NULL,

	[STATUS_START_DT]	datetime	NULL,

	[STATUS_STOP_DT]	datetime	NULL,

	[STATUS_CHGD_DT]	datetime	NULL,

	[USEPARENT]	nchar(1)	NULL,

	[S_GRADE]	nvarchar(8)	NULL,

	[COMPLIANCE_MONITOR]	nchar(1)	NULL,

	[COMPLIANCE_EMAIL]	nvarchar(128)	NULL,

	[EMPLOYER_ID]	nvarchar(20)	NULL,

	[LAST_UPDATED_USER]	int	NULL,

	[LAST_UPDATED]	datetime	NULL,

	[CHUMS_ID]	nvarchar(30)	NULL,

	[HUD_APPROVED]	nchar(1)	NULL,

	[RECEIVE_RATE_ALERTS]	nchar(1)	NULL,

	[SAR_ID]	nvarchar(6)	NULL,

	[PROVIDER_ID]	nvarchar(40)	NULL,

	[S_TYPE_OF_COMPANY]	nvarchar(8)	NULL,

	[CMS_SHORT_DESC]	nvarchar(128)	NULL,

	[CMS_COMMENTS]	nvarchar(128)	NULL,

CONSTRAINT [PK_GF_TS_CMS_INFOBYTYPE] PRIMARY KEY CLUSTERED (

	  [CID]

	, [S_CMSTYPE]

	)
);
CREATE TABLE [dbo].[GF_TS_INDEX_VALUE]	( 

	[S_INDEX]	nvarchar(8)	NOT NULL,

	[INDEX_ID]	decimal(16,6)	NOT NULL,

	[EFFECTIVE_DATE]	datetime	NULL,

	[INDEX_VALUE]	decimal(16,6)	NULL,

CONSTRAINT [PK_GF_TS_INDEX_VALUE] PRIMARY KEY CLUSTERED (

	  [S_INDEX]

	, [INDEX_ID]

	)
);
CREATE TABLE [dbo].[GF_TS_PNP_IPG_INVESTOR]	( 

	[INVESTORCODE]	nvarchar(4)	NOT NULL,

	[INVESTORNAME]	nvarchar(80)	NULL,

	[MERITCODE]	nvarchar(4)	NULL,

	[INVESTORDESC]	nvarchar(80)	NULL,

	[ENABLED]	nchar(1)	NULL,

	[DELFROMMERITDATE]	datetime	NULL,

	[CID]	nvarchar(20)	NULL,

	[RATECODE_PFX]	nvarchar(2)	NULL,

	[SRCENV]	nvarchar(5)	NULL,

	[REC_CUSTOM]	nchar(1)	NULL,

	[CREATE_DATE]	datetime	NULL,

	[MODIFY_DATE]	datetime	NULL,

CONSTRAINT [PK_GF_TS_PNP_IPG_INVESTOR] PRIMARY KEY CLUSTERED (

	  [INVESTORCODE]

	)
);
CREATE TABLE [dbo].[GF_TS_PNP_IPG_PRICING]	( 

	[PRICING_GROUP_CODE]	nvarchar(4)	NOT NULL,

	[PRICING_GROUP_NAME]	nvarchar(80)	NULL,

	[SRCENV]	nvarchar(5)	NULL,

	[REC_CUSTOM]	nchar(1)	NULL,

	[CREATE_DATE]	datetime	NULL,

	[MODIFY_DATE]	datetime	NULL,

CONSTRAINT [PK_GF_TS_PNP_IPG_PRICING] PRIMARY KEY CLUSTERED (

	  [PRICING_GROUP_CODE]

	)
);
CREATE TABLE [dbo].[GF_TS_PNP_IPG_PRODUCT]	( 

	[PRODUCTCODE]	nvarchar(4)	NOT NULL,

	[PRODUCTNAME]	nvarchar(80)	NULL,

	[PRODUCTORDER]	int	NULL,

	[SRCENV]	nvarchar(5)	NULL,

	[REC_CUSTOM]	nchar(1)	NULL,

	[CREATE_DATE]	datetime	NULL,

	[MODIFY_DATE]	datetime	NULL,

CONSTRAINT [PK_GF_TS_PNP_IPG_PRODUCT] PRIMARY KEY CLUSTERED (

	  [PRODUCTCODE]

	)
);
CREATE TABLE [dbo].[GF_TS_PNP_IPG_PROGRAM]	( 

	[PROGRAMCODE]	nvarchar(4)	NOT NULL,

	[PROGRAMNAME]	nvarchar(80)	NULL,

	[SRCENV]	nvarchar(5)	NULL,

	[REC_CUSTOM]	nchar(1)	NULL,

	[CREATE_DATE]	datetime	NULL,

	[MODIFY_DATE]	datetime	NULL,

CONSTRAINT [PK_GF_TS_PNP_IPG_PROGRAM] PRIMARY KEY CLUSTERED (

	  [PROGRAMCODE]

	)
);
CREATE TABLE [dbo].[GF_TS_PNP_PRICE_OFERING]	( 

	[PA_DBCODE]	nchar(8)	NOT NULL,

	[PA_PRICING_GROUP]	nchar(4)	NOT NULL,

	[PA_ORDER]	int	NULL,

CONSTRAINT [PK_GF_TS_PNP_PRICE_OFERING] PRIMARY KEY CLUSTERED (

	  [PA_DBCODE]

	, [PA_PRICING_GROUP]

	)
);
CREATE TABLE [dbo].[GF_TS_WF_GROUP_USER]	( 

	[S_PROC_GROUP]	nvarchar(8)	NOT NULL,

	[USERID]	int	NOT NULL,

	[S_USER_TYPE]	nvarchar(8)	NULL,

	[IS_ACTIVE]	nchar(1)	NULL,

	[WEIGHT]	smallint	NULL,

	[SUPERVISOR_ID]	int	NULL,

CONSTRAINT [PK_GF_TS_WF_GROUP_USER] PRIMARY KEY CLUSTERED (

	  [S_PROC_GROUP]

	, [USERID]

	)
);
CREATE TABLE [dbo].[GF_TS_WF_PROCESS]	( 

	[S_PROCESS]	nvarchar(8)	NOT NULL,

	[IS_ACTIVE]	smallint	NULL,

	[EST_TO_COMPLETE]	smallint	NULL,

CONSTRAINT [PK_GF_TS_WF_PROCESS] PRIMARY KEY CLUSTERED (

	  [S_PROCESS]

	)
);
CREATE TABLE [dbo].[GF_TS_WF_PROCESS_MODEL]	( 

	[S_PROCESS_MODEL]	nvarchar(8)	NOT NULL,

	[IS_ACTIVE]	smallint	NULL,

	[EST_TO_COMPLETE]	smallint	NULL,

CONSTRAINT [PK_GF_TS_WF_PROCESS_MODEL] PRIMARY KEY CLUSTERED (

	  [S_PROCESS_MODEL]

	)
);
CREATE TABLE [dbo].[GF_TS_WF_WORKTYPE]	( 

	[S_WORKTYPE]	nvarchar(8)	NOT NULL,

	[S_WT_TYPE]	nchar(18)	NULL,

	[WT_EXECUTABLE]	nvarchar(50)	NULL,

	[EST_TO_COMPLETE]	smallint	NULL,

	[S_USERINTERFACE]	nvarchar(8)	NULL,

	[S_REASSIGN_RULE]	nvarchar(8)	NULL,

	[WEIGHT_TIER1]	int	NULL,

	[WEIGHT_TIER2]	int	NULL,

	[WEIGHT_TIER3]	int	NULL,

	[DISPLAY_IDX]	smallint	NULL,

CONSTRAINT [PK_GF_TS_WF_WORKTYPE] PRIMARY KEY CLUSTERED (

	  [S_WORKTYPE]

	)
);
CREATE TABLE [dbo].[GF_TSR_PNP_IPG_BASE]	( 

	[INVESTOR_CODE]	nvarchar(4)	NOT NULL,

	[PRODUCT_CODE]	nvarchar(4)	NOT NULL,

	[PROGRAM_CODE]	nvarchar(4)	NOT NULL,

	[PLAN_CODE]	nvarchar(20)	NULL,

	[PLAN_CODE_USAGE]	nvarchar(20)	NULL,

	[ENABLED]	nchar(1)	NULL,

	[DISABLED_DATE]	datetime	NULL,

	[CREATED_DATE]	datetime	NULL,

	[SECONDARY_MANAGE_TYPE]	nvarchar(8)	NULL,

	[SECONDARY_LOAN_TYPE]	nvarchar(8)	NULL,

	[SECONDARY_POOL_TYPE]	nvarchar(8)	NULL,

	[PREPAYMENT_PENALTY]	nvarchar(8)	NULL,

	[OVERAGE_ALLOWED_PCT]	decimal(16,6)	NULL,

	[SHORTAGE_ALLOWED_PCT]	decimal(16,6)	NULL,

	[OVERAGE_SPLIT_PCT]	decimal(16,6)	NULL,

	[SHORTAGE_SPLIT_PCT]	decimal(16,6)	NULL,

	[REQUIRES_MERS]	nchar(1)	NULL,

	[ONE_TIME_CLOSE_CONST]	nchar(1)	NULL,

	[INTERIM_CONSTRUCTION]	nchar(1)	NULL,

	[EZD_PRODUCT]	nchar(1)	NULL,

	[ASSUMABLE]	nchar(1)	NULL,

	[CONVERSION_PERIOD_START]	smallint	NULL,

	[CONVERSION_PERIOD_END]	smallint	NULL,

	[HMDA_REPORTABLE]	nchar(1)	NULL,

	[BUYDOWN_ALLOWED]	nchar(1)	NULL,

	[LOAN_PROGRAM]	nvarchar(8)	NULL,

	[HELOC_ALLOWED_YN]	nchar(1)	NULL,

	[LNDR_PD_MI_ALLOWED]	nchar(1)	NULL,

	[ALLOWS_DPA]	nchar(1)	NULL,

	[AVAILABLE_B_TO_C]	nchar(1)	NULL,

	[FIRST_LOCK_INDICATOR]	nchar(1)	NULL,

	[OLD_AGENCY_NUM_REQUIRED]	nchar(1)	NULL,

	[PROD_IDENTIFIER]	nvarchar(80)	NULL,

	[S_AUS_INDICATOR]	nvarchar(8)	NULL,

	[S_SERVICE_TYPE_IND]	nvarchar(8)	NULL,

	[SERVICE_INT_INDICATOR]	nvarchar(30)	NULL,

	[SERVICE_LOC_CID]	nvarchar(20)	NULL,

	[SUB_PRIME_INDICATOR]	nchar(1)	NULL,

	[CONV_CONDITIONS]	nvarchar(254)	NULL,

	[CONV_FEE_AMOUNT]	decimal(18,3)	NULL,

	[CONV_FEE_PERC]	decimal(16,6)	NULL,

	[HLDRNTCE]	nchar(1)	NULL,

	[NODFALT]	nchar(1)	NULL,

	[PAYFEE]	nchar(1)	NULL,

	[SIGNDOC]	nchar(1)	NULL,

	[CONVOTHR]	nchar(1)	NULL,

	[INTEREST_ONLY_PRODUCT]	nchar(1)	NULL,

	[ODDDEFER]	nchar(1)	NULL,

	[S_SPEC_PRG]	nvarchar(8)	NULL,

	[MI_REQUIRED]	nchar(1)	NULL,

	[CRA_REPORTABLE]	nchar(1)	NULL,

	[MIN_ALLOW_TERM]	int	NULL,

	[MAX_ALLOW_TERM]	int	NULL,

	[DEBT_PROTECT_OFFERED]	nchar(1)	NULL,

	[EVAL_ATR]	nchar(1)	NULL,

	[EVAL_QM]	nchar(1)	NULL,

	[GROUP_ID]	int	NULL,

	[PREQUAL_ALLOWED_YN]	nchar(1)	NULL,

	[PREAPPROVAL_ALLOWED_YN]	nchar(1)	NULL,

	[S_LOANFIT_PURP_CAT]	nvarchar(8)	NULL,

	[S_LOANFIT_PROD_CAT]	nvarchar(8)	NULL,

	[S_LOANFIT_LIEN_CAT]	nvarchar(8)	NULL,

	[LOANFIT_CATEGORY_POSN]	int	NULL,

	[LOANFIT_DISPLAY_POSN]	int	NULL,

	[S_LOANFIT_AMT_GROUP]	nvarchar(8)	NULL,

	[S_LOANFIT_LTV_GROUP]	nvarchar(8)	NULL,

	[LOANFIT_MIN_LOAN]	numeric(16,6)	NULL,

	[LOANFIT_MAX_LOAN]	numeric(16,6)	NULL,

	[LOANFIT_MIN_LTV]	numeric(16,6)	NULL,

	[LOANFIT_MAX_LTV]	numeric(16,6)	NULL,

	[LOANFIT_ANN_FEE]	numeric(16,6)	NULL,

	[LOANFIT_TERM_MOS]	int	NULL,

	[LOANFIT_IS_ARM_YN]	nchar(1)	NULL,

	[RATE_PRICE_RQST_YN]	nchar(1)	NULL,

	[LOANFIT_MAX_DTI]	int	NULL,

	[LOANFIT_MIN_POINTS]	numeric(16,6)	NULL,

	[LOANFIT_MAX_POINTS]	numeric(16,6)	NULL,

	[MBOT_PRODUCTID]	nvarchar(20)	NULL,

	[TARGET_INVESTOR]	int	NULL,

	[MILT_LENDING_ACT]	nchar(1)	NULL,

	[SRCENV]	nvarchar(5)	NULL,

	[REC_CUSTOM]	nchar(1)	NULL,

	[CREATE_DATE]	datetime	NULL,

	[MODIFY_DATE]	datetime	NULL,

	[S_CONST_PROGRAM]	nvarchar(8)	NULL,

	[CONST_MONTHS]	int	NULL,

	[IPG_RENOVA_PROD]	nchar(1)	NULL,

	[DOCMAGIC_PLAN_CODE]	nvarchar(25)	NULL,

	[IPG_GSE_PROD]	nchar(1)	NULL,

	[DAYS_FIRST_FLOAT_ELIG]	int	NULL,

	[DAYS_FINAL_FLOAT_ELIG]	int	NULL,

	[IPG_FINAL_INVESTOR]	nvarchar(20)	NULL,

	[S_ASSUMABILITY_FEATURE]	nvarchar(8)	NULL,

	[S_IPG_BUYDWN]	nvarchar(8)	NULL,

	[S_BUYDWN_CNTRBTR]	nvarchar(8)	NULL,

CONSTRAINT [PK_GF_TSR_PNP_IPG_BASE] PRIMARY KEY CLUSTERED (

	  [INVESTOR_CODE]

	, [PRODUCT_CODE]

	, [PROGRAM_CODE]

	)
);
CREATE TABLE [dbo].[GF_TW_WF_ACTION_MGR]	( 

	[ACTION_ID]	int	NOT NULL,

	[S_WORKTYPE]	nvarchar(8)	NULL,

	[S_ACTION_RESOLUTION]	nvarchar(8)	NULL,

	[S_PROC_MDL_RESOLUTION]	nvarchar(8)	NULL,

	[EXTERNAL_CODE]	nchar(20)	NULL,

	[INSERT_DATE]	datetime	NULL,

	[EXP_DATE_TO_COMPLETE]	datetime	NULL,

	[START_DATE]	datetime	NULL,

	[END_DATE]	datetime	NULL,

	[LAST_ACTION_DATE]	datetime	NULL,

	[IS_BEING_WORKED]	smallint	NULL,

	[ACTION_STATUS_FLAG]	smallint	NULL,

	[RESERVED_BY]	int	NULL,

	[S_PROC_GROUP]	nvarchar(8)	NULL,

	[PROC_MDL_MGR_ID]	int	NULL,

	[RESERVE_DATE]	datetime	NULL,

	[WF_SESSION_ID]	int	NULL,

	[OPENED_DATE]	datetime	NULL,

CONSTRAINT [PK_GF_TW_WF_ACTION_MGR] PRIMARY KEY CLUSTERED (

	  [ACTION_ID]

	)
);
CREATE TABLE [dbo].[GF_TW_WF_PROC_MODEL_MGR]	( 

	[PROC_MDL_MGR_ID]	int	NOT NULL,

	[S_PROCESS_MODEL]	nvarchar(8)	NULL,

	[S_PROC_MDL_MGR_RESOLUTION]	nvarchar(8)	NULL,

	[EXP_DATE_TO_COMPLETE]	datetime	NULL,

	[START_DATE]	datetime	NULL,

	[END_DATE]	datetime	NULL,

	[LAST_ACTION_DATE]	datetime	NULL,

	[IS_COMPLETE]	smallint	NULL,

	[RESERVED_BY]	int	NULL,

	[S_PROC_GROUP]	nvarchar(8)	NULL,

	[PROC_MGR_ID]	int	NULL,

	[PARENT_PROC_MDL_MGR_ID]	int	NULL,

CONSTRAINT [PK_GF_TW_WF_PROC_MODEL_MGR] PRIMARY KEY CLUSTERED (

	  [PROC_MDL_MGR_ID]

	)
);
CREATE TABLE [dbo].[GF_TW_WF_PROCESS_MGR]	( 

	[PROC_MGR_ID]	int	NOT NULL,

	[S_PROCESS]	nvarchar(8)	NULL,

	[EXTERNAL_CODE]	nchar(20)	NULL,

	[EXT_CODE_DESC]	nvarchar(20)	NULL,

	[EXP_COMP_DATE]	datetime	NULL,

	[START_DATE]	datetime	NULL,

	[END_DATE]	datetime	NULL,

	[LAST_ACTION_DATE]	datetime	NULL,

	[MODELS_STARTED]	smallint	NULL,

	[MODELS_COMPLETED]	smallint	NULL,

	[IS_COMPLETE]	smallint	NULL,

	[RESERVED_BY]	int	NULL,

	[S_PROC_GROUP]	nvarchar(8)	NULL,

CONSTRAINT [PK_GF_TW_WF_PROCESS_MGR] PRIMARY KEY CLUSTERED (

	  [PROC_MGR_ID]

	)
);
CREATE TABLE [dbo].[GFXVARTEXTMAP]	( 

	[TABLENAME]	nvarchar(35)	NOT NULL,

	[DBIDCOLUMN]	nvarchar(35)	NOT NULL,

	[SERIALNOCOLUMN]	nvarchar(35)	NOT NULL,

	[VARTEXTTABLE]	nvarchar(35)	NOT NULL,

	[COMPROPERTYNAME]	nvarchar(35)	NOT NULL,

	[VARTEXTPROPERTYCOLUMN]	nvarchar(35)	NULL,

	[LOGICALFIELDNAME]	nvarchar(35)	NULL,

	[ISPROPERTYREADONLY]	int	NULL,

	[ROWWRAPPERORDER]	int	NULL,

	[SRCENV]	nvarchar(5)	NULL,

	[REC_CUSTOM]	nchar(1)	NULL,

	[CREATE_DATE]	datetime	NULL,

	[MODIFY_DATE]	datetime	NULL,

CONSTRAINT [PK_GFXVARTEXTMAP] PRIMARY KEY CLUSTERED (

	  [TABLENAME]

	, [DBIDCOLUMN]

	, [SERIALNOCOLUMN]

	)
);
CREATE TABLE [dbo].[GSSGRP]	( 

	[GRPID]	int	NOT NULL,

	[GRPNAME]	nvarchar(30)	NOT NULL,

	[DESCRIPT]	nvarchar(80)	NULL,

	[GRPABBR]	nvarchar(8)	NULL,

	[SRCENV]	nvarchar(5)	NULL,

	[REC_CUSTOM]	nchar(1)	NULL,

	[CREATE_DATE]	datetime	NULL,

	[MODIFY_DATE]	datetime	NULL,

CONSTRAINT [PK_GSSGRP] PRIMARY KEY CLUSTERED (

	  [GRPID]

	)
);
CREATE TABLE [dbo].[GSSMEM]	( 

	[GRPID]	int	NOT NULL,

	[USRID]	int	NOT NULL,

CONSTRAINT [PK_GSSMEM] PRIMARY KEY CLUSTERED (

	  [GRPID]

	, [USRID]

	)
);
CREATE TABLE [dbo].[GSSUSR]	( 

	[USRID]	int	NOT NULL,

	[USRNAME]	nvarchar(128)	NOT NULL,

	[FULLNAME]	nvarchar(60)	NULL,

	[DESCRIPT]	nvarchar(256)	NULL,

	[SECMASK]	int	NOT NULL,

	[CID]	int	NULL,

CONSTRAINT [PK_GSSUSR] PRIMARY KEY CLUSTERED (

	  [USRID]

	)
);
CREATE TABLE [dbo].[HELOC]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[INTRORT]	decimal(16,6)	NULL,

	[MINITADV]	decimal(18,3)	NULL,

	[MOTHADV]	decimal(18,3)	NULL,

	[DPR]	decimal(16,6)	NULL,

	[DRAWPER]	int	NULL,

	[WHENDUE]	nvarchar(20)	NULL,

	[TAXLTV]	decimal(16,6)	NULL,

	[SLNHOLD]	nvarchar(35)	NULL,

	[DRAWEXP]	datetime	NULL,

	[TAXASAMT]	decimal(18,3)	NULL,

	[CTAXLTV]	decimal(16,6)	NULL,

	[NUM_CARDS]	decimal(16,6)	NULL,

	[S_LOCTYPE]	nvarchar(8)	NULL,

	[ANNUAL_FEE]	decimal(16,6)	NULL,

	[REPAY_MTHS]	int	NULL,

	[TERMIN_FEE]	decimal(18,3)	NULL,

	[DRAWACCESS_FEE]	decimal(16,6)	NULL,

	[S_FUNDS_TO_BE_DRAWN]	nvarchar(8)	NULL,

	[OVERDRAFT_PROTECTION]	nchar(1)	NULL,

	[ODP_ACCOUNT_NUMBER]	nvarchar(30)	NULL,

	[ODP_ROUTING_NUMBER]	nvarchar(30)	NULL,

	[ANNUAL_CALC_OVR]	decimal(16,6)	NULL,

	[TERM_CALC_OVR]	decimal(18,3)	NULL,

	[S_REPAYMENT_METHOD]	nvarchar(8)	NULL,

CONSTRAINT [PK_HELOC] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[HELOC2]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[INITIAL_ADVANCE]	decimal(18,3)	NULL,

	[HELOC_DESCRIPTION]	nvarchar(60)	NULL,

	[BILL_END_DATE]	datetime	NULL,

	[MIN_BALANCE]	decimal(18,3)	NULL,

	[OPENEND_CREDIT_IND]	nchar(1)	NULL,

	[S_RTC_TYPE]	nvarchar(8)	NULL,

	[WAIVE_ANNUAL_FEE]	nchar(1)	NULL,

	[ANNUAL_FEE_START_DT]	datetime	NULL,

CONSTRAINT [PK_HELOC2] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[HMDAINFO]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DEBT2INC]	nchar(1)	NULL,

	[EMPHIST]	nchar(1)	NULL,

	[CRDHIST]	nchar(1)	NULL,

	[COLLAT]	nchar(1)	NULL,

	[NOCASH]	nchar(1)	NULL,

	[UNVERIF]	nchar(1)	NULL,

	[INCOMP]	nchar(1)	NULL,

	[MIDENIED]	nchar(1)	NULL,

	[OTHER]	nchar(1)	NULL,

	[OTHERDSC]	nvarchar(255)	NULL,

	[RLOANAMT]	decimal(18,3)	NULL,

	[PURCHCD]	int	NULL,

	[EMPLOYEE]	nchar(1)	NULL,

	[SUBMITREQUEST]	nchar(1)	NULL,

	[HMDALOANTYPECODE]	smallint	NULL,

	[HMDAPROPTYPECODE]	smallint	NULL,

	[HMDALOANPURPCODE]	smallint	NULL,

	[HMDAOOCODE]	smallint	NULL,

	[HMDAREPORTABLELA]	decimal(18,3)	NULL,

	[HMDAPREAPPREQUESTED]	smallint	NULL,

	[HMDAACTIONTAKENCODE]	smallint	NULL,

	[HMDAINFOREPORTABLEINCOME]	decimal(16,6)	NULL,

	[HMDARATESPREAD]	decimal(16,6)	NULL,

	[HMDAHOEPASTATUS]	smallint	NULL,

	[HMDALIENSTATUS]	smallint	NULL,

	[BORRETHNICITY]	smallint	NULL,

	[COBORRETHNICITY]	smallint	NULL,

	[BORRRACE1]	smallint	NULL,

	[BORRRACE2]	smallint	NULL,

	[BORRRACE3]	smallint	NULL,

	[BORRRACE4]	smallint	NULL,

	[BORRRACE5]	smallint	NULL,

	[COBORRRACE1]	smallint	NULL,

	[COBORRRACE2]	smallint	NULL,

	[COBORRRACE3]	smallint	NULL,

	[COBORRRACE4]	smallint	NULL,

	[COBORRRACE5]	smallint	NULL,

	[BORRSEXCODE]	smallint	NULL,

	[COBORRSEXCODE]	smallint	NULL,

	[DENIALCODE1]	smallint	NULL,

	[DENIALCODE2]	smallint	NULL,

	[DENIALCODE3]	smallint	NULL,

	[REPORTABLEYR]	nvarchar(4)	NULL,

	[HMDAACTIONDATE]	datetime	NULL,

	[DENYCODE1PRIORITY]	int	NULL,

	[DENYCODE2PRIORITY]	int	NULL,

	[DENYCODE3PRIORITY]	int	NULL,

	[DENYCODE4PRIORITY]	int	NULL,

	[DENYCODE5PRIORITY]	int	NULL,

	[DENYCODE6PRIORITY]	int	NULL,

	[DENYCODE7PRIORITY]	int	NULL,

	[DENYCODE8PRIORITY]	int	NULL,

	[DENYCODE9PRIORITY]	int	NULL,

	[REPORTABLEYROVR]	nvarchar(100)	NULL,

	[HMDAREPORTABLELAOVR]	decimal(16,6)	NULL,

	[MSACODE]	nvarchar(6)	NULL,

	[STCODE]	nvarchar(2)	NULL,

	[CYCODE]	nvarchar(3)	NULL,

	[CENTRACT]	nvarchar(8)	NULL,

	[ISANYBORRINCHMDARPTB]	nchar(1)	NULL,

	[HMDAREPORTABLEDESC]	nvarchar(50)	NULL,

	[APPDATEISNULL]	nchar(4)	NULL,

	[LOCKDATEISNULL]	nchar(4)	NULL,

	[RATESPREADISNULL]	nchar(4)	NULL,

	[APPINCOMEISNULL]	nchar(4)	NULL,

CONSTRAINT [PK_HMDAINFO] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[HMDAXPRT]	( 

	[PRI_DBID]	nchar(5)	NOT NULL,

	[ACODE]	nchar(1)	NULL,

	[RNAME]	nvarchar(30)	NULL,

	[RID]	nvarchar(10)	NULL,

	[RADDR]	nvarchar(40)	NULL,

	[RCITY]	nvarchar(25)	NULL,

	[RSTATE]	nchar(2)	NULL,

	[RZIP]	nvarchar(10)	NULL,

	[PNAME]	nvarchar(30)	NULL,

	[PADDR]	nvarchar(40)	NULL,

	[PCITY]	nvarchar(25)	NULL,

	[PSTATE]	nchar(2)	NULL,

	[PZIP]	nvarchar(10)	NULL,

	[CNAME]	nvarchar(30)	NULL,

	[CPNUM]	nvarchar(12)	NULL,

	[SOFCR]	nvarchar(40)	NULL,

	[RGNUM]	nvarchar(2)	NULL,

	[TAXID]	nvarchar(10)	NULL,

	[FROMD]	datetime	NULL,

	[TODATE]	datetime	NULL,

	[FTYPE]	nchar(1)	NULL,

	[DBID]	nchar(5)	NULL,

	[QSERNUM]	int	NULL,

	[DENLRSN]	nchar(1)	NULL,

	[SUBMITNA]	nchar(1)	NULL,

	[RPTYEAR]	nvarchar(4)	NULL,

	[CFPNUM]	nvarchar(12)	NULL,

	[S_CUSTOMQRY]	nvarchar(8)	NULL,

	[CEMAIL]	nvarchar(45)	NULL,

	[HMDA_LAR_LEI]	nvarchar(20)	NULL,

CONSTRAINT [PK_HMDAXPRT] PRIMARY KEY CLUSTERED (

	  [PRI_DBID]

	)
);
CREATE TABLE [dbo].[INCOME]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[CTR]	smallint	NOT NULL,

	[TITLE]	nvarchar(30)	NULL,

	[BUSTYPE]	nvarchar(30)	NULL,

	[SUPERVSR]	nvarchar(35)	NULL,

	[INCMNAME]	nvarchar(50)	NULL,

	[ADDR1]	nvarchar(35)	NULL,

	[ADDR2]	nvarchar(35)	NULL,

	[CITY]	nvarchar(35)	NULL,

	[STATE]	nchar(2)	NULL,

	[ZIP]	nvarchar(10)	NULL,

	[PHONE]	nvarchar(11)	NULL,

	[PHONEXT]	nvarchar(6)	NULL,

	[ATTNOF]	nvarchar(35)	NULL,

	[FAXNO]	nvarchar(11)	NULL,

	[ID]	nvarchar(12)	NULL,

	[EMPDFROM]	datetime	NULL,

	[EMPDTO]	datetime	NULL,

	[YRSATJOB]	decimal(16,6)	NULL,

	[YRSINPRO]	decimal(16,6)	NULL,

	[JEXPDESC]	nvarchar(35)	NULL,

	[JEXPAMT]	decimal(16,6)	NULL,

	[PRIMINC]	nchar(1)	NULL,

	[S_INCOME]	nvarchar(8)	NULL,

	[S_PAYPER]	nvarchar(8)	NULL,

	[INCAMT]	decimal(18,3)	NULL,

	[INCDESC]	nvarchar(30)	NULL,

	[MNTEQUIV]	decimal(18,3)	NULL,

	[USEQUAL]	nchar(1)	NULL,

	[TYPEFLAG]	nchar(1)	NULL,

	[SELFEMPL]	nchar(1)	NULL,

	[BENEFIT]	nchar(1)	NULL,

	[BEN_TYPE]	nvarchar(30)	NULL,

	[ACCTOF]	nvarchar(35)	NULL,

	[ACCTNUM]	nvarchar(20)	NULL,

	[VERIFY]	nchar(1)	NULL,

	[OTHERDSC]	nvarchar(40)	NULL,

	[NONTAXBL]	nchar(1)	NULL,

	[INCOME_VERIFIED]	nchar(1)	NULL,

	[MILITARY_YN]	nchar(1)	NULL,

	[PERCBUSOWN]	decimal(16,6)	NULL,

	[TSWE_INCOME_IND]	nchar(1)	NULL,

	[EFFECTIVE_MO_INC]	decimal(18,3)	NULL,

	[S_JOB_TYPE]	nvarchar(8)	NULL,

	[OVRTIME_CONT]	nvarchar(25)	NULL,

	[PROB_CONT_EMPLOY]	nvarchar(25)	NULL,

	[OTHERINCTYPEDESC]	nvarchar(500)	NULL,

	[S_SPECBOREMPRELTYPE]	nvarchar(8)	NULL,

	[OTHERSPECBOREMPRELTYPEDSC]	nvarchar(80)	NULL,

	[RURALHOUSINGCALC]	nchar(1)	NULL,

	[COUNTRY]	nvarchar(35)	NULL,

	[VERIFICATION_TYPE]	nvarchar(8)	NULL,

	[VERIF_TYPE_DESC]	nvarchar(80)	NULL,

	[STATED_FLAG]	nchar(1)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[S_INCOMECATEGORY]	nvarchar(8)	NULL,

	[OCCUPATION]	nvarchar(8)	NULL,

	[INCSTIND]	nchar(1)	NULL,

	[S_SELFEMPTYPE]	nvarchar(8)	NULL,

	[PRE_VERI_GROSS_INC]	decimal(18,3)	NULL,

	[USE_GROSS_INCOME]	nchar(1)	NULL,

	[YTD_AMOUNT]	decimal(18,3)	NULL,

	[YTD_AS_OF_DATE]	datetime	NULL,

	[INC_SRC_CTR]	int	NULL,

	[YTD_AVG_INCOME]	decimal(18,3)	NULL,

	[FOREIGNINCOME]	nchar(1)	NULL,

	[SEASONALINCOME]	nchar(1)	NULL,

	[LIABCTR]	int	NULL,

	[GROSSUPOVR]	decimal(16,6)	NULL,

	[GROSSUP]	decimal(16,6)	NULL,

	[FROM_INCOME_CALC]	nchar(1)	NULL,

	[STATED_INC]	decimal(18,3)	NULL,

CONSTRAINT [PK_INCOME] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [CTR]

	)
);
CREATE TABLE [dbo].[INFO1008]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BASEINC]	numeric(18,3)	NULL,

	[OTHERINC]	numeric(18,3)	NULL,

	[POSINC]	decimal(16,6)	NULL,

	[C_BASEINC]	numeric(18,3)	NULL,

	[C_OTHERINC]	numeric(18,3)	NULL,

	[C_POSINC]	decimal(16,6)	NULL,

	[TBASEINC]	numeric(18,3)	NULL,

	[TOTHERINC]	numeric(18,3)	NULL,

	[TPOSINC]	decimal(16,6)	NULL,

	[TBORINC]	numeric(18,3)	NULL,

	[TCBORINC]	numeric(18,3)	NULL,

	[ALLINC]	numeric(18,3)	NULL,

	[FIRSTMORT]	decimal(18,3)	NULL,

	[SECMORT]	decimal(18,3)	NULL,

	[HAZINS]	decimal(18,3)	NULL,

	[TAXES]	decimal(18,3)	NULL,

	[MORTINS]	decimal(18,3)	NULL,

	[ASSDUES]	decimal(18,3)	NULL,

	[LEASE]	decimal(16,6)	NULL,

	[OTHEREXP]	decimal(18,3)	NULL,

	[THOUSEXP]	decimal(18,3)	NULL,

	[NEGCASH]	decimal(18,3)	NULL,

	[OTHERMTHY]	decimal(18,3)	NULL,

	[ALLPMT]	decimal(18,3)	NULL,

CONSTRAINT [PK_INFO1008] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[L_SYMBOL]	( 

	[FLDNAME]	nvarchar(20)	NOT NULL,

	[DBSYMBOL]	nvarchar(8)	NOT NULL,

	[ALIAS]	nvarchar(128)	NULL,

	[SYMBOLID]	int	NOT NULL,

	[PROFID]	int	NULL,

	[DESCRIPT]	nvarchar(256)	NULL,

	[REFCODE]	nvarchar(120)	NULL,

	[CATEGORY]	smallint	NULL,

	[MISMO_VALUE]	nvarchar(120)	NULL,

	[SRCENV]	nvarchar(5)	NULL,

	[REC_CUSTOM]	nchar(1)	NULL,

	[CREATE_DATE]	datetime	NULL,

	[MODIFY_DATE]	datetime	NULL,

CONSTRAINT [PK_L_SYMBOL] PRIMARY KEY CLUSTERED (

	  [FLDNAME]

	, [DBSYMBOL]

	)
);
CREATE TABLE [dbo].[LIABLTY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[LIABCTR]	smallint	NOT NULL,

	[S_LIAB]	nvarchar(8)	NULL,

	[LIABDESC]	nvarchar(30)	NULL,

	[ACCTNUM]	nvarchar(25)	NULL,

	[HOLDER]	nvarchar(35)	NULL,

	[HADDR1]	nvarchar(35)	NULL,

	[HADDR2]	nvarchar(35)	NULL,

	[HCITY]	nvarchar(25)	NULL,

	[HSTATE]	nchar(2)	NULL,

	[HZIP]	nvarchar(10)	NULL,

	[HPHONE]	nvarchar(11)	NULL,

	[HEXT]	nvarchar(5)	NULL,

	[HFAX]	nvarchar(11)	NULL,

	[ATTNOF]	nvarchar(30)	NULL,

	[ACCTBAL]	decimal(18,3)	NULL,

	[ACCTPYMT]	decimal(18,3)	NULL,

	[S_PAYPER]	nvarchar(8)	NULL,

	[MTHPYMT]	decimal(18,3)	NULL,

	[PYMTLEFT]	smallint	NULL,

	[INCPYMT]	nchar(1)	NULL,

	[INCBAL]	nchar(1)	NULL,

	[DATEPAID]	datetime	NULL,

	[ACCTIN]	nvarchar(30)	NULL,

	[REOCNTR]	smallint	NULL,

	[MNPAYLFT]	smallint	NULL,

	[VERIFIED]	nchar(1)	NULL,

	[CRDTCTR]	smallint	NULL,

	[ORIGAMT]	decimal(18,3)	NULL,

	[PAYTYPE]	nchar(1)	NULL,

	[VERIFY]	nchar(1)	NULL,

	[S_LIENPS]	nvarchar(8)	NULL,

	[ORIGDBTDT]	datetime	NULL,

	[EXPDBTDT]	datetime	NULL,

	[RESUBIND]	nchar(1)	NULL,

	[OMIT]	nchar(1)	NULL,

	[MTG_TYPE_DESCRIPT]	nvarchar(20)	NULL,

	[PURCH_MONEY_IND]	nchar(1)	NULL,

	[S_EXCLUSION_REASON]	nvarchar(8)	NULL,

	[S_MTG_TYPE]	nvarchar(8)	NULL,

	[SECURITY_INSTR_VOLUME]	nvarchar(30)	NULL,

	[DEBT_CCTIN_TITLE]	nvarchar(20)	NULL,

	[TRUSTEE_NAME]	nvarchar(60)	NULL,

	[TRUSTEE_ADDR1]	nvarchar(60)	NULL,

	[TRUSTEE_CITY]	nvarchar(25)	NULL,

	[TRUSTEE_STATE]	nchar(2)	NULL,

	[TRUSTEE_ZIP]	nvarchar(10)	NULL,

	[EXECUTEDDATE]	datetime	NULL,

	[RECDATE]	datetime	NULL,

	[RECBOOK]	nvarchar(12)	NULL,

	[RECPAGE]	nvarchar(12)	NULL,

	[RECCITY]	nvarchar(25)	NULL,

	[RECNUM]	nvarchar(20)	NULL,

	[HELOCMAXBAL]	decimal(18,3)	NULL,

	[OTHERDEBTTYPEDESC]	nvarchar(80)	NULL,

	[DEBTPERDIEM]	decimal(16,6)	NULL,

	[DEBTPAYOFFTHRUDT]	datetime	NULL,

	[CLOSE_DATE]	datetime	NULL,

	[OPENED_DATE]	datetime	NULL,

	[HIGH_CREDIT]	numeric(16,6)	NULL,

	[PER_DIEM_CALC]	decimal(18,3)	NULL,

	[PER_DIEM_OVERRIDE]	decimal(18,3)	NULL,

	[INTEREST_RATE]	decimal(16,6)	NULL,

	[SECURED]	nchar(1)	NULL,

	[MARGIN_DEBT]	nchar(1)	NULL,

	[INVESTMENT_CREDIT_LINE]	nchar(1)	NULL,

	[CREDIT_TYPE_OTH]	nvarchar(30)	NULL,

	[S_CREDIT_CARD_TYPE]	nvarchar(8)	NULL,

	[INTERNAL_REFI]	nchar(1)	NULL,

	[HCOUNTRY]	nvarchar(35)	NULL,

	[SOURCE_CB_PMT]	numeric(16,6)	NULL,

	[RECCOUNTY]	nvarchar(45)	NULL,

	[RELEASE_FIN_INFO]	nchar(1)	NULL,

	[DEBT_ESTABLISH_STATE]	nchar(2)	NULL,

	[JOINT_BNUM]	smallint	NULL,

	[DEBT_VERIFI_TYPE]	nvarchar(8)	NULL,

	[DEBT_VERI_TYPE_DESC]	nvarchar(80)	NULL,

	[CLOSE_ACCOUNT]	nchar(1)	NULL,

	[REFIN_SERV_SYS]	nvarchar(8)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[CREDITLIABILITYID]	nvarchar(20)	NULL,

	[DOCUMENT_NO]	nvarchar(20)	NULL,

	[SERIAL_NUMBER]	nvarchar(20)	NULL,

	[DEBT_ROUTING_NO]	nvarchar(9)	NULL,

	[BENEFICIARY_NAME]	nvarchar(35)	NULL,

	[BEN_ACCT_NUM]	nchar(35)	NULL,

	[NOTE_TO_BENEFICIARY]	nvarchar(256)	NULL,

	[NOTE_TO_BANK]	nvarchar(256)	NULL,

	[REENTER_ACCT_NUM]	nvarchar(25)	NULL,

	[DEBT_REROUTING_NO]	nvarchar(9)	NULL,

	[REBEN_ACCT_NUM]	nvarchar(35)	NULL,

	[S_LIABILITYDISBTYPE]	nvarchar(8)	NULL,

	[P_PYMTLEFT]	int	NULL,

	[P_MNPAYLFT]	int	NULL,

	[P_BALANCE]	decimal(18,3)	NULL,

	[P_AMOUNT]	decimal(18,3)	NULL,

	[P_PARTIALIND]	nchar(1)	NULL,

	[LIABLTY_INDICATOR]	nchar(1)	NULL,

	[OWNERSHP_TYPE]	nvarchar(8)	NULL,

	[DEDUCT_FROM_INC]	nchar(1)	NULL,

	[S_ACCOUNT_OWNERSHIP]	nvarchar(8)	NULL,

	[LATE_30_DAYS]	smallint	NULL,

	[LATE_60_DAYS]	smallint	NULL,

	[LATE_90_DAYS]	smallint	NULL,

	[LATE_120_DAYS]	smallint	NULL,

	[CREDIT_LIMIT_AMOUNT]	numeric(16,6)	NULL,

	[INC_CREDIT_LINE]	nchar(1)	NULL,

CONSTRAINT [PK_LIABLTY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [LIABCTR]

	)
);
CREATE TABLE [dbo].[MISC1003]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[APPNUM]	smallint	NOT NULL,

	[OTHINCM]	nchar(1)	NULL,

	[COMMUNTY]	nchar(1)	NULL,

	[JOINTLY]	nchar(1)	NULL,

	[PROF_MERGE_BWRS]	nchar(1)	NULL,

CONSTRAINT [PK_MISC1003] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [APPNUM]

	)
);
CREATE TABLE [dbo].[POA]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[POADBID]	nchar(5)	NULL,

	[POASN]	int	NULL,

	[POA_SIGN_NAME]	nvarchar(70)	NULL,

	[POA_TITLE]	nvarchar(25)	NULL,

	[POA_CAPACITY]	nvarchar(25)	NULL,

	[POA_DESC_TEXT]	nvarchar(250)	NULL,

	[POA_EMAIL]	nvarchar(128)	NULL,

	[POA_TELEPHONE]	nvarchar(25)	NULL,

	[POA_MOBILE]	nvarchar(25)	NULL,

CONSTRAINT [PK_POA] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	)
);
CREATE TABLE [dbo].[PREDCTRS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[SOURCE]	nvarchar(30)	NOT NULL,

	[NAME]	nvarchar(15)	NOT NULL,

	[CTR]	smallint	NOT NULL,

	[CQOPER]	nchar(1)	NULL,

	[ORGORRES]	nchar(1)	NULL,

	[SCORES]	nvarchar(10)	NULL,

	[FACTORS]	nvarchar(30)	NULL,

	[EXCLUSION]	nchar(1)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

CONSTRAINT [PK_PREDCTRS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [SOURCE]

	, [NAME]

	, [CTR]

	)
);
CREATE TABLE [dbo].[PREVRES]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESCTR]	smallint	NOT NULL,

	[RESADD1]	nvarchar(100)	NULL,

	[RESADD2]	nvarchar(100)	NULL,

	[RESCITY]	nvarchar(25)	NULL,

	[RESST]	nchar(2)	NULL,

	[RESZIP]	nvarchar(10)	NULL,

	[S_OWNRNT]	nvarchar(8)	NULL,

	[RESNMYRS]	decimal(16,6)	NULL,

	[ACCTPREV]	nvarchar(20)	NULL,

	[ACCTHLDR]	nvarchar(35)	NULL,

	[RESCNTRY]	nvarchar(35)	NULL,

	[LANDCTR]	smallint	NULL,

	[RESCNTY]	nvarchar(35)	NULL,

	[RES_FADDR_INDICATOR]	nchar(1)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[YRS_AT_PREV]	int	NULL,

	[MNTHS_AT_PREV]	int	NULL,

	[S_RES_UNIT_TYPE]	nvarchar(8)	NULL,

	[RES_UNIT_NUM]	nvarchar(12)	NULL,

	[RES_CNTRY_CODE]	nvarchar(2)	NULL,

	[PREV_STATE_FOREIN]	nvarchar(35)	NULL,

	[PREV_POSTCODE]	nvarchar(12)	NULL,

	[S_LIVE_RENT_FREE_ENUMS]	nvarchar(8)	NULL,

CONSTRAINT [PK_PREVRES] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [RESCTR]

	)
);
CREATE TABLE [dbo].[PRODUCT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[S_PROD]	nvarchar(8)	NULL,

	[S_RATE]	nvarchar(8)	NULL,

	[S_RTCODE]	nvarchar(10)	NULL,

	[OLA]	decimal(18,3)	NULL,

	[LTV]	decimal(16,6)	NULL,

	[S_LCKTYP]	nvarchar(8)	NULL,

	[LOCKDATE]	datetime	NULL,

	[LOCKEXP]	datetime	NULL,

	[LOCKDAYS]	smallint	NULL,

	[INTRATE]	decimal(16,6)	NULL,

	[LOANTERM]	smallint	NULL,

	[S_LCKEXP]	nvarchar(8)	NULL,

	[S_RATIO]	nvarchar(8)	NULL,

	[S_BYDOWN]	nvarchar(8)	NULL,

	[S_MIPLAN]	nvarchar(8)	NULL,

	[FMIRFLAG]	nchar(1)	NULL,

	[FMIRFCTR]	decimal(16,6)	NULL,

	[BALLFLAG]	nchar(1)	NULL,

	[AMTERM]	smallint	NULL,

	[PIPMT]	decimal(18,3)	NULL,

	[S_PMTSTR]	nvarchar(8)	NULL,

	[S_DISC]	nvarchar(8)	NULL,

	[S_ORIG]	nvarchar(8)	NULL,

	[BASELA]	decimal(18,3)	NULL,

	[LOCKED]	nchar(1)	NULL,

	[S_QRATE]	nvarchar(8)	NULL,

	[BASERATE]	decimal(16,6)	NULL,

	[CNFIRM]	nchar(1)	NULL,

	[BASEMKTDISC]	decimal(16,6)	NULL,

	[MKTDISC]	decimal(16,6)	NULL,

	[DISCPTS]	decimal(16,6)	NULL,

	[ORIGPTS]	decimal(16,6)	NULL,

	[RTCALCTYPE]	smallint	NULL,

	[PPY]	smallint	NULL,

	[CALFACT]	smallint	NULL,

	[FIRSTBYDNPMT]	decimal(18,3)	NULL,

	[SECBYDNPMT]	decimal(18,3)	NULL,

	[THIRDBYDNPMT]	decimal(18,3)	NULL,

	[MKTDISCOVERRIDE]	decimal(16,6)	NULL,

	[INTRATEOVERRIDE]	decimal(16,6)	NULL,

	[S_RTCODEOVR]	nvarchar(10)	NULL,

	[S_LTYPE]	nvarchar(8)	NULL,

	[S_PROGRM]	nvarchar(8)	NULL,

	[FINMIPERC]	decimal(16,6)	NULL,

	[QUALRATE]	decimal(16,6)	NULL,

	[BASEQUAL]	decimal(16,6)	NULL,

	[ODDDEFER]	nchar(1)	NULL,

	[LOCKCRIT]	nchar(1)	NULL,

	[LCKDTOVR]	datetime	NULL,

	[QRADJOVR]	decimal(16,6)	NULL,

	[QROVRRID]	decimal(16,6)	NULL,

	[OLAEDT]	decimal(18,3)	NULL,

	[BASELAEDT]	decimal(18,3)	NULL,

	[ODDRATE]	decimal(16,6)	NULL,

	[S_AMTYPE]	nvarchar(8)	NULL,

	[SELRTCODE]	nvarchar(10)	NULL,

	[S_RCOMNUM]	nvarchar(8)	NULL,

	[BYDNPMT4]	decimal(18,3)	NULL,

	[BYDNPMT5]	decimal(18,3)	NULL,

	[BYDNPMT6]	decimal(18,3)	NULL,

	[BYDNPMT7]	decimal(18,3)	NULL,

	[HRATIO]	decimal(16,6)	NULL,

	[DRATIO]	decimal(16,6)	NULL,

	[INITIAL_RATE]	decimal(16,6)	NULL,

	[DISCOVRD]	decimal(16,6)	NULL,

	[ORIGOVRD]	numeric(16,6)	NULL,

	[RNDLOANTO]	decimal(18,3)	NULL,

	[CASHOUT]	nchar(1)	NULL,

	[RATESELECT]	nvarchar(8)	NULL,

	[SEL_ROW_KEY]	nchar(10)	NULL,

	[SEL_ROW_INSTANCE]	smallint	NULL,

	[BASEFLOOR]	decimal(18,3)	NULL,

	[HELAOVERRIDE]	decimal(18,3)	NULL,

	[HELA]	decimal(18,3)	NULL,

	[INTRESRV]	decimal(18,3)	NULL,

	[LOCKEDBY]	nchar(32)	NULL,

	[CUSTPMTCHECK]	nchar(1)	NULL,

	[INTRESREQ]	nchar(1)	NULL,

	[LOCKEXPDT]	datetime	NULL,

	[SELECTEDINVESTOR]	nvarchar(30)	NULL,

	[S_BALLOON_TYPE]	nvarchar(8)	NULL,

	[AMORT_OTHER]	nvarchar(80)	NULL,

	[CLIENTRATEINFO]	nvarchar(10)	NULL,

	[SELECTEDPROGRAM]	nvarchar(20)	NULL,

	[BUYDOWNOVERRIDES]	nchar(1)	NULL,

	[S_MORTGAGETYPE]	nvarchar(8)	NULL,

	[TOTALPMTNO]	smallint	NULL,

	[MININTPMTRATE]	decimal(16,6)	NULL,

	[REFI_RESCISSION_EXEMPT]	nchar(1)	NULL,

	[BASE_MARKET]	decimal(16,6)	NULL,

	[BASE_ORIGINATION]	decimal(16,6)	NULL,

	[FHA_PLUS]	nchar(1)	NULL,

	[FLEX_ALT_PRODUCT]	nchar(1)	NULL,

	[GPHREDUC]	decimal(16,6)	NULL,

	[BYDNTYPE]	nchar(1)	NULL,

	[BASE_SUB_RATE]	decimal(16,6)	NULL,

	[BASE_ADJ_RATE]	decimal(16,6)	NULL,

	[BASE_SUB_ORIG]	decimal(16,6)	NULL,

	[BASE_ADJ_ORIG]	decimal(16,6)	NULL,

	[BASE_SUB_DISC]	decimal(16,6)	NULL,

	[BASE_ADJ_DISC]	decimal(16,6)	NULL,

	[PMTRCODE]	nchar(1)	NULL,

	[S_AMORT_SUB_TYPE]	nvarchar(8)	NULL,

	[QUALMETHOD]	nvarchar(20)	NULL,

	[S_QUALMETHODOVR]	nvarchar(8)	NULL,

	[YSP]	decimal(16,6)	NULL,

	[YSP_OVRD]	decimal(16,6)	NULL,

	[OVERAGE]	decimal(16,6)	NULL,

	[OVERAGE_OVRD]	decimal(16,6)	NULL,

	[LOCK_DAYS_CALC]	int	NULL,

	[LA_INPUT_DENIAL]	nchar(1)	NULL,

	[LOAN_AFFORDABLE_PRODUCT]	nchar(1)	NULL,

	[MGTTYPE_OTHER]	nvarchar(100)	NULL,

	[HIGHNETWORTH]	nchar(1)	NULL,

	[DU_INT_RATE]	numeric(16,6)	NULL,

	[DU_PROD_CODE]	nchar(15)	NULL,

	[BASE_SUBS_MKT]	numeric(16,6)	NULL,

	[BASE_ADJ_MKT]	numeric(16,6)	NULL,

	[MKT_SUBS_ADJ]	numeric(16,6)	NULL,

	[CHECK_ELIGIBILITY]	nchar(1)	NULL,

	[DTI_OVRD]	numeric(16,6)	NULL,

	[OVRD_REASON]	nvarchar(40)	NULL,

	[EXCEPTIONAPPROVAL]	nchar(1)	NULL,

	[BASE_PROFIT_MARGIN]	numeric(16,6)	NULL,

	[PROFIT_MARGIN_ADJ]	numeric(16,6)	NULL,

	[PROFIT_MARGIN]	numeric(16,6)	NULL,

	[PROFITMARGINOVRD]	numeric(16,6)	NULL,

	[DUPRODUCTDESC]	nvarchar(80)	NULL,

	[BORR_RESCISSION_EXEMPT]	nchar(1)	NULL,

	[CORR_BOR_RATE_LOCKDATE]	datetime	NULL,

	[S_203KTYPE]	nvarchar(8)	NULL,

	[PRODUCT_DENIAL]	nchar(1)	NULL,

	[REQ_RESCISSION]	nchar(1)	NULL,

	[S_PRICING_REGION]	nvarchar(8)	NULL,

	[S_PRICING_CHANNEL]	nvarchar(8)	NULL,

	[ROE]	decimal(16,6)	NULL,

	[ROA]	decimal(16,6)	NULL,

	[ROEEXP]	decimal(16,6)	NULL,

	[ROAEXP]	decimal(16,6)	NULL,

	[RATEEXCEPTION]	decimal(16,6)	NULL,

	[ALLINRATE]	decimal(16,6)	NULL,

	[RATEEXPAPR]	nchar(2)	NULL,

	[DECISIONBY]	nvarchar(64)	NULL,

	[DECISIONDATE]	datetime	NULL,

	[ROEAPP]	decimal(16,6)	NULL,

	[ROAAPP]	decimal(16,6)	NULL,

	[RATEEXCEPTIONAPP]	decimal(16,6)	NULL,

	[ALLINRATEAPP]	decimal(16,6)	NULL,

	[RATEEXPAPPRVALID]	nchar(2)	NULL,

	[CALCULATEDNOTERATE]	decimal(16,6)	NULL,

	[NOTERTDIFFERENCE]	decimal(16,6)	NULL,

	[INTRATE_AT_APPROVAL]	decimal(16,6)	NULL,

	[OTHER_MORT_TYPE_DESC]	nvarchar(50)	NULL,

	[GSEPROD]	nchar(1)	NULL,

	[FLOAT_DOWN_DT]	datetime	NULL,

	[DT_FIRST_FLOAT_ELIG]	datetime	NULL,

	[DT_FINAL_FLOAT_ELIG]	datetime	NULL,

	[REFUND_AMT]	decimal(18,2)	NULL,

	[UPFRONT_AMT]	decimal(18,2)	NULL,

	[FLOAT_DOWN_YN]	nchar(1)	NULL,

	[BUILDLOCKCANCEL]	nchar(1)	NULL,

	[BUILDER_LOCK]	nchar(1)	NULL,

	[OPL_OPT]	int	NULL,

	[REFUND_PERCENT]	decimal(18,6)	NULL,

	[UPFRONT_PERCENT]	decimal(18,6)	NULL,

	[RATE_ADD_PERCENT]	decimal(18,6)	NULL,

	[BUILDER_UNLOCK]	nchar(1)	NULL,

	[DT_FIRST_FLOAT_ELIG_OVR]	datetime	NULL,

	[DT_FINAL_FLOAT_ELIG_OVR]	datetime	NULL,

	[DISC_VARIANCE_PCT]	decimal(18,6)	NULL,

	[BALLOON_YN]	nchar(1)	NULL,

	[AUS_INDICATOR]	nvarchar(8)	NULL,

	[LOAN_TYPE_CHG_FLAG]	nchar(2)	NULL,

	[S_PROD_PRICE_ENGINE]	nvarchar(8)	NULL,

	[S_PROD_PRICE_ENGINE_OVR]	nvarchar(8)	NULL,

	[S_PPY_FILTER]	nvarchar(8)	NULL,

	[BUILDER_LOCK_ADJ]	decimal(16,6)	NULL,

	[REQLOANTERM]	int	NULL,

	[DLR_PIPMT]	numeric(18,3)	NULL,

CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[PRTFOLIO]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[PNUM]	nvarchar(15)	NULL,

	[NOTERATE]	decimal(16,6)	NULL,

	[UPB]	decimal(18,3)	NULL,

	[OMA]	decimal(18,3)	NULL,

	[OIR]	decimal(16,6)	NULL,

	[OICD]	datetime	NULL,

	[OPCD]	datetime	NULL,

	[FPDD]	datetime	NULL,

	[IRCP]	smallint	NULL,

	[IRCD]	datetime	NULL,

	[MARGIN]	decimal(16,6)	NULL,

	[TP]	smallint	NULL,

	[FLOOR]	decimal(16,6)	NULL,

	[RMNGTERM]	smallint	NULL,

	[BALLDATE]	datetime	NULL,

	[PCD]	datetime	NULL,

	[PCP]	smallint	NULL,

	[UNITS]	smallint	NULL,

	[LOANTERM]	smallint	NULL,

	[AMTERM]	smallint	NULL,

	[RF]	nchar(1)	NULL,

	[TYPEAQ]	nchar(1)	NULL,

	[MATDATE]	datetime	NULL,

	[REFIAMT]	decimal(18,3)	NULL,

	[RDF]	nchar(1)	NULL,

	[ORIGDATE]	datetime	NULL,

	[DUEDATE]	datetime	NULL,

	[MATTERM]	smallint	NULL,

	[OLTV]	decimal(16,6)	NULL,

	[CLTV]	decimal(16,6)	NULL,

	[MKT]	decimal(18,3)	NULL,

	[COMDATE]	datetime	NULL,

	[NAC]	decimal(16,6)	NULL,

	[LCA]	decimal(16,6)	NULL,

	[SPST]	nchar(2)	NULL,

	[MTHPYMT]	decimal(18,3)	NULL,

	[NEWPIPMT]	decimal(18,3)	NULL,

	[NEWIRATE]	decimal(16,6)	NULL,

	[SRP]	decimal(16,6)	NULL,

	[ICO]	nvarchar(5)	NULL,

	[EXCS]	decimal(16,6)	NULL,

	[BUYUPDN]	decimal(16,6)	NULL,

	[COCODE]	nvarchar(3)	NULL,

	[ARMFLAG]	nchar(1)	NULL,

	[CEILING]	decimal(16,6)	NULL,

	[COMDT]	datetime	NULL,

CONSTRAINT [PK_PRTFOLIO] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[REOWNED]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[REOCNTR]	smallint	NOT NULL,

	[INCINTOT]	nchar(1)	NULL,

	[REOADDR1]	nvarchar(55)	NULL,

	[REOADDR2]	nvarchar(55)	NULL,

	[REOCITY]	nvarchar(25)	NULL,

	[REOSTATE]	nchar(2)	NULL,

	[REOZIP]	nvarchar(10)	NULL,

	[S_REOPST]	nvarchar(8)	NULL,

	[S_REOTYP]	nvarchar(8)	NULL,

	[PRESVAL]	decimal(18,3)	NULL,

	[PRESMTG]	decimal(18,3)	NULL,

	[GROSRENT]	decimal(18,3)	NULL,

	[MTGPYMT]	decimal(18,3)	NULL,

	[TINMISC]	decimal(18,3)	NULL,

	[NETRENT]	decimal(18,3)	NULL,

	[PGROSINC]	decimal(16,6)	NULL,

	[AGROSINC]	decimal(18,3)	NULL,

	[S_ONRSHP]	nvarchar(8)	NULL,

	[REOCNTRY]	nvarchar(35)	NULL,

	[PRIM_RES]	nchar(1)	NULL,

	[SUBJECTP]	nchar(1)	NULL,

	[NETRENTOV]	decimal(18,3)	NULL,

	[XPROCEED]	decimal(18,3)	NULL,

	[ASSETCTR]	smallint	NULL,

	[ISLINKED]	nchar(1)	NULL,

	[XPROCEEDOV]	decimal(18,3)	NULL,

	[REOCNTY]	nvarchar(35)	NULL,

	[ORIG_COST]	decimal(18,3)	NULL,

	[PERC_OF_OWNERSHIP]	decimal(16,6)	NULL,

	[ISBLANKET]	nchar(1)	NULL,

	[MSACODE]	nvarchar(6)	NULL,

	[STCODE]	nchar(2)	NULL,

	[CYCODE]	nchar(3)	NULL,

	[STRUCTURE]	nchar(1)	NULL,

	[INFLOODZONE]	nchar(1)	NULL,

	[PARCELID]	nvarchar(40)	NULL,

	[CENSUSTRACT]	nvarchar(8)	NULL,

	[CLOSINGDT]	datetime	NULL,

	[DISBURSEDT]	datetime	NULL,

	[LEGALDBID]	nchar(5)	NULL,

	[LEGALSERNO]	int	NULL,

	[VESTINGDBID]	nchar(5)	NULL,

	[VESTINGSERNO]	int	NULL,

	[RECDIST]	nvarchar(20)	NULL,

	[PROJECTNAME]	nvarchar(80)	NULL,

	[PUDDECLDBID]	nchar(5)	NULL,

	[PUDDECLSERNO]	int	NULL,

	[VERIF_INCOME_TYPE]	nvarchar(8)	NULL,

	[VERIF_DEBT_TYPE]	nvarchar(8)	NULL,

	[VERIF_TYPE_DESC]	nvarchar(80)	NULL,

	[VERIFY]	nchar(1)	NULL,

	[VERIFIED]	nchar(1)	NULL,

	[HOADUES]	decimal(18,3)	NULL,

	[HOME_IMPRV_FLAG]	nvarchar(1)	NULL,

	[NUMBEROFUNITS_REO]	int	NULL,

	[DEBT_DOESNTAPPLY]	nchar(1)	NULL,

	[UNITNUMREO]	nvarchar(12)	NULL,

	[UNITTYPEREO]	nvarchar(100)	NULL,

	[S_ACCOUNT_OWNERSHIP]	nvarchar(8)	NULL,

	[XPROCEEDOVR]	decimal(18,3)	NULL,

	[S_REO_INTEND_OCCUPANCY]	nvarchar(8)	NULL,

	[REO_OTHROCCUP_DESC]	nvarchar(200)	NULL,

	[S_REO_CURR_PROP_USAGE]	nvarchar(8)	NULL,

	[REO_STATE_FOREIN]	nvarchar(35)	NULL,

	[REO_POSTCODE]	nvarchar(12)	NULL,

	[REO_CNTRY_COD]	nvarchar(12)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

CONSTRAINT [PK_REOWNED] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [REOCNTR]

	)
);
CREATE TABLE [dbo].[SEIA]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[TAXYEAR]	int	NOT NULL,

	[METHOD]	nchar(1)	NOT NULL,

	[CNTR]	int	NOT NULL,

	[SCHCPRFT]	decimal(18,3)	NULL,

	[SCHCDEPL]	decimal(18,3)	NULL,

	[SCHCDEPR]	decimal(18,3)	NULL,

	[SCHCPERD]	decimal(18,3)	NULL,

	[SCHDGAIN]	decimal(18,3)	NULL,

	[SCHFPRFT]	decimal(18,3)	NULL,

	[SCHFDEPR]	decimal(18,3)	NULL,

	[K1_1065]	decimal(18,3)	NULL,

	[K1_1120S]	decimal(18,3)	NULL,

	[EXPN2106]	decimal(18,3)	NULL,

	[W2INCORP]	decimal(18,3)	NULL,

	[ADJGRINC]	decimal(18,3)	NULL,

	[WAGSALRY]	decimal(18,3)	NULL,

	[TAXINTIN]	decimal(18,3)	NULL,

	[TAXEXMIN]	decimal(18,3)	NULL,

	[DIVNDINC]	decimal(18,3)	NULL,

	[TAXREFND]	decimal(18,3)	NULL,

	[ALIMONY]	decimal(18,3)	NULL,

	[GAINRLOS]	decimal(18,3)	NULL,

	[IRADISTB]	decimal(18,3)	NULL,

	[PENSANNU]	decimal(18,3)	NULL,

	[SCDEDEPR]	decimal(18,3)	NULL,

	[UNEMPCOM]	decimal(18,3)	NULL,

	[SSBENEFT]	decimal(18,3)	NULL,

	[ODESC1]	nvarchar(40)	NULL,

	[OAMOUNT1]	decimal(18,3)	NULL,

	[ODESC2]	nvarchar(40)	NULL,

	[OAMOUNT2]	decimal(18,3)	NULL,

	[OATOTAL]	decimal(18,3)	NULL,

	[INCSECTL]	decimal(18,3)	NULL,

	[IRADEDUC]	decimal(18,3)	NULL,

	[HALFSETX]	decimal(18,3)	NULL,

	[SEHEALTH]	decimal(18,3)	NULL,

	[KEOGHRET]	decimal(18,3)	NULL,

	[EARLYPEN]	decimal(18,3)	NULL,

	[ALIMNYPD]	decimal(18,3)	NULL,

	[UNREBREX]	decimal(18,3)	NULL,

	[AMORTIZT]	decimal(18,3)	NULL,

	[A_TOTAL]	decimal(18,3)	NULL,

	[B_TAXINC]	decimal(18,3)	NULL,

	[B_TOTTAX]	decimal(18,3)	NULL,

	[B_DEPRET]	decimal(18,3)	NULL,

	[B_DEPLET]	decimal(18,3)	NULL,

	[B_MORTNB]	decimal(18,3)	NULL,

	[B_SUBT_1]	decimal(18,3)	NULL,

	[B_PEROWN]	decimal(16,6)	NULL,

	[B_SUBT_2]	decimal(18,3)	NULL,

	[B_DIVIDN]	decimal(18,3)	NULL,

	[B_TOTAL]	decimal(18,3)	NULL,

	[C_DEPRET]	decimal(18,3)	NULL,

	[C_DEPLET]	decimal(18,3)	NULL,

	[C_MORTNB]	decimal(18,3)	NULL,

	[C_SUBT_1]	decimal(18,3)	NULL,

	[C_PEROWN]	decimal(16,6)	NULL,

	[C_TOTAL]	decimal(18,3)	NULL,

	[SALARY]	decimal(18,3)	NULL,

	[ADDBACK]	decimal(18,3)	NULL,

	[D_PEROWN]	decimal(16,6)	NULL,

	[D_SUBT_1]	decimal(18,3)	NULL,

	[D_NETPRF]	decimal(18,3)	NULL,

	[D_PERON2]	decimal(16,6)	NULL,

	[D_SUBT_2]	decimal(18,3)	NULL,

	[D_TOTAL]	decimal(18,3)	NULL,

	[NOMONTHS]	int	NULL,

	[MNTHAVRG]	decimal(18,3)	NULL,

	[DBID]	nchar(5)	NOT NULL,

	[CTR]	smallint	NOT NULL,

	[TOTINC]	decimal(18,3)	NULL,

	[DEPR2106]	decimal(18,3)	NULL,

	[SCHCOTHI]	decimal(18,3)	NULL,

	[SCHCHOME]	decimal(18,3)	NULL,

	[SCHCAMRT]	decimal(18,3)	NULL,

	[GAIN479]	decimal(18,3)	NULL,

	[NOTE6252]	nchar(1)	NULL,

	[CONT6252]	nchar(1)	NULL,

	[PRIN6252]	decimal(18,3)	NULL,

	[E_ROYALY]	nchar(1)	NULL,

	[E_RNTROY]	decimal(18,3)	NULL,

	[E_XBDEPR]	decimal(18,3)	NULL,

	[E_AMORT]	decimal(18,3)	NULL,

	[E_IMITICL]	decimal(18,3)	NULL,

	[F_ONCOOP]	decimal(18,3)	NULL,

	[F_OTHINC]	decimal(18,3)	NULL,

	[F_AMORTL]	decimal(18,3)	NULL,

	[F_USHOME]	decimal(18,3)	NULL,

	[NINL1065]	decimal(18,3)	NULL,

	[GPYMT1065]	decimal(18,3)	NULL,

	[K1_COND1]	nchar(1)	NULL,

	[K1_COND2]	nchar(1)	NULL,

	[K1_COND3]	nchar(1)	NULL,

	[K1_NINCL]	decimal(18,3)	NULL,

	[PASS1065]	decimal(18,3)	NULL,

	[OTHI1065]	decimal(18,3)	NULL,

	[DEPR1065]	decimal(18,3)	NULL,

	[DEPL1065]	decimal(18,3)	NULL,

	[AMOR1065]	decimal(18,3)	NULL,

	[NOTE1065]	decimal(18,3)	NULL,

	[MEAL1065]	decimal(18,3)	NULL,

	[SUB_1065]	decimal(18,3)	NULL,

	[OWNPERC]	decimal(16,6)	NULL,

	[PARTTOTL]	decimal(18,3)	NULL,

	[C_NRECUR]	decimal(18,3)	NULL,

	[C_AMORTL]	decimal(18,3)	NULL,

	[C_MEALET]	decimal(18,3)	NULL,

	[B_RECURG]	decimal(18,3)	NULL,

	[B_OTHINC]	decimal(18,3)	NULL,

	[B_AMORTL]	decimal(18,3)	NULL,

	[B_NOLASD]	decimal(18,3)	NULL,

	[B_MEALET]	decimal(18,3)	NULL,

	[EGAINLOS]	decimal(18,3)	NULL,

	[CON11065]	nchar(1)	NULL,

	[CON21065]	nchar(1)	NULL,

	[CON31065]	nchar(1)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[E_DEPLET]	decimal(18,3)	NULL,

CONSTRAINT [PK_SEIA] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [TAXYEAR]

	, [METHOD]

	, [CNTR]

	, [DBID]

	, [CTR]

	)
);
CREATE TABLE [dbo].[SELLER]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[SELCNTR]	smallint	NOT NULL,

	[FNAME]	nvarchar(250)	NULL,

	[MNAME]	nvarchar(25)	NULL,

	[LNAME]	nvarchar(25)	NULL,

	[ADDR1]	nvarchar(35)	NULL,

	[ADDR2]	nvarchar(35)	NULL,

	[CITY]	nvarchar(25)	NULL,

	[STATE]	nchar(2)	NULL,

	[ZIP]	nvarchar(10)	NULL,

	[PHONE]	nvarchar(10)	NULL,

	[SSNTIN]	nvarchar(11)	NULL,

	[PCTGP]	decimal(16,6)	NULL,

	[TAXCREDT]	decimal(18,3)	NULL,

	[NAME_SUFFIX]	nvarchar(20)	NULL,

	[UNPARSED_NAME]	nvarchar(250)	NULL,

	[NONPERSON_IND]	nchar(1)	NULL,

	[CNTY]	nvarchar(35)	NULL,

	[LDP_NUMBER]	nvarchar(20)	NULL,

	[GSA_NUMBER]	nvarchar(20)	NULL,

	[SELLER_WORK_PH]	nvarchar(10)	NULL,

	[CONSIDERATION_INCL_SRVCS]	nchar(1)	NULL,

	[ACH_CID_BANK]	int	NULL,

	[ACH_ACCOUNT_TYPE]	nvarchar(35)	NULL,

	[ACH_ACCOUNT_NUMBER]	nvarchar(35)	NULL,

	[AMOUNT_PROCEEDS]	decimal(18,3)	NULL,

	[AMOUNT_PROCEEDS_OVRD]	decimal(18,3)	NULL,

	[ACH_BANK_ADDR_CNTR]	int	NULL,

	[SELLER_ADDRESS_CNTR]	int	NULL,

	[ACH_BANK_ADDR_ROWSERNO]	int	NULL,

	[COUNTRY]	nvarchar(35)	NULL,

	[POWER_OF_ATT]	nvarchar(50)	NULL,

	[POWER_OF_ATT_DESC]	nvarchar(50)	NULL,

	[ESTABLISHED_STATE]	nchar(2)	NULL,

	[S_BOR_SELLER_OPTION]	nvarchar(8)	NULL,

	[S_SEL_UNIT_TYPE]	nvarchar(8)	NULL,

	[SEL_UNIT_NUM]	nvarchar(12)	NULL,

	[SEL_COUNTRY_CODE]	nvarchar(2)	NULL,

	[SEL_STATE_FOREIN]	nvarchar(200)	NULL,

	[SEL_POSTCODE]	nvarchar(200)	NULL,

	[EMAIL]	nvarchar(128)	NULL,

	[S_IDENTIFICATION_TYPE]	nvarchar(8)	NULL,

	[IDENTIFICATION_NUMBER]	nvarchar(35)	NULL,

	[SELLER_LIENHOLDER]	nvarchar(30)	NULL,

	[SELLER_CODE]	int	NULL,

	[SALES_TAX_ID]	nvarchar(64)	NULL,

	[REGION]	nvarchar(25)	NULL,

CONSTRAINT [PK_SELLER] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [SELCNTR]

	)
);
CREATE TABLE [dbo].[SERVICNG]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[SELLSERV]	nchar(1)	NULL,

	[SERVABLE]	nchar(1)	NULL,

	[SERVLOAN]	nchar(1)	NULL,

	[NSERLOAN]	nchar(1)	NULL,

	[NSERLNS3]	nchar(1)	NULL,

	[SELLSOME]	nchar(1)	NULL,

	[PERTRANS]	decimal(16,6)	NULL,

	[PERCT]	decimal(16,6)	NULL,

	[DOESSELL]	nchar(1)	NULL,

	[PREVIOUS]	nchar(1)	NULL,

	[YEAR1]	nchar(4)	NULL,

	[PERC_YR1]	decimal(16,6)	NULL,

	[YEAR2]	nchar(4)	NULL,

	[PERC_YR2]	decimal(16,6)	NULL,

	[YEAR3]	nchar(4)	NULL,

	[PERC_YR3]	decimal(16,6)	NULL,

	[INFODOES]	nchar(1)	NULL,

	[FORMSTOP]	datetime	NULL,

	[NEWSTART]	datetime	NULL,

	[AFFCTSN]	int	NULL,

	[AFFTDBID]	nchar(5)	NULL,

	[ACTIONSN]	int	NULL,

	[ACTNDBID]	nchar(5)	NULL,

	[CHNGHOLD]	nchar(1)	NULL,

	[CHNGMORT]	nchar(1)	NULL,

	[ASSUMPTN]	nchar(1)	NULL,

	[TRANSDAT]	datetime	NULL,

	[SELRETTR]	nchar(1)	NULL,

	[WILTRANS]	nchar(1)	NULL,

	[BATCH_ID_SER_NUM]	int	NULL,

	[SERVICING_TYPE]	nvarchar(8)	NULL,

	[RETAINED_SERVICING_RATE]	numeric(16,6)	NULL,

	[RETAINED_SERVICING_MULTIPLIER]	numeric(16,6)	NULL,

	[RETAINED_SERVICING_VALUE]	numeric(16,6)	NULL,

	[HEDGE_CANDIDATE_YN]	nchar(1)	NULL,

	[COUPON_RATE]	numeric(16,6)	NULL,

	[GUARANTEE_FEE]	numeric(16,6)	NULL,

	[DOCS_SENT]	datetime	NULL,

	[INDEMNF_AMT]	decimal(18,3)	NULL,

	[PC_FEDEX_NUM]	nchar(50)	NULL,

	[S_SERVICING_STATUS]	nvarchar(8)	NULL,

	[COHORT_NUMBER]	nvarchar(10)	NULL,

CONSTRAINT [PK_SERVICNG] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[SUBJPRP]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[SUBJADD1]	nvarchar(55)	NULL,

	[SUBJADD2]	nvarchar(55)	NULL,

	[SUBJCITY]	nvarchar(25)	NULL,

	[SUBJST]	nchar(2)	NULL,

	[SUBJZIP]	nvarchar(10)	NULL,

	[SUBJNMUN]	smallint	NULL,

	[SUBJYRBL]	smallint	NULL,

	[SUBJTHLD]	nvarchar(200)	NULL,

	[SUBJMHLD]	nvarchar(8)	NULL,

	[S_OWNRHT]	nvarchar(8)	NULL,

	[SUBJOREX]	datetime	NULL,

	[SUBJLPRI]	smallint	NULL,

	[SUBJAV]	decimal(18,3)	NULL,

	[SUBJSP]	decimal(18,3)	NULL,

	[S_PRPTYP]	nvarchar(8)	NULL,

	[SUBJSCFN]	decimal(16,6)	NULL,

	[S_DPAYMT]	nvarchar(8)	NULL,

	[S_RESTYP]	nvarchar(8)	NULL,

	[SUBJESTE]	nvarchar(8)	NULL,

	[SUBJLEXP]	datetime	NULL,

	[SUBJCNTY]	nvarchar(35)	NULL,

	[LOTNUM]	nvarchar(20)	NULL,

	[BLOCKNUM]	nvarchar(20)	NULL,

	[SUBDIV]	nvarchar(20)	NULL,

	[S_PURP]	nvarchar(8)	NULL,

	[STCODE]	nchar(2)	NULL,

	[CYCODE]	nchar(3)	NULL,

	[MSACODE]	nvarchar(6)	NULL,

	[S_LIENPO]	nvarchar(8)	NULL,

	[S_LIENHO]	nvarchar(8)	NULL,

	[BALOTHMT]	decimal(18,3)	NULL,

	[SUBJLTV]	decimal(16,6)	NULL,

	[COMBLTV]	decimal(16,6)	NULL,

	[CENTRACT]	nvarchar(8)	NULL,

	[STRALIAS]	nvarchar(20)	NULL,

	[CITYFLAG]	nchar(1)	NULL,

	[S_PRJCLS]	nvarchar(8)	NULL,

	[PROJNAME]	nvarchar(80)	NULL,

	[DECLDBID]	nchar(5)	NULL,

	[DECLSERL]	int	NULL,

	[UNITNUM]	nvarchar(12)	NULL,

	[LEGDSCSN]	int	NULL,

	[LGDSDBID]	nchar(5)	NULL,

	[CITYPRCL]	nvarchar(250)	NULL,

	[CNTYPRCL]	nvarchar(250)	NULL,

	[STATPRCL]	nvarchar(250)	NULL,

	[TAXKEYNO]	nvarchar(80)	NULL,

	[DBID]	nchar(5)	NULL,

	[TYPE1008]	nchar(1)	NULL,

	[NETRINC]	decimal(18,3)	NULL,

	[PRPMAIL]	nchar(1)	NULL,

	[CONSUBFN]	decimal(18,3)	NULL,

	[ATTCHTYP]	nchar(1)	NULL,

	[NUMINHSE]	int	NULL,

	[SECTION]	nvarchar(20)	NULL,

	[ADJPCTG]	decimal(16,6)	NULL,

	[ADJRI]	decimal(18,3)	NULL,

	[PROP_TITLE_CATEGORY_TYPE]	nvarchar(8)	NULL,

	[PURP_DESCRIPT]	nvarchar(80)	NULL,

	[MAN_HOME_SERIAL_NBR]	nvarchar(30)	NULL,

	[COUNTRY]	nvarchar(35)	NULL,

	[LIENPOSOTHER]	nvarchar(255)	NULL,

	[PROPTYPEOTHER]	nvarchar(255)	NULL,

	[S_FREPRJCLS]	nvarchar(8)	NULL,

	[S_FNMPRJCLS]	nvarchar(8)	NULL,

	[HOTEL_INDICATOR]	nchar(1)	NULL,

	[NONWARRANTABLE]	nchar(1)	NULL,

	[NUMBSTORIES]	smallint	NULL,

	[HOMESTEAD]	nchar(1)	NULL,

	[SECFININPUT]	decimal(18,3)	NULL,

	[INCLRESUBDEBT]	nchar(1)	NULL,

	[HOME_STATUS]	nchar(1)	NULL,

	[OTHERPROPUSETYPEDESC]	nvarchar(80)	NULL,

	[OTHERPROPRITTYPEDESC]	nvarchar(80)	NULL,

	[OTHEROWNTYPEDESC]	nvarchar(80)	NULL,

	[S_UNIQUEDWELLINGTYPE]	nvarchar(8)	NULL,

	[OTHERUNIQDWELLINGTYPDSC]	nvarchar(80)	NULL,

	[S_NATIVEAMERICANLANDSTYPE]	nvarchar(8)	NULL,

	[OTHERNATAMERLANDSTYPEDESC]	nvarchar(80)	NULL,

	[COMMLANDTRUSTINDCTR]	nchar(1)	NULL,

	[INCLUSIONARYZONEINDCTR]	nchar(1)	NULL,

	[S_CATEGORYTYPE]	nvarchar(8)	NULL,

	[OTHERCATEGORYTYPEDESC]	nvarchar(80)	NULL,

	[S_PROJECTDESIGNTYPE]	nvarchar(8)	NULL,

	[OTHERPROJDESIGNTYPEDESC]	nvarchar(80)	NULL,

	[S_PROJECTCLASSTYPE]	nvarchar(8)	NULL,

	[OTHERPROJCLASSTYPEDESC]	nvarchar(80)	NULL,

	[OTHERDOWNPAYTYPEDESC]	nvarchar(80)	NULL,

	[S_UNITOWNERSHIPTYPE]	nvarchar(8)	NULL,

	[CONCURRENT_FIN_INPUT]	decimal(16,6)	NULL,

	[INCLUDE_ASSIST_PROGS]	nchar(1)	NULL,

	[S_DPAYMTNM]	nvarchar(8)	NULL,

	[DOWNPAYNMDESC]	nvarchar(80)	NULL,

	[SUBESTAV]	decimal(18,3)	NULL,

	[LTV_ROUNDED]	int	NULL,

	[TLTV_ROUNDED]	int	NULL,

	[S_CONDO_PROJECT_STATUS]	nvarchar(8)	NULL,

	[S_PROJ_ATTACH_TYPE]	nvarchar(8)	NULL,

	[S_PROJECT_DESIGN_TYPE]	nvarchar(8)	NULL,

	[S_ATTACHMENT_TYPE]	nvarchar(8)	NULL,

	[S_PROJ_CLASS_ID_FNM]	nvarchar(8)	NULL,

	[S_PROJ_CLASS_ID_FRE]	nvarchar(8)	NULL,

	[PROJ_UNITS_TOTAL]	int	NULL,

	[PROJ_UNITS_SOLD]	int	NULL,

	[ISUSPSVALIDATED]	nchar(1)	NULL,

	[SUBJADD3]	nvarchar(55)	NULL,

	[CPMPROID]	nvarchar(20)	NULL,

	[S_FRPROJ]	nvarchar(8)	NULL,

	[S_FMPROJ]	nvarchar(8)	NULL,

	[PROPDESC]	nvarchar(30)	NULL,

	[RENTINC_VERIFIED]	nchar(1)	NULL,

	[RENTINC_VERIFY_TYPE]	nvarchar(8)	NULL,

	[VERIFY_RENTINC]	nchar(1)	NULL,

	[CONDO_UNITS_COV_HAZ]	int	NULL,

	[CONDO_UNITS_COV_FLD]	int	NULL,

	[S_STRUCTURETYPE]	nvarchar(20)	NULL,

	[CEMA]	nchar(1)	NULL,

	[FHAHUDAPPROVAL]	nchar(1)	NULL,

	[IMP_COST_PLUS_EEM]	numeric(16,6)	NULL,

	[MAX_LIMIT_LOAN_AMT]	decimal(18,3)	NULL,

	[TOTAL_MTG_PROPERTIES]	int	NULL,

	[S_SUBJUNITTYPE]	nvarchar(8)	NULL,

	[CRAEXEMPTION]	nchar(1)	NULL,

	[MDINDICATOR]	nchar(1)	NULL,

	[MSAINDICATOR]	nchar(1)	NULL,

	[SMALLPOPULATION]	nchar(1)	NULL,

	[INCOME_RESTRICT]	int	NULL,

	[PROPVALUE_RELIED_ON]	nchar(1)	NULL,

	[S_APPRMTHDREQ]	nvarchar(8)	NULL,

	[S_APPRMTHDREQOVR]	nvarchar(8)	NULL,

	[EXIST_EEM_AMT]	decimal(16,6)	NULL,

	[ISCONDOMINIUM]	nchar(1)	NULL,

	[ISCOOPERATIVE]	nchar(1)	NULL,

	[ISPUD]	nchar(1)	NULL,

	[PROPNOTINPROJ]	nchar(1)	NULL,

	[CONVDEEDORLC]	nchar(1)	NULL,

	[MIXEDUSE]	nchar(1)	NULL,

	[MFHOME]	nchar(1)	NULL,

	[TX_50A6]	nchar(1)	NULL,

	[S_TRSTYP]	nvarchar(8)	NULL,

	[SHORT_LEGAL_DESC_OVR]	nvarchar(200)	NULL,

	[SUBJTHLCUR]	nvarchar(200)	NULL,

	[ADJLTV]	decimal(16,6)	NULL,

	[ADJCLTV]	decimal(16,6)	NULL,

	[LEASE_HOLDER]	nvarchar(30)	NULL,

	[LEASEHOLD_DATE]	datetime	NULL,

	[TX_50F2]	nchar(1)	NULL,

	[RESALE_RESTRICTION]	int	NULL,

CONSTRAINT [PK_SUBJPRP] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[TAXINFO]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[REFUN3RD]	nchar(1)	NULL,

	[OTH3RDNM]	nvarchar(80)	NULL,

	[TRAN1040]	nchar(1)	NULL,

	[TAXFORM]	nchar(1)	NULL,

	[CERTCOPY]	nchar(1)	NULL,

	[VERIFNON]	nchar(1)	NULL,

	[W2COPY]	nchar(1)	NULL,

	[W2STATE]	nchar(1)	NULL,

	[SBAREQ]	nchar(1)	NULL,

	[DOEREQ]	nchar(1)	NULL,

	[FINREQ]	nchar(1)	NULL,

	[VAREQ]	nchar(1)	NULL,

	[FRMREQ1]	nvarchar(10)	NULL,

	[FRMREQ2]	nvarchar(10)	NULL,

	[FRMREQ3]	nvarchar(10)	NULL,

	[FRMREQ4]	nvarchar(10)	NULL,

	[PERCOST]	decimal(18,3)	NULL,

	[REQTIME]	nvarchar(20)	NULL,

	[TAXTYPE1]	nvarchar(20)	NULL,

	[TAXTYPE2]	nvarchar(20)	NULL,

	[TAXTYPE3]	nvarchar(20)	NULL,

	[TAXTYPE4]	nvarchar(20)	NULL,

	[BRTITLE1]	nvarchar(20)	NULL,

	[BRTITLE2]	nvarchar(20)	NULL,

	[CAFNUM]	nchar(9)	NULL,

	[PLANNUM]	nchar(3)	NULL,

	[APPNWADD]	nchar(1)	NULL,

	[APPNWPH]	nchar(1)	NULL,

	[TAXSPUSE]	nchar(1)	NULL,

	[TAXTOAPP]	nchar(1)	NULL,

	[TAXREVOK]	nchar(1)	NULL,

	[EXECMOU]	nchar(1)	NULL,

	[MOUACCT]	nvarchar(20)	NULL,

	[REQPHONE]	nchar(10)	NULL,

	[NUMPRDS]	smallint	NULL,

	[APPNWFAX_CHK]	nchar(1)	NULL,

	[PERREQ1]	nchar(4)	NULL,

	[PERREQ2]	nchar(4)	NULL,

	[PERREQ3]	nchar(4)	NULL,

	[PERREQ4]	nchar(4)	NULL,

	[PERREQ5]	nchar(4)	NULL,

	[PERREQ6]	nchar(4)	NULL,

	[PERREQ7]	nchar(4)	NULL,

	[PERREQ8]	nchar(4)	NULL,

CONSTRAINT [PK_TAXINFO] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[TILINFO]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[INITDISC]	nchar(1)	NULL,

	[REQITEM]	nchar(1)	NULL,

	[AREQDEP]	nchar(1)	NULL,

	[DASSUM]	nchar(1)	NULL,

	[ASSUMBLE]	nchar(1)	NULL,

	[RQPRPINS]	nchar(1)	NULL,

	[INSTERM]	smallint	NULL,

	[FEESTAXS]	decimal(18,3)	NULL,

	[ALLOWDYS]	smallint	NULL,

	[LTCHG]	decimal(16,6)	NULL,

	[MINLTCHG]	decimal(18,3)	NULL,

	[MAXLTCHG]	decimal(18,3)	NULL,

	[RFNDFCHG]	nchar(1)	NULL,

	[SECINRST]	nchar(1)	NULL,

	[RQMTGINS]	nchar(1)	NULL,

	[COLLSN]	int	NULL,

	[PRPOWNSN]	int	NULL,

	[PRPOWNDB]	nchar(5)	NULL,

	[MLIFPREM]	decimal(18,3)	NULL,

	[MLIFTERM]	int	NULL,

	[MDISPREM]	decimal(18,3)	NULL,

	[MDISTERM]	int	NULL,

	[MLDPREM]	decimal(18,3)	NULL,

	[MLDTERM]	int	NULL,

	[LATECHGFLAG]	nchar(1)	NULL,

	[ESTDISC]	nchar(1)	NULL,

	[COLLDBID]	nchar(5)	NULL,

	[YIELDDT]	datetime	NULL,

	[COMP_APR]	decimal(16,6)	NULL,

	[TTLINSPMT]	decimal(18,3)	NULL,

	[PREPYPEN]	nchar(1)	NULL,

	[LENDOWN]	nchar(1)	NULL,

	[DSCMIPMT]	nchar(1)	NULL,

	[CLCOMPNY]	nvarchar(20)	NULL,

	[INSURED]	nchar(1)	NULL,

	[LAMTOVR]	decimal(18,3)	NULL,

	[FEESOVR]	decimal(16,6)	NULL,

	[PERLAOVR]	decimal(18,3)	NULL,

	[APROVR]	decimal(16,6)	NULL,

	[HOEPARES]	nvarchar(10)	NULL,

	[PPPTYPE]	nvarchar(8)	NULL,

	[DISINTRST]	nchar(1)	NULL,

	[APR]	decimal(16,6)	NULL,

	[DEMANDF]	nchar(1)	NULL,

	[ASSUME_BEGIN_DATE]	datetime	NULL,

	[ASSUME_TERM_MONTHS]	decimal(16,6)	NULL,

	[ASSUMABLE_DESC]	nvarchar(254)	NULL,

	[JOINLIFETRM]	int	NULL,

	[JOINLIFEPRM]	decimal(18,3)	NULL,

	[REDISCLOSE_IND]	nchar(1)	NULL,

	[SECINTPRC]	nchar(1)	NULL,

	[SECINTOWN]	nchar(1)	NULL,

	[SECINTOTH]	nchar(1)	NULL,

	[S_LATECHARGETYPE]	nvarchar(8)	NULL,

	[S_PPPOPT]	nvarchar(8)	NULL,

	[PMMS_RATE]	decimal(16,6)	NULL,

	[LOCK_REDISCLOSE_IND]	nchar(1)	NULL,

	[S_TIL2011_OVRD]	nvarchar(8)	NULL,

	[FLAT_AMT]	decimal(18,3)	NULL,

	[BPRESOTHPRGS]	nchar(1)	NULL,

	[DISCLOSE_APR]	numeric(16,6)	NULL,

	[CD_NEG_AMINFO]	nchar(1)	NULL,

	[CD_PAR_PAYINFO]	nchar(1)	NULL,

	[CD_PAR_PAYINFO_A]	nchar(1)	NULL,

	[CD_PAR_PAYINFO_H]	nchar(1)	NULL,

	[FINANCE_CHARGE]	decimal(18,3)	NULL,

	[TOTAL_OF_PMTS]	decimal(18,3)	NULL,

	[ESTIMATE_ESCROW]	decimal(18,3)	NULL,

	[AMT_FINANCED]	decimal(18,3)	NULL,

	[HIGHCOSTLOAN]	nvarchar(20)	NULL,

	[MAPR]	decimal(16,6)	NULL,

	[OTHER_LOAN_FEATURE]	nchar(1)	NULL,

	[OTHER_LOAN_FEATURES_DESC]	nvarchar(50)	NULL,

	[GOODS_PURCHASED]	nchar(1)	NULL,

	[PERSONAL_PROPERTY]	nchar(1)	NULL,

	[PRESENT_SHARES]	nchar(1)	NULL,

	[OTHER_COLLATERAL]	nchar(1)	NULL,

CONSTRAINT [PK_TILINFO] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[TRACKING]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[TRAGCYCN]	nvarchar(30)	NULL,

	[TRLNDRCN]	nvarchar(30)	NULL,

	[CLNUM]	nvarchar(20)	NOT NULL,

	[S_IVMETH]	nvarchar(8)	NULL,

	[S_IVID]	nvarchar(8)	NULL,

	[S_BUSCHL]	nvarchar(8)	NULL,

	[CLOSEDT]	datetime	NULL,

	[DISBURDT]	datetime	NULL,

	[FSTPMTDT]	datetime	NULL,

	[ODDDAYS]	smallint	NULL,

	[FEEFIRST]	nchar(1)	NULL,

	[S_COPT1]	nvarchar(8)	NULL,

	[S_COPT2]	nvarchar(8)	NULL,

	[S_COPT3]	nvarchar(8)	NULL,

	[S_COPT4]	nvarchar(8)	NULL,

	[S_COPT5]	nvarchar(8)	NULL,

	[CUSHION]	int	NULL,

	[AGGEADJ]	decimal(18,3)	NULL,

	[DOWNPYMT]	decimal(18,3)	NULL,

	[USRID]	int	NULL,

	[TIMELOCKED]	datetime	NULL,

	[CLOSDTPRXY]	datetime	NULL,

	[DISBDTPRXY]	datetime	NULL,

	[FSTPMTPRXY]	datetime	NULL,

	[ODDPRXY]	smallint	NULL,

	[CREATEDBID]	nchar(5)	NULL,

	[AGAMTCOL]	decimal(18,3)	NULL,

	[LOCKCFM]	nchar(1)	NULL,

	[WHOCFM]	nvarchar(32)	NULL,

	[WHOMCFM]	nvarchar(32)	NULL,

	[PREQUAL]	nchar(1)	NULL,

	[S_COPT6]	nvarchar(8)	NULL,

	[S_COPT7]	nvarchar(8)	NULL,

	[S_COPT8]	nvarchar(8)	NULL,

	[S_COPT9]	nvarchar(8)	NULL,

	[S_COPT10]	nvarchar(10)	NULL,

	[S_CRDGRDRQ]	nvarchar(8)	NULL,

	[S_DOCLEVEL]	nvarchar(8)	NULL,

	[GRADEDC]	nvarchar(20)	NULL,

	[S_CRDGRDAP]	nvarchar(8)	NULL,

	[S_QUALITY]	nvarchar(8)	NULL,

	[DMSGRADE]	nvarchar(8)	NULL,

	[ESTCLOSD]	nchar(1)	NULL,

	[SRVCNUM]	nvarchar(20)	NULL,

	[OWN_NAME]	nchar(1)	NULL,

	[WRHSFND]	nchar(1)	NULL,

	[CLLNAPPRVL]	nchar(1)	NULL,

	[GENCMTID]	nchar(1)	NULL,

	[CORR_OWN_NAME]	nchar(1)	NULL,

	[CORR_WRHSFND]	nchar(1)	NULL,

	[CORR_CLLNAPPRVL]	nchar(1)	NULL,

	[LRPROFID]	int	NULL,

	[LRGROUPID]	int	NULL,

	[LRUSERID]	int	NULL,

	[LRDATE]	datetime	NULL,

	[TPBROKR]	nvarchar(25)	NULL,

	[S_DELTERMS]	nvarchar(8)	NULL,

	[SELLCL]	nvarchar(8)	NULL,

	[WLSTATUS]	nvarchar(8)	NULL,

	[CLTYPE]	nvarchar(8)	NULL,

	[ESCPROJY]	int	NULL,

	[CAPEXP]	decimal(18,3)	NULL,

	[COPYDBCODE]	nvarchar(8)	NULL,

	[USERQUALIFIER]	nvarchar(50)	NULL,

	[PURPOSE_TYPE]	nvarchar(8)	NULL,

	[S_CASE_STATUS]	nvarchar(8)	NULL,

	[S_REPAY]	nvarchar(8)	NULL,

	[UNITPER]	decimal(5,0)	NULL,

	[UNITPEROVR]	decimal(5,0)	NULL,

	[LASTLOCKED]	datetime	NULL,

	[BLANKETLOAN]	nchar(1)	NULL,

	[SETUPDBID]	nchar(5)	NULL,

	[OTHERCASESTATEDESC]	nvarchar(80)	NULL,

	[OTHERDOCLEVELDESC]	nvarchar(80)	NULL,

	[WHENCFM]	datetime	NULL,

	[CLNUM_OVRD]	nvarchar(20)	NULL,

	[SERVICING_EXPORT]	nchar(1)	NULL,

	[OBLIGATED_BORROWER_COUNT]	int	NULL,

	[SECURITY_TOKEN]	nvarchar(50)	NULL,

	[S_CHANNEL_SOURCE_CODE]	nvarchar(8)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[LOAN_CREATE_DATE]	datetime	NULL,

	[CLIENT_TOLL_FREE_NUM]	nvarchar(11)	NULL,

	[RELEASELOCKTIME]	datetime	NULL,

	[URLA_1003]	nchar(1)	NULL,

	[RUN_SYSTEM_CALCS_MODE]	nvarchar(10)	NULL,

	[USE2019URLA]	int	NULL,

	[PREQUALORPREAPPROVAL]	nchar(1)	NULL,

	[AUTO_CREDIT_PULLED]	nchar(1)	NULL,

	[SELLER_SERVICING_NUM]	nvarchar(20)	NULL,

CONSTRAINT [PK_TRACKING] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[TRANSDATA]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[PURPRICE]	decimal(18,3)	NULL,

	[IMPCOST]	decimal(18,3)	NULL,

	[COSTLAND]	decimal(18,3)	NULL,

	[REFAMT]	decimal(18,3)	NULL,

	[ESTPREPD]	decimal(18,3)	NULL,

	[ESTCLOS]	decimal(18,3)	NULL,

	[MIFUND]	decimal(18,3)	NULL,

	[DISCOUNT]	decimal(18,3)	NULL,

	[SUBFIN]	decimal(18,3)	NULL,

	[SELLCLOS]	decimal(18,3)	NULL,

	[FINFEES]	decimal(18,3)	NULL,

	[LOANONLY]	decimal(18,3)	NULL,

	[SUB_BELOW_MARKET]	nchar(1)	NULL,

	[SUBORDINATE_TOTAL]	decimal(18,3)	NULL,

CONSTRAINT [PK_TRANSDATA] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[TRSTENTS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[TRUSTNO]	int	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[COUNTER]	smallint	NOT NULL,

	[TRFLAG]	nchar(1)	NULL,

	[FTRNAME]	nvarchar(50)	NULL,

	[LTRNAME]	nvarchar(30)	NULL,

	[TRSTTYPE]	nchar(1)	NULL,

	[TRSTINST]	nvarchar(40)	NULL,

	[MTRNAME]	nvarchar(30)	NULL,

	[TRNAME_SUFFIX]	nvarchar(5)	NULL,

	[POAFLAG]	nchar(1)	NULL,

	[POA]	nvarchar(116)	NULL,

	[ADDR]	nvarchar(35)	NULL,

	[CITY]	nvarchar(35)	NULL,

	[STATE]	nchar(2)	NULL,

	[ZIP]	nvarchar(10)	NULL,

	[AUTHORIZED_SIGNEE]	nchar(1)	NULL,

	[TRSTTL]	nvarchar(30)	NULL,

	[TRUSTPHONE]	nvarchar(14)	NULL,

	[TRUST_FOREIGN_ADDRESS]	nchar(1)	NULL,

	[TRUST_FOREIGN_COUNTRY]	nvarchar(35)	NULL,

	[TRUST_STREET_ADDR2]	nvarchar(35)	NULL,

	[EMAIL]	nvarchar(128)	NULL,

	[S_TRUST_UNIT_TYPE]	nvarchar(8)	NULL,

	[TRUST_UNIT_NUM]	nvarchar(12)	NULL,

	[TRUST_COUNTRY_CODE]	nvarchar(2)	NULL,

	[LIVING_TRUST_BNUM]	smallint	NULL,

	[TRST_STATE_FOR]	nvarchar(35)	NULL,

	[TRST_POSTCODE]	nvarchar(15)	NULL,

CONSTRAINT [PK_TRSTENTS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [TRUSTNO]

	, [DBID]

	, [COUNTER]

	)
);
CREATE TABLE [dbo].[TRUSTS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[TRUSTCNT]	int	NOT NULL,

	[TRSTDBID]	nchar(5)	NULL,

	[TRSTSERI]	int	NULL,

	[TRSTNAME]	nvarchar(45)	NULL,

	[TRSTDATE]	datetime	NULL,

	[TRSTTXID]	nvarchar(9)	NULL,

	[TRSTADT1]	datetime	NULL,

	[TRSTADT2]	datetime	NULL,

	[TRSTNUMB]	nvarchar(20)	NULL,

	[S_TRSTYP]	nvarchar(8)	NULL,

	[TRSTINST]	nvarchar(40)	NULL,

	[TRSTREV]	nchar(1)	NULL,

	[STATE]	nchar(2)	NULL,

	[TRSTNOMINEE]	nchar(1)	NULL,

	[IDENTIFICATION_NUM]	nvarchar(40)	NULL,

	[QPRT_IND]	nchar(1)	NULL,

	[QPRT_EXP_DATE]	datetime	NULL,

	[QPRT_BEN_WAIVER]	nchar(1)	NULL,

	[LIVTRST]	nchar(1)	NULL,

CONSTRAINT [PK_TRUSTS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [TRUSTCNT]

	)
);
CREATE TABLE [dbo].[UNDCOND1]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[S_DISPOSITION]	nvarchar(8)	NULL,

	[S_UWOPT1]	nvarchar(8)	NULL,

	[S_UWOPT2]	nvarchar(8)	NULL,

	[S_UWOPT3]	nvarchar(8)	NULL,

	[S_UWOPT4]	nvarchar(8)	NULL,

	[S_UWOPT5]	nvarchar(8)	NULL,

	[S_UWOPT6]	nvarchar(8)	NULL,

	[INV_APPRV_DATE]	datetime	NULL,

	[UNDW_EXP_DATE]	datetime	NULL,

	[DOC_EXP_DATE]	datetime	NULL,

	[DISPOSITION_DATE]	datetime	NULL,

	[CREDSCORE]	int	NULL,

	[QUALCODE]	nvarchar(8)	NULL,

	[UWCOMDBID]	nchar(5)	NULL,

	[UWCOMSN]	int	NULL,

	[AUSCOMDBID]	nchar(5)	NULL,

	[AUSCOMSN]	int	NULL,

	[S_TRGTINV]	nvarchar(8)	NULL,

	[UWENTITY]	nvarchar(8)	NULL,

	[CREDSCOVRD]	int	NULL,

	[DELEGATED_ENDORSEMENT]	nchar(1)	NULL,

	[UW_INCOME_EXCEPTION_DESC]	nvarchar(240)	NULL,

	[EST_CRED_SCORE]	int	NULL,

	[CREDIT_REPORT_REF]	nvarchar(20)	NULL,

	[S_CREDSCORE_OVERRIDE_REASON]	nvarchar(8)	NULL,

	[CS_OVR_REAS_OTHERDESC]	nvarchar(35)	NULL,

	[DECISIONTARGETDATE]	datetime	NULL,

	[DISPOSITION_DATETIME]	datetime	NULL,

CONSTRAINT [PK_UNDCOND1] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[UNDCOND2]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[CNTR]	int	NOT NULL,

	[S_SUNDCON]	nvarchar(8)	NULL,

	[S_UNDCAT]	nvarchar(8)	NULL,

	[S_UNDTYP]	nvarchar(8)	NULL,

	[CUUSRID]	int	NULL,

	[CUUSGRP]	int	NULL,

	[CUDATE]	datetime	NULL,

	[CUSTATE]	nchar(1)	NULL,

	[SIGNDT]	datetime	NULL,

	[WAIVEDDT]	datetime	NULL,

	[LOANTYPE]	nchar(1)	NULL,

	[UWCKLIST]	nvarchar(30)	NULL,

	[ISACTIVE]	nchar(1)	NULL,

	[S_ASSOCDOC]	nvarchar(8)	NULL,

	[SHWWAIVE]	nchar(1)	NULL,

	[DISCLOSE]	nchar(1)	NULL,

	[S_COMFLG]	nvarchar(8)	NULL,

	[RESPONSIBLE_P]	nvarchar(8)	NULL,

	[DUEDATE]	datetime	NULL,

	[ERRORCAUSEBY]	nvarchar(8)	NULL,

	[S_CONDITION_SRC]	nvarchar(8)	NULL,

	[CREATED_DATE]	datetime	NULL,

	[CREATED_USER]	nvarchar(30)	NULL,

	[RECEIVED_DT]	datetime	NULL,

	[IMGSTATUS]	nchar(1)	NULL,

	[REVIEWED_DT]	datetime	NULL,

	[WAIVE_REASON_TEXT]	nvarchar(256)	NULL,

	[CONDITION_TEXT]	nvarchar(2000)	NULL,

	[PUBLISHED]	nchar(1)	NULL,

	[REASON_ADD_COND]	nvarchar(100)	NULL,

	[REJECTED_DT]	datetime	NULL,

	[RESET_DT]	datetime	NULL,

CONSTRAINT [PK_UNDCOND2] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [CNTR]

	)
);
CREATE TABLE [dbo].[UWAPPR]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[CNTR]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[S_PRPTYP]	nvarchar(8)	NULL,

	[UNITNUM]	nvarchar(10)	NULL,

	[PROJNAME]	nvarchar(30)	NULL,

	[APPRAISAL]	nvarchar(60)	NULL,

	[APPRAISER]	nvarchar(35)	NULL,

	[APPRDATE]	datetime	NULL,

	[APPRVALUE]	decimal(18,3)	NULL,

	[LANDVALUE]	decimal(18,3)	NULL,

	[ORIGCOST]	decimal(18,3)	NULL,

	[YRPURCH]	smallint	NULL,

	[YRBUILT]	smallint	NULL,

	[LICENSE]	nvarchar(50)	NULL,

	[ADDR]	nvarchar(60)	NULL,

	[CITY]	nvarchar(25)	NULL,

	[STATE]	nchar(2)	NULL,

	[ZIP]	nvarchar(10)	NULL,

	[PHONE]	nvarchar(11)	NULL,

	[FAX]	nvarchar(11)	NULL,

	[NET1]	decimal(16,6)	NULL,

	[GROSS1]	decimal(18,3)	NULL,

	[NET2]	decimal(16,6)	NULL,

	[GROSS2]	decimal(18,3)	NULL,

	[NET3]	decimal(16,6)	NULL,

	[GROSS3]	decimal(18,3)	NULL,

	[NET4]	decimal(16,6)	NULL,

	[GROSS4]	decimal(18,3)	NULL,

	[NET5]	decimal(16,6)	NULL,

	[GROSS5]	decimal(18,3)	NULL,

	[NET6]	decimal(16,6)	NULL,

	[GROSS6]	decimal(18,3)	NULL,

	[S_APPRTYPE]	nvarchar(8)	NULL,

	[SUBMFLG]	nchar(1)	NULL,

	[LANDTOVALUE]	decimal(16,6)	NULL,

	[APPRVALUEINDICATOR]	nvarchar(8)	NULL,

	[APPRLICENSECODE]	nvarchar(2)	NULL,

	[LOCATION]	nvarchar(8)	NULL,

	[ZONING]	nvarchar(8)	NULL,

	[SQFEET]	int	NULL,

	[ACREAGE]	decimal(16,6)	NULL,

	[EFFAGE]	int	NULL,

	[FORSALE]	nchar(1)	NULL,

	[LAST12]	nchar(1)	NULL,

	[LESS750]	nchar(1)	NULL,

	[HVE_EFFECTIVE_DT]	datetime	NULL,

	[S_APPRFORMTYPE]	nvarchar(8)	NULL,

	[APPRFORMTYPEOTHDESC]	nvarchar(80)	NULL,

	[S_PRPFORMTYPE]	nvarchar(8)	NULL,

	[PRPFORMTYPEOTHDESC]	nvarchar(80)	NULL,

	[S_PRPMETHODTYPE]	nvarchar(8)	NULL,

	[PRPMETHODTYPEOTHDESC]	nvarchar(80)	NULL,

	[S_LVLPRPRVW]	nvarchar(8)	NULL,

	[APPRLVLPRPRVWTYPEOTHDESC]	nvarchar(80)	NULL,

	[APPR_SUPER_LIC]	nvarchar(50)	NULL,

	[DATEORDERED]	datetime	NULL,

	[ORDEREDBY]	int	NULL,

	[DUEDATE]	datetime	NULL,

	[QUOTE]	decimal(18,3)	NULL,

	[ACTUALCOST]	decimal(18,3)	NULL,

	[DATERECEIVED]	datetime	NULL,

	[S_STATUS]	nvarchar(8)	NULL,

	[REQUESTEDDATE]	datetime	NULL,

	[REQUESTEDBY]	int	NULL,

	[DATEREVIEWED]	datetime	NULL,

	[REVIEWEDBY]	int	NULL,

	[RESPONSIVENESS]	nchar(1)	NULL,

	[TURNAROUNDTIME]	nchar(1)	NULL,

	[REPORTQUALITY]	nchar(1)	NULL,

	[REVISIONREQUIRED]	nchar(1)	NULL,

	[ACTUALFEEAMT]	decimal(18,3)	NULL,

	[INVOICENUMB]	nvarchar(15)	NULL,

	[INVOICEDATE]	datetime	NULL,

	[REQUISITIONSENTDATE]	datetime	NULL,

	[REQ_NOTES_DBID]	nchar(5)	NULL,

	[REQ_NOTES_SN]	int	NULL,

	[REQAPPRCOMPANY]	int	NULL,

	[REQAPPR]	int	NULL,

	[SITEVALUE]	decimal(18,3)	NULL,

	[SUBJECTTOREPAIRS]	nchar(1)	NULL,

	[S_APPRMETH]	nvarchar(8)	NULL,

	[S_AVM]	nvarchar(8)	NULL,

	[S_AVMOTH]	nvarchar(8)	NULL,

	[APPR_SUPER_FNAME]	nvarchar(30)	NULL,

	[APPR_SUPER_LNAME]	nvarchar(30)	NULL,

	[APPRREINSPFEE]	numeric(16,6)	NULL,

	[APPR_COMMENTS]	nvarchar(4000)	NULL,

	[RUSHED]	nchar(1)	NULL,

	[SENIORLVLRVW]	nchar(1)	NULL,

	[GROSSLIVINGAREA]	numeric(16,6)	NULL,

	[TOTAL_ROOMS]	int	NULL,

	[BEDROOMS]	int	NULL,

	[BATHS]	numeric(2,1)	NULL,

	[HOA_FEES]	decimal(18,3)	NULL,

	[FHA_VA_APPRAISER_CHUMSID]	nvarchar(30)	NULL,

	[ADDR2]	nvarchar(60)	NULL,

	[INV_COLL_PROG_ID]	nvarchar(8)	NULL,

	[FORECAST_STD_DEV]	decimal(18,3)	NULL,

	[S_HOA_FEES_PERIOD_TYPE]	nvarchar(8)	NULL,

CONSTRAINT [PK_UWAPPR] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [CNTR]

	, [DBID]

	)
);
CREATE TABLE [dbo].[VARTXT]	( 

	[DBID]	nchar(5)	NOT NULL,

	[SERIALNO]	int	NOT NULL,

	[SEQNO]	int	NOT NULL,

	[TEXTSEG]	nchar(80)	NULL,

	[LNUM]	nchar(20)	NULL,

CONSTRAINT [PK_VARTXT] PRIMARY KEY CLUSTERED (

	  [DBID]

	, [SERIALNO]

	, [SEQNO]

	)
);
CREATE TABLE [dbo].[VESTING]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[VDBID]	nchar(5)	NOT NULL,

	[VSN]	int	NOT NULL,

	[STATUS]	int	NOT NULL,

	[MANUAL]	int	NULL,

CONSTRAINT [PK_VESTING] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[VETINFO]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[SERVNUM]	nchar(15)	NULL,

	[S_BRANCH]	nvarchar(8)	NULL,

	[STRTSERV]	datetime	NULL,

	[ENDSERV]	datetime	NULL,

	[EXEMPT]	nchar(1)	NULL,

	[VETDECES]	nchar(1)	NULL,

	[DATEDECS]	datetime	NULL,

	[RELNAME]	nvarchar(30)	NULL,

	[RELADDR1]	nvarchar(35)	NULL,

	[RELADDR2]	nvarchar(35)	NULL,

	[RELCITY]	nvarchar(25)	NULL,

	[RELSTATE]	nchar(2)	NULL,

	[RELZIP]	nchar(10)	NULL,

	[RELPHONE]	nchar(11)	NULL,

	[RELRELTN]	nvarchar(20)	NULL,

	[SERVPERD]	nchar(1)	NULL,

	[OSRVNUM1]	nchar(15)	NULL,

	[S_OBRCH1]	nvarchar(8)	NULL,

	[OSTRTDT1]	datetime	NULL,

	[OENDDT1]	datetime	NULL,

	[OSRVNUM2]	nchar(15)	NULL,

	[S_OBRCH2]	nvarchar(8)	NULL,

	[OSTRTDT2]	datetime	NULL,

	[OENDDT2]	datetime	NULL,

	[OSRVNUM3]	nchar(15)	NULL,

	[S_OBRCH3]	nvarchar(8)	NULL,

	[OSTRTDT3]	datetime	NULL,

	[OENDDT3]	datetime	NULL,

	[VETSTATUS]	nchar(1)	NULL,

	[VETENTITLE]	decimal(16,6)	NULL,

	[DVETDOB]	datetime	NULL,

	[DVETSSN]	nchar(11)	NULL,

	[DVETCAIVR]	nvarchar(20)	NULL,

	[STATASCR]	nchar(1)	NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[AWAREVAL]	nchar(1)	NULL,

	[CERTENCS]	nchar(1)	NULL,

	[CERTLOST]	nchar(1)	NULL,

	[PRESDELQ]	nchar(1)	NULL,

	[DELDESSN]	int	NULL,

	[DELDEDBID]	nchar(5)	NULL,

	[FORECLOS]	nchar(1)	NULL,

	[FORCLSSN]	int	NULL,

	[FORCLDBID]	nchar(5)	NULL,

	[PREVGILN]	nchar(1)	NULL,

	[SUBVALGE]	nchar(1)	NULL,

	[VETDEBT]	nchar(1)	NULL,

	[VETPORTIONLOAN]	decimal(18,3)	NULL,

	[VETMAXENT]	decimal(18,3)	NULL,

	[VETPREVENT]	decimal(18,3)	NULL,

	[VETADDLENT]	decimal(18,3)	NULL,

	[VETENTCHARGE]	decimal(18,3)	NULL,

	[VETENTCHARGEOVR]	decimal(18,3)	NULL,

	[VETENTCODE]	nchar(2)	NULL,

	[VETFFFACTOR]	decimal(16,6)	NULL,

	[VETFFTOTAL]	decimal(18,3)	NULL,

	[CONTCTVA]	nchar(1)	NULL,

	[PREVCERT]	nchar(1)	NULL,

	[RENEWAL_OFFICE]	nvarchar(25)	NULL,

	[ELIGIBILITY_OFFICE]	nvarchar(25)	NULL,

	[GILOAN_OFFICE]	nvarchar(25)	NULL,

	[PRVAPPCT]	nchar(1)	NULL,

	[PRVAPPDT]	datetime	NULL,

	[RECCERT]	nchar(1)	NULL,

	[RECCOMCT]	nchar(1)	NULL,

	[RECDETE]	nchar(1)	NULL,

	[SECLOAN]	nchar(1)	NULL,

	[SATIS]	nchar(1)	NULL,

	[CLAIM_NBR]	nvarchar(10)	NULL,

	[NAME_AS_ON_PAPERS1]	nvarchar(40)	NULL,

	[NAME_AS_ON_PAPERS2]	nvarchar(40)	NULL,

	[NAME_AS_ON_PAPERS3]	nvarchar(40)	NULL,

	[NAME_AS_ON_PAPERS4]	nvarchar(40)	NULL,

	[REL_FADDR_INDICATOR]	nchar(1)	NULL,

	[ISANOTHERNAME]	nchar(1)	NULL,

	[CLAIM_LOC]	nvarchar(30)	NULL,

	[ANOTHERNAME]	nvarchar(30)	NULL,

	[RETIRED_MILITARY]	nchar(1)	NULL,

	[RESERVE_NATLGUARD]	nchar(1)	NULL,

	[SURVIVING_SPOUSE]	nchar(1)	NULL,

	[SERVICE_EXPIRATION_DATE]	datetime	NULL,

CONSTRAINT [PK_VETINFO] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	)
);
CREATE TABLE [dbo].[WG_ASSET]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[S_ASSET_TYPE]	nvarchar(8)	NULL,

	[S_ASSET_PURPOSE]	nvarchar(8)	NULL,

	[ASSET_VERIFIED]	nchar(1)	NULL,

	[VERIFICATION_REQD]	nchar(1)	NULL,

	[OWNER_EST_VALUE]	numeric(16,6)	NULL,

	[ACTUAL_VALUE]	numeric(16,6)	NULL,

	[SALES_PRICE]	numeric(16,6)	NULL,

	[ASSET_DESC]	nvarchar(30)	NULL,

	[DISCOUNT_PCT]	numeric(16,6)	NULL,

	[SALES_PRICE_VALUE]	decimal(16,6)	NULL,

	[DISCOUNT_PCTOVD]	numeric(16,6)	NULL,

	[PRIMARY_COLLATERAL]	nchar(1)	NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

CONSTRAINT [PK_WG_ASSET] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	)
);
CREATE TABLE [dbo].[WG_ASSET_ACCT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[HOLDER]	nvarchar(30)	NULL,

	[ATTNOF]	nvarchar(30)	NULL,

	[ACCTBAL]	numeric(16,6)	NULL,

	[ACCTIN]	nvarchar(30)	NULL,

	[LIFEFACE]	numeric(16,6)	NULL,

	[ISSUER]	nvarchar(30)	NULL,

	[SHARES]	numeric(16,6)	NULL,

	[DIVIDEND]	numeric(16,6)	NULL,

	[INT_RATE]	numeric(16,6)	NULL,

	[ACCT_START_DT]	datetime	NULL,

	[ACCT_MATUR_DT]	datetime	NULL,

	[S_ACCT_OWNERSHIP]	nvarchar(8)	NULL,

	[ASSET_ACCT_NO]	nvarchar(30)	NULL,

	[SHARE_VALUE]	numeric(16,6)	NULL,

	[ASSET_COLL_VALUE]	numeric(16,6)	NULL,

	[ASSET_COLL_VAL_OVR]	numeric(16,6)	NULL,

	[ACCT_TERM]	int	NULL,

	[EXCHANGE_INFO]	nvarchar(30)	NULL,

	[USE_CALC_LOAN_RT]	nchar(1)	NULL,

CONSTRAINT [PK_WG_ASSET_ACCT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	)
);
CREATE TABLE [dbo].[WG_ASSET_MARINE_ENG]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[ROWCOUNTER]	int	NOT NULL,

	[NEW_YN]	nchar(1)	NULL,

	[ENGINE_ID]	nvarchar(64)	NULL,

	[ENGINE_YEAR]	nvarchar(4)	NULL,

	[ENGINE_MAKE]	nvarchar(20)	NULL,

	[ENGINE_MODEL]	nvarchar(20)	NULL,

	[HORSEPOWER]	int	NULL,

	[CYLINDERS]	int	NULL,

	[POWER_TILT_YN]	nchar(1)	NULL,

	[ENGINE_VALUE]	numeric(16,6)	NULL,

	[HOURS]	int	NULL,

	[ENGINE_TITLE_NUM]	nvarchar(64)	NULL,

	[ENGINE_MODEL_NUM]	nvarchar(64)	NULL,

	[S_ENGINE_MFG]	nvarchar(8)	NULL,

	[S_MULTIENGINETYPE]	nvarchar(8)	NULL,

	[S_ENGINE_COLOR]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_ASSET_MARINE_ENG] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	, [ROWCOUNTER]

	)
);
CREATE TABLE [dbo].[WG_ASSET_VEHICLE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[VIN]	nvarchar(64)	NULL,

	[MAKE]	nvarchar(30)	NULL,

	[MODEL]	nvarchar(50)	NULL,

	[YEAR]	nvarchar(4)	NULL,

	[MSRP]	numeric(16,6)	NULL,

	[NEW_YN]	nchar(1)	NULL,

	[SERIAL]	nvarchar(30)	NULL,

	[S_FUEL_TYPE]	nvarchar(8)	NULL,

	[VEHICLE_REG_NUMBER]	nvarchar(64)	NULL,

	[BODY_TRIM]	nvarchar(50)	NULL,

	[S_VEHICLE_CONDITION]	nvarchar(8)	NULL,

	[COLL_TITLE_NUM]	nvarchar(64)	NULL,

	[S_CNRE_OWNERSHIP]	nvarchar(8)	NULL,

	[LENGTH]	numeric(18,0)	NULL,

	[WIDTH]	numeric(18,0)	NULL,

	[PRIOR_TITLE_NUM]	nvarchar(64)	NULL,

	[S_TRANSF_AS]	nvarchar(8)	NULL,

	[S_TRANSF_TO]	nvarchar(8)	NULL,

	[S_DAMAGE_TYPE]	nvarchar(8)	NULL,

	[IS_BONAFIDE_GIFT]	nchar(1)	NULL,

	[IS_REBUILDABLE]	nchar(1)	NULL,

	[IS_ENERGY_EFFICIENT]	nchar(1)	NULL,

	[PRIOR_STATE]	nvarchar(2)	NULL,

	[S_COLOR]	nvarchar(8)	NULL,

	[S_GV_WEIGHT_RATING]	nvarchar(8)	NULL,

	[SCALE_WEIGHT]	numeric(18,3)	NULL,

	[PAYOFF_AMT]	numeric(18,3)	NULL,

	[MFG_REBATE]	numeric(18,3)	NULL,

	[DLR_REBATE]	numeric(18,3)	NULL,

	[INVOICE_PRC]	numeric(18,3)	NULL,

	[DLR_OPT_PRICE]	numeric(18,3)	NULL,

	[DLR_OPT_VALUE]	numeric(18,3)	NULL,

CONSTRAINT [PK_WG_ASSET_VEHICLE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	)
);
CREATE TABLE [dbo].[WG_ASSET_VHCL_AUTO]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[MILEAGE]	int	NULL,

	[SERIES]	nvarchar(20)	NULL,

	[STYLE]	nvarchar(50)	NULL,

	[S_MTRCYCLESTYLE]	nvarchar(8)	NULL,

	[S_GENERIC_BODY_STYLE]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_ASSET_VHCL_AUTO] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	)
);
CREATE TABLE [dbo].[WG_ASSET_VHCL_MARINE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[S_MARINE_TYPE]	nvarchar(8)	NULL,

	[BOAT_NAME]	nvarchar(64)	NULL,

	[NET_WEIGHT]	int	NULL,

	[S_PROPULSION_TYPE]	nvarchar(8)	NULL,

	[HAILING_PORT]	nvarchar(128)	NULL,

	[MOORING_ADDR1]	nvarchar(55)	NULL,

	[MOORING_ADDR2]	nvarchar(55)	NULL,

	[MOORING_CITY]	nvarchar(55)	NULL,

	[MOORING_STATE]	nchar(2)	NULL,

	[MOORING_ZIP]	nvarchar(5)	NULL,

	[TRAILER_ASSETID]	int	NULL,

	[S_FUEL_TYPE]	nvarchar(8)	NULL,

	[BEAM]	numeric(16,6)	NULL,

	[MARINE_LENGTH]	numeric(16,6)	NULL,

	[S_HULL_MATERIAL]	nvarchar(8)	NULL,

	[S_PRIMARY_USE]	nvarchar(8)	NULL,

	[S_ENGINE_DRIVE]	nvarchar(8)	NULL,

	[IS_DOCUMENTED_VESSEL]	nchar(1)	NULL,

	[USCG_OFFICIAL_NUMBER]	nvarchar(33)	NULL,

	[S_MANUF_TYPE]	nvarchar(8)	NULL,

	[TOILETATTACHED]	nchar(1)	NULL,

	[MATLOTHDESC]	nvarchar(64)	NULL,

	[FUELOTHDESC]	nvarchar(64)	NULL,

	[PROPOTHDESC]	nvarchar(64)	NULL,

	[MOORING_SLIPNO]	nvarchar(100)	NULL,

	[MOORING_FACILITY]	nvarchar(100)	NULL,

	[MOORING_MRENT]	numeric(18,3)	NULL,

CONSTRAINT [PK_WG_ASSET_VHCL_MARINE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	)
);
CREATE TABLE [dbo].[WG_ASSET_VHCL_OPTIONS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[ROWCOUNTER]	int	NOT NULL,

	[S_OPTION_TYPE]	nvarchar(8)	NULL,

	[VHCL_OPTION_VALUE]	numeric(16,6)	NULL,

	[SELECTED_YN]	nchar(1)	NULL,

	[VHCL_OPTION]	nvarchar(50)	NULL,

	[VALUATION_CNTR]	int	NOT NULL,

	[OPTIONS_PRICING_VALUE]	nchar(1)	NULL,

	[VHCL_OPTION_PRICE]	numeric(18,3)	NULL,

CONSTRAINT [PK_WG_ASSET_VHCL_OPTIONS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	, [ROWCOUNTER]

	, [VALUATION_CNTR]

	)
);
CREATE TABLE [dbo].[WG_ASSET_VHCL_RV]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[S_RV_TYPE]	nvarchar(8)	NULL,

	[MILEAGE]	int	NULL,

	[NBR_AXLES]	int	NULL,

	[NBR_SLIDES]	int	NULL,

	[RV_LENGTH]	numeric(16,6)	NULL,

	[SELF_CONTAINED_YN]	nchar(1)	NULL,

	[S_CATEGORY]	nvarchar(8)	NULL,

	[S_MODEL_TYPE]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_ASSET_VHCL_RV] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	)
);
CREATE TABLE [dbo].[WG_ASSET_VHCL_TRAILER]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[S_AXLE_TYPE]	nvarchar(8)	NULL,

	[BRAKES_YN]	nchar(1)	NULL,

	[TRAILER_LENGTH]	numeric(16,6)	NULL,

CONSTRAINT [PK_WG_ASSET_VHCL_TRAILER] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	)
);
CREATE TABLE [dbo].[WG_ASSET_VHCL_VALUATION]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[VALUATION_CNTR]	int	NOT NULL,

	[S_VALUATION_SOURCE]	nvarchar(8)	NULL,

	[VALUATION_RESPONSE_ID]	int	NULL,

	[ACTIVE_YN]	nchar(1)	NULL,

	[ELECTRONIC_YN]	nchar(1)	NULL,

	[MILEAGE_ADJ]	numeric(16,6)	NULL,

	[DEALER_OPTS_ADJ]	numeric(16,6)	NULL,

	[MANUFACTURER_OPTS_ADJ]	numeric(16,6)	NULL,

	[BOOK_EDITION]	nvarchar(20)	NULL,

	[REGION]	nvarchar(20)	NULL,

	[S_CLEAN_LEVEL]	nvarchar(8)	NULL,

	[S_USE_FOR_LOAN_VAL]	nvarchar(8)	NULL,

	[COLL_TRADE_BAM_VALUE]	numeric(16,6)	NULL,

	[COLL_LOAN_BAM_VALUE]	numeric(16,6)	NULL,

	[COLL_RETAIL_BAM_VALUE]	numeric(16,6)	NULL,

	[TOTAL_ADJUSTED_VALUE]	numeric(16,6)	NULL,

	[MILEAGE_YN]	nchar(1)	NULL,

	[ADJUSTED_VALUE]	numeric(16,6)	NULL,

	[OPTIONS_VALUE]	numeric(16,6)	NULL,

	[ENGINE_PRICING]	numeric(16,6)	NULL,

	[PRIMARYVALUATION_YN]	nchar(1)	NULL,

	[MFG_REBATE]	numeric(18,3)	NULL,

	[DLR_REBATE]	numeric(18,3)	NULL,

	[MFG_OPT_PRCNG]	numeric(18,3)	NULL,

	[DLR_OPT_PRCNG]	numeric(18,3)	NULL,

	[INVOICE_PRC]	numeric(18,3)	NULL,

	[TOTL_ADJSTD_VAL_OVRD]	numeric(18,3)	NULL,

CONSTRAINT [PK_WG_ASSET_VHCL_VALUATION] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [ASSETID]

	, [VALUATION_CNTR]

	)
);
CREATE TABLE [dbo].[WG_AUTO_DEBIT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[AD_FLAG]	nchar(1)	NULL,

	[S_AD_ACCT_TYPE]	nvarchar(8)	NULL,

	[AD_INST_NAME]	nvarchar(40)	NULL,

	[AD_ACCT_NUMB]	nvarchar(30)	NULL,

	[AD_RT_NUMB]	nvarchar(35)	NULL,

	[AD_DAYOFAD]	decimal(16,6)	NULL,

	[AD_ADDL_PRINC]	decimal(18,3)	NULL,

	[AD_ACCT_TYP_OTH]	nvarchar(80)	NULL,

CONSTRAINT [PK_WG_AUTO_DEBIT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_BORR_INCOME_SRC_PAYSTUB]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[PS_CTR]	int	NOT NULL,

	[INC_SRC_CTR]	int	NOT NULL,

	[YTD_FROM_DATE]	datetime	NULL,

	[YTD_TO_DATE]	datetime	NULL,

	[PAYSTUB_DATE]	datetime	NULL,

	[AVGHOURSPERWEEK]	numeric(16,6)	NULL,

	[MONTHLYBASEPAY]	numeric(16,6)	NULL,

	[MONTHLYRATE]	numeric(16,6)	NULL,

	[OVERTIME_PAY]	decimal(18,2)	NULL,

	[YTD_BASEPAY]	numeric(16,6)	NULL,

	[YTD_OVERTIMEPAY]	numeric(16,6)	NULL,

	[YTD_BONUSPAY]	numeric(16,6)	NULL,

	[YTD_COMMISSIONPAY]	numeric(16,6)	NULL,

	[YTD_TOTALPAY]	numeric(16,6)	NULL,

	[OTHER_PAY]	decimal(18,2)	NULL,

	[COMMISSION_PAY]	decimal(18,2)	NULL,

	[DEPENDENT_CARE_BENEFITS]	decimal(18,2)	NULL,

	[GARNISHMENTS]	decimal(18,2)	NULL,

	[YTD_OTHERPAY]	decimal(18,2)	NULL,

	[LOAN_REPAYMENT]	decimal(18,2)	NULL,

	[PAYS_TOTAL_PAY]	decimal(18,2)	NULL,

	[CALCULATED_INCOME]	decimal(18,2)	NULL,

	[OVR_CALCULATED_INCOME]	decimal(18,2)	NULL,

	[OTHER_DEDUCTION]	decimal(18,2)	NULL,

	[AVG_YTD_BASE]	decimal(18,2)	NULL,

	[AVG_YTD_GROSS]	decimal(18,2)	NULL,

	[CHK_AVG_YTD_BASE]	nchar(1)	NULL,

	[CHK_CURRENT_BASE]	nchar(1)	NULL,

	[CHK_AVG_YTD_GROSS]	nchar(1)	NULL,

	[BONUS_PAY]	decimal(18,2)	NULL,

	[PAYFREQ]	nchar(2)	NULL,

	[BASE_HOURLY_PAY]	decimal(18,2)	NULL,

	[CHK_BASE_HOURLY_PAY]	nchar(1)	NULL,

	[SUMMARY_CURRENT_NETPAY]	decimal(18,3)	NULL,

	[OVERTIMEHOURS]	numeric(16,6)	NULL,

	[OVERTIMERATE]	numeric(16,6)	NULL,

	[BONUSHOURS]	numeric(16,6)	NULL,

	[BONUSRATE]	numeric(16,6)	NULL,

	[COMMISSIONHOURS]	numeric(16,6)	NULL,

	[COMMISSIONRATE]	numeric(16,6)	NULL,

	[OTHERHOURS]	numeric(16,6)	NULL,

	[OTHERRATE]	numeric(16,6)	NULL,

	[MILITARYHOURS]	numeric(16,6)	NULL,

	[MILITARYRATE]	numeric(16,6)	NULL,

	[MILITARY_PAY]	decimal(18,2)	NULL,

	[YTD_MILITARYPAY]	decimal(18,2)	NULL,

	[DOC_UPLOADED_DATE]	datetime	NULL,

	[DATA_UPDATED_DATE]	datetime	NULL,

	[DATA_UPDATED_BYUSER]	nvarchar(100)	NULL,

	[OCR_DATA_FLAG]	nchar(1)	NULL,

	[VALID_CARD]	nchar(1)	NULL,

CONSTRAINT [PK_WG_BORR_INCOME_SRC_PAYSTUB] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [PS_CTR]

	, [INC_SRC_CTR]

	)
);
CREATE TABLE [dbo].[WG_BRM_DEFN_FIELDS]	( 

	[FIELDID]	int	NOT NULL,

	[S_FIELD_STATUS]	nvarchar(8)	NULL,

	[FIELD_NAME]	nvarchar(20)	NULL,

	[FIELD_TEXT]	nvarchar(40)	NULL,

	[S_FIELD_CONTROL_TYPE]	nvarchar(8)	NULL,

	[S_FIELD_OPERATOR]	nvarchar(8)	NULL,

	[S_FIELD_LIST_SOURCE]	nvarchar(8)	NULL,

	[S_FIELD_FORMAT]	nvarchar(8)	NULL,

	[CURRENT_USER_DATETIME]	datetime	NULL,

	[CURRENT_USER_ID]	int	NULL,

	[S_USAGE_TYPE]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_BRM_DEFN_FIELDS] PRIMARY KEY CLUSTERED (

	  [FIELDID]

	)
);
CREATE TABLE [dbo].[WG_BRM_DEFN_GRID]	( 

	[GRIDID]	int	NOT NULL,

	[S_USAGE_TYPE]	nvarchar(8)	NULL,

	[S_GRID_STATUS]	nvarchar(8)	NULL,

	[S_GRID_CATEGORY]	nvarchar(8)	NULL,

	[GRID_NAME]	nvarchar(80)	NULL,

	[GRID_NBR_DIMS]	int	NULL,

	[RSLT_START_ROW]	int	NULL,

	[CREATED_BY]	int	NULL,

	[CREATED_DATE]	datetime	NULL,

	[RSLT_START_COL]	int	NULL,

	[RSLT_SPAN_ROWS]	int	NULL,

	[RSLT_SPAN_COLS]	int	NULL,

	[CURRENT_USER_DATETIME]	datetime	NULL,

	[CURRENT_USER_ID]	int	NULL,

CONSTRAINT [PK_WG_BRM_DEFN_GRID] PRIMARY KEY CLUSTERED (

	  [GRIDID]

	)
);
CREATE TABLE [dbo].[WG_BRM_DEFN_GRID_DTL]	( 

	[GRIDID]	int	NOT NULL,

	[DIM_OCC]	int	NOT NULL,

	[S_GRID_VERT_HORIZ]	nvarchar(8)	NULL,

	[S_GRID_OPERATOR]	nvarchar(8)	NULL,

	[GRID_FIELD_NAME]	nvarchar(20)	NULL,

	[GRID_LABEL_TEXT]	nvarchar(40)	NULL,

	[GRID_LABEL_OCCS]	int	NULL,

	[GRID_LABEL_START_ROW]	int	NULL,

	[GRID_LABEL_SPAN_ROWS]	int	NULL,

	[GRID_LABEL_START_COL]	int	NULL,

	[GRID_LABEL_SPAN_COLS]	int	NULL,

	[GRID_TGT_VAL_OCCS]	int	NULL,

	[GRID_TGT_VAL_START_COL]	int	NULL,

	[GRID_TGT_VAL_START_ROW]	int	NULL,

	[S_GRID_TGT_VAL_SPAN_TYPE]	nvarchar(8)	NULL,

	[FIELDID]	int	NULL,

CONSTRAINT [PK_WG_BRM_DEFN_GRID_DTL] PRIMARY KEY CLUSTERED (

	  [GRIDID]

	, [DIM_OCC]

	)
);
CREATE TABLE [dbo].[WG_BRM_EXPORT]	( 

	[EXPORTID]	int	NOT NULL,

	[EXP_USER_NAME]	nvarchar(80)	NULL,

	[EXP_DATE_TIME]	datetime	NULL,

	[EXP_FILE_NAME]	nvarchar(80)	NULL,

	[EXP_FILE_PATH]	nvarchar(120)	NULL,

	[S_EXP_STATUS]	nvarchar(8)	NULL,

	[EXP_RULESET_ID]	int	NULL,

	[EXP_BRM_IDENT]	nvarchar(8)	NULL,

	[EXP_BRM_NAME]	nvarchar(30)	NULL,

	[EXP_BRM_EFFDT]	datetime	NULL,

	[EXP_BRM_LC_DT]	datetime	NULL,

	[S_EXP_BRM_STATUS]	nvarchar(8)	NULL,

	[EXP_NOTES]	nvarchar(1000)	NULL,

	[DBID]	nchar(5)	NULL,

	[EXP_INCL_FIELDS]	nchar(1)	NULL,

	[EXP_INCL_CATS]	nchar(1)	NULL,

	[EXP_INCL_GRIDS]	nchar(1)	NULL,

CONSTRAINT [PK_WG_BRM_EXPORT] PRIMARY KEY CLUSTERED (

	  [EXPORTID]

	)
);
CREATE TABLE [dbo].[WG_BRM_IDENTIFIERS]	( 

	[BRM_IDENT_FIELD]	nvarchar(20)	NOT NULL,

	[BRM_IDENT_CODE]	nvarchar(8)	NOT NULL,

	[S_USAGE_TYPE]	nvarchar(8)	NULL,

	[BRM_IDENT_NAME]	nvarchar(30)	NULL,

	[BRM_IDENT_DESCRIPTION]	nvarchar(80)	NULL,

CONSTRAINT [PK_WG_BRM_IDENTIFIERS] PRIMARY KEY CLUSTERED (

	  [BRM_IDENT_FIELD]

	, [BRM_IDENT_CODE]

	)
);
CREATE TABLE [dbo].[WG_BRM_IMPORT]	( 

	[IMPORTID]	int	NOT NULL,

	[IMP_USER_NAME]	nvarchar(80)	NULL,

	[IMP_DATE_TIME]	datetime	NULL,

	[IMP_FILE_NAME]	nvarchar(80)	NULL,

	[IMP_FILE_PATH]	nvarchar(120)	NULL,

	[S_IMP_STATUS]	nvarchar(8)	NULL,

	[EXPORTID]	int	NULL,

	[EXP_USER_NAME]	nvarchar(80)	NULL,

	[EXP_DATE_TIME]	datetime	NULL,

	[EXP_FILE_NAME]	nvarchar(80)	NULL,

	[EXP_FILE_PATH]	nvarchar(120)	NULL,

	[S_EXP_STATUS]	nvarchar(8)	NULL,

	[EXP_RULESET_ID]	int	NULL,

	[EXP_BRM_IDENT]	nvarchar(8)	NULL,

	[EXP_BRM_NAME]	nvarchar(30)	NULL,

	[EXP_BRM_EFFDT]	datetime	NULL,

	[EXP_BRM_LC_DT]	datetime	NULL,

	[S_EXP_BRM_STATUS]	nvarchar(8)	NULL,

	[IMP_NOTES]	nvarchar(1000)	NULL,

	[EXP_NOTES]	nvarchar(1000)	NULL,

	[SYS_FINDINGS]	nvarchar(1000)	NULL,

	[DBID]	nchar(5)	NULL,

	[EXP_INCL_FIELDS]	nchar(1)	NULL,

	[EXP_INCL_CATS]	nchar(1)	NULL,

	[EXP_INCL_GRIDS]	nchar(1)	NULL,

	[IMP_IMP_FIELDS]	nchar(1)	NULL,

	[IMP_IMP_CATS]	nchar(1)	NULL,

	[IMP_IMP_GRIDS]	nchar(1)	NULL,

CONSTRAINT [PK_WG_BRM_IMPORT] PRIMARY KEY CLUSTERED (

	  [IMPORTID]

	)
);
CREATE TABLE [dbo].[WG_BRM_LKUP_BASE]	( 

	[BRMID]	int	NOT NULL,

	[S_USAGE_TYPE]	nvarchar(8)	NULL,

	[LU_BRM_IDENTIFIER]	nvarchar(8)	NULL,

	[S_BRM_STATUS]	nvarchar(8)	NULL,

	[S_BRM_TYPE]	nvarchar(8)	NULL,

	[BRM_NAME]	nvarchar(30)	NULL,

	[BRM_DESCRIPTION]	nvarchar(80)	NULL,

	[BRM_START_DATE]	datetime	NULL,

	[BRM_END_DATE]	datetime	NULL,

	[S_CAP_CATEGORY]	nvarchar(8)	NULL,

	[S_EFFECTIVITY_RULE]	nvarchar(8)	NULL,

	[CHANGE_EFF_DATE]	datetime	NULL,

	[CURRENT_USER_DATETIME]	datetime	NULL,

	[CURRENT_USER_ID]	int	NULL,

	[CREATED_DATE]	datetime	NULL,

	[CREATED_BY_USER_ID]	int	NULL,

	[LAST_CHANGE_DATE]	datetime	NULL,

	[LAST_CHANGE_USER_ID]	int	NULL,

	[MESSAGE_TEXT]	nvarchar(80)	NULL,

	[S_OVERRIDE_LEVEL]	nvarchar(8)	NULL,

	[BRM_CATEGORY]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_BRM_LKUP_BASE] PRIMARY KEY CLUSTERED (

	  [BRMID]

	)
);
CREATE TABLE [dbo].[WG_BRM_LKUP_RULE_BASE]	( 

	[BRMID]	int	NOT NULL,

	[RULE_OCC]	int	NOT NULL,

	[RULE_DESCRIPTION]	nvarchar(80)	NULL,

	[PRIORITY]	int	NULL,

	[MESSAGE_TEXT]	nvarchar(80)	NULL,

	[S_OVERRIDE_LEVEL]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_BRM_LKUP_RULE_BASE] PRIMARY KEY CLUSTERED (

	  [BRMID]

	, [RULE_OCC]

	)
);
CREATE TABLE [dbo].[WG_BRM_LKUP_RULE_DETAIL]	( 

	[BRMID]	int	NOT NULL,

	[RULE_OCC]	int	NOT NULL,

	[RULE_ITEM_OCC]	int	NOT NULL,

	[RULE_ITEM_GRIDID]	int	NOT NULL,

	[RULE_ITEM_GRID_RSLT_ROW]	int	NOT NULL,

	[RULE_ITEM_GRID_RSLT_COL]	int	NOT NULL,

	[RULE_ITEM_FIELD_NAME]	nvarchar(20)	NOT NULL,

	[RULE_DETAIL_OCC]	int	NOT NULL,

	[RULE_ITEM_PAIR_AB]	nchar(1)	NULL,

	[RULE_ITEM_TARGET_VALUE]	nvarchar(50)	NULL,

	[BRM_START_DATE]	datetime	NULL,

	[BRM_END_DATE]	datetime	NULL,

CONSTRAINT [PK_WG_BRM_LKUP_RULE_DETAIL] PRIMARY KEY CLUSTERED (

	  [BRMID]

	, [RULE_OCC]

	, [RULE_ITEM_OCC]

	, [RULE_ITEM_GRIDID]

	, [RULE_ITEM_GRID_RSLT_ROW]

	, [RULE_ITEM_GRID_RSLT_COL]

	, [RULE_ITEM_FIELD_NAME]

	, [RULE_DETAIL_OCC]

	)
);
CREATE TABLE [dbo].[WG_BRM_LKUP_RULE_FIELD]	( 

	[BRMID]	int	NOT NULL,

	[RULE_OCC]	int	NOT NULL,

	[RULE_ITEM_OCC]	int	NOT NULL,

	[RULE_ITEM_GRIDID]	int	NOT NULL,

	[RULE_ITEM_GRID_RSLT_ROW]	int	NOT NULL,

	[RULE_ITEM_GRID_RSLT_COL]	int	NOT NULL,

	[RULE_ITEM_FIELD_NAME]	nvarchar(20)	NOT NULL,

	[S_RULE_ITEM_OPERATOR]	nvarchar(8)	NULL,

	[RULE_ITEM_FIELDID]	int	NULL,

CONSTRAINT [PK_WG_BRM_LKUP_RULE_FIELD] PRIMARY KEY CLUSTERED (

	  [BRMID]

	, [RULE_OCC]

	, [RULE_ITEM_OCC]

	, [RULE_ITEM_GRIDID]

	, [RULE_ITEM_GRID_RSLT_ROW]

	, [RULE_ITEM_GRID_RSLT_COL]

	, [RULE_ITEM_FIELD_NAME]

	)
);
CREATE TABLE [dbo].[WG_BRM_LKUP_RULE_ITEMS]	( 

	[BRMID]	int	NOT NULL,

	[RULE_OCC]	int	NOT NULL,

	[RULE_ITEM_OCC]	int	NOT NULL,

	[S_RULE_ITEM_TYPE]	nvarchar(8)	NULL,

	[RULE_ITEM_NAME]	nvarchar(80)	NULL,

	[PRIORITY]	int	NULL,

	[MESSAGE_TEXT]	nvarchar(80)	NULL,

	[S_OVERRIDE_LEVEL]	nvarchar(8)	NULL,

	[MESSAGE_TEXT_2]	nvarchar(80)	NULL,

CONSTRAINT [PK_WG_BRM_LKUP_RULE_ITEMS] PRIMARY KEY CLUSTERED (

	  [BRMID]

	, [RULE_OCC]

	, [RULE_ITEM_OCC]

	)
);
CREATE TABLE [dbo].[WG_BRM_LKUP_RULE_VALUE]	( 

	[BRMID]	int	NOT NULL,

	[RULE_OCC]	int	NOT NULL,

	[RULE_ITEM_OCC]	int	NOT NULL,

	[RULE_ITEM_GRIDID]	int	NOT NULL,

	[RULE_ITEM_GRID_RSLT_ROW]	int	NOT NULL,

	[RULE_ITEM_GRID_RSLT_COL]	int	NOT NULL,

	[RULE_VALUE_OCC]	int	NOT NULL,

	[BRM_START_DATE]	datetime	NULL,

	[BRM_END_DATE]	datetime	NULL,

	[BRM_VALUE]	numeric(16,6)	NULL,

CONSTRAINT [PK_WG_BRM_LKUP_RULE_VALUE] PRIMARY KEY CLUSTERED (

	  [BRMID]

	, [RULE_OCC]

	, [RULE_ITEM_OCC]

	, [RULE_ITEM_GRIDID]

	, [RULE_ITEM_GRID_RSLT_ROW]

	, [RULE_ITEM_GRID_RSLT_COL]

	, [RULE_VALUE_OCC]

	)
);
CREATE TABLE [dbo].[WG_BULK_IMPORT_DATA]	( 

	[BULK_ID]	int	NOT NULL,

	[RECORD_ID]	int	NOT NULL,

	[RECORD_PROCESSED]	nchar(1)	NULL,

	[LNUM]	nchar(20)	NULL,

	[EXT_LNUM]	nvarchar(20)	NULL,

	[CLIENT_LNUM]	nvarchar(20)	NULL,

	[PB_NAME_FIRST]	nvarchar(30)	NULL,

	[PB_NAME_LAST]	nvarchar(30)	NULL,

	[PB_USCITIZEN_YN]	nchar(1)	NULL,

	[PB_PERM_RES_ALIEN]	nchar(1)	NULL,

	[PB_NONPERM_RES_ALIEN]	nchar(1)	NULL,

	[PB_SSN]	nvarchar(11)	NULL,

	[PB_CREDIT_SCORE]	int	NULL,

	[PB_MONTHLY_INCOME]	decimal(16,6)	NULL,

	[PB_MONTHLY_DEBT]	decimal(16,6)	NULL,

	[CB_NAME_FIRST]	nvarchar(30)	NULL,

	[CB_NAME_LAST]	nvarchar(30)	NULL,

	[CB_USCITIZEN_YN]	nchar(1)	NULL,

	[CB_PERM_RES_ALIEN]	nchar(1)	NULL,

	[CB_NONPERM_RES_ALIEN]	nchar(1)	NULL,

	[CB_SSN]	nvarchar(11)	NULL,

	[CB_CREDIT_SCORE]	int	NULL,

	[CB_MONTHLY_INCOME]	decimal(16,6)	NULL,

	[CB_MONTHLY_DEBT]	decimal(16,6)	NULL,

	[PROP_ADDR1]	nvarchar(55)	NULL,

	[PROP_CITY]	nvarchar(25)	NULL,

	[PROP_STATE]	nchar(2)	NULL,

	[PROP_ZIP]	nvarchar(10)	NULL,

	[PROP_TYPE]	nvarchar(20)	NULL,

	[PROP_NBR_UNITS]	int	NULL,

	[PROP_OCCUPANCY]	nvarchar(128)	NULL,

	[PROP_SALES_PRICE]	decimal(16,6)	NULL,

	[PROP_CONCURR_FIN]	decimal(16,6)	NULL,

	[PROP_APPRAISED_VALUE]	decimal(16,6)	NULL,

	[LOAN_PURPOSE]	nvarchar(128)	NULL,

	[LOAN_PURP_OF_REFI]	nvarchar(128)	NULL,

	[LOAN_DOC_LEVEL]	nvarchar(128)	NULL,

	[LOAN_DELIVERY_TERMS]	nvarchar(128)	NULL,

	[LOAN_DELEGATED_ENDRSMNT]	nchar(1)	NULL,

	[LOAN_AMT]	decimal(16,6)	NULL,

	[INVESTOR_LOCK_PERIOD]	nvarchar(128)	NULL,

	[PRODUCT_INTRATE]	decimal(16,6)	NULL,

	[PRODUCT_IPG_NAME]	nvarchar(240)	NULL,

	[PRODUCT_IPG_INVESTOR]	nvarchar(4)	NULL,

	[PRODUCT_IPG_PRODUCT]	nvarchar(4)	NULL,

	[PRODUCT_IPG_PROGRAM]	nvarchar(4)	NULL,

	[PRODUCT_IPG_PRICE_GROUP]	nvarchar(4)	NULL,

	[PRODUCT_S_PROD]	nvarchar(8)	NULL,

	[INTEREST_RATE]	decimal(16,6)	NULL,

	[BASE_PRICE]	decimal(16,6)	NULL,

	[PRICE_ADJUSTMENT]	decimal(16,6)	NULL,

	[NET_PRICE]	decimal(16,6)	NULL,

	[CALC_SUBJLTV]	decimal(16,6)	NULL,

	[CALC_COMBLTV]	decimal(16,6)	NULL,

	[CALC_DRATIO]	decimal(16,6)	NULL,

	[APPLICATION_DATE]	datetime	NULL,

	[BUSINESS_CHANNEL]	nvarchar(8)	NULL,

	[CLOSING_DATE]	datetime	NULL,

	[PB_APPL_NBR]	int	NULL,

	[CB_APPL_NBR]	int	NULL,

	[ORIGINATING_LENDER]	int	NULL,

	[LOAN_STATUS]	nvarchar(8)	NULL,

	[LOAN_ACTIVITY]	nvarchar(8)	NULL,

	[BASEMGN]	decimal(16,6)	NULL,

	[CEILFCTR]	decimal(16,6)	NULL,

	[FLOORFCTR]	decimal(16,6)	NULL,

	[BASE_MARKET]	decimal(16,6)	NULL,

	[BASE_ORIGINATION]	decimal(16,6)	NULL,

	[BASEMKTDISC]	decimal(16,6)	NULL,

	[BASEQUAL]	decimal(16,6)	NULL,

	[BASERATE]	decimal(16,6)	NULL,

	[CLIENTRATEINFO]	nvarchar(10)	NULL,

	[SEL_ROW_INSTANCE]	smallint	NULL,

	[SEL_ROW_KEY]	nchar(10)	NULL,

	[SELECTEDINVESTOR]	nvarchar(30)	NULL,

	[SELECTEDPROGRAM]	nvarchar(20)	NULL,

	[SELRTCODE]	nvarchar(10)	NULL,

	[RMINCR]	decimal(16,6)	NULL,

	[RLMINC]	decimal(16,6)	NULL,

	[STCODE]	nchar(2)	NULL,

	[CYCODE]	nchar(3)	NULL,

	[LOAN_TERM]	int	NULL,

	[TPO]	nchar(1)	NULL,

	[IMPOUND_AUTH]	nchar(1)	NULL,

	[CASHOUT]	nchar(1)	NULL,

	[FSTPMTDT]	datetime	NULL,

	[LIEN_POSITION]	nvarchar(128)	NULL,

	[LOAN_TYPE]	nvarchar(128)	NULL,

	[PB_DOB]	datetime	NULL,

	[AUS_UW_TYPE]	nvarchar(128)	NULL,

	[PB_BORROWERTYPE]	nvarchar(128)	NULL,

	[PRICE_NAME]	nvarchar(480)	NULL,

	[TAX_ESCROW_IND]	nvarchar(10)	NULL,

	[INS_ESCROW_IND]	nvarchar(10)	NULL,

	[ORIGINAL_LA_INPUT]	decimal(25,0)	NULL,

	[LOCK_DATE_OVERRIDE]	datetime	NULL,

	[LOCK_EXP_DATE]	datetime	NULL,

	[TEMPLATE_ID]	int	NULL,

	[SELLER_LOAN_REG_CID]	nvarchar(10)	NULL,

	[PROP_COUNTY]	nvarchar(70)	NULL,

	[CATEGORY_TYPE]	nvarchar(8)	NULL,

	[GOVREFITYPE_NM]	nvarchar(8)	NULL,

	[PROJ_ATTACH_TYPE]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_BULK_IMPORT_DATA] PRIMARY KEY CLUSTERED (

	  [BULK_ID]

	, [RECORD_ID]

	)
);
CREATE TABLE [dbo].[WG_CNS_LOAN_APPLICATION]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[CID_BRANCH]	int	NULL,

	[S_BUSINESS_CHANNEL]	nvarchar(8)	NULL,

	[S_LOAN_TYPE]	nvarchar(8)	NULL,

	[S_LOAN_CATEGORY]	nvarchar(8)	NULL,

	[S_REFERRAL_SOURCE]	nvarchar(8)	NULL,

	[S_LOAN_PURPOSE]	nvarchar(8)	NULL,

	[EMP_LOAN_YN]	nchar(1)	NULL,

	[REG_O_LOAN_YN]	nchar(1)	NULL,

	[TSWE_EXPECTED_YN]	nchar(1)	NULL,

	[TSWE_EXISTS_YN]	nchar(1)	NULL,

	[TSWE_GUIDELINES_MET_YN]	nchar(1)	NULL,

	[PRE_APPR_REQ_YN]	nchar(1)	NULL,

	[PRE_APPR_DATE]	datetime	NULL,

	[MBA_YN]	nchar(1)	NULL,

	[IS_PERSONALUSE_YN]	char(1)	NULL,

	[S_PRIMARY_COLLATERAL_TYPE]	nvarchar(8)	NULL,

	[COLLATERAL_STATE]	nchar(2)	NULL,

	[VENDOR_VAL_METHOD]	nvarchar(10)	NULL,

	[VALUATION_SOURCE]	nvarchar(25)	NULL,

	[VEHICLE_FUEL_TYPE]	nvarchar(10)	NULL,

	[VEHICLE_MILEAGE]	int	NULL,

	[CURRENTMODELYR]	int	NULL,

	[COLLAGEYRS]	int	NULL,

	[S_TITLE_TRANSFER]	nvarchar(8)	NULL,

	[S_SECONDARY_COLLATERAL_TYPE]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_CNS_LOAN_APPLICATION] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_COLLATERAL_ADDRESS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ASSETID]	int	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[COLLATERALADD1]	nvarchar(100)	NULL,

	[COLLATERALADD2]	nvarchar(100)	NULL,

	[COLLATERALCITY]	nvarchar(25)	NULL,

	[COLLATERALSTATE]	nvarchar(2)	NULL,

	[COLLATERALCOUNTY]	nvarchar(35)	NULL,

	[COLLATERALZIP]	nvarchar(10)	NULL,

	[COLLATERALCOUNTRY]	nvarchar(35)	NULL,

	[LANDLORD_PARKNAME]	nvarchar(200)	NULL,

	[PARK_LORTENT]	numeric(16,6)	NULL,

CONSTRAINT [PK_WG_COLLATERAL_ADDRESS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ASSETID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[WG_COLLATERAL_PLEDGOR]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[CHILDROWSERIALNO]	int	NOT NULL,

	[PLEDGOR_TYPE]	nchar(1)	NULL,

	[PLEDGOR_MID_NAME]	nvarchar(30)	NULL,

	[PLEDGOR_LAST_NAME]	nvarchar(30)	NULL,

	[PLEDGOR_ENTITY_NAME]	nvarchar(128)	NULL,

	[PLEDGOR_SIGN_CAP]	nvarchar(60)	NULL,

	[PLEDGOR_ENTITY_TTL]	nvarchar(60)	NULL,

	[PLEDGOR_FIRST_NAME]	nvarchar(30)	NULL,

CONSTRAINT [PK_WG_COLLATERAL_PLEDGOR] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [ROWSERIALNO]

	, [CHILDROWSERIALNO]

	)
);
CREATE TABLE [dbo].[WG_COLLATERAL_TRADEIN]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[YEAR]	int	NULL,

	[MAKE]	nvarchar(30)	NULL,

	[VIN]	nvarchar(20)	NULL,

	[MODEL]	nvarchar(20)	NULL,

	[TRIM]	nvarchar(30)	NULL,

	[VALUE]	decimal(18,3)	NULL,

	[REG_NUM]	nvarchar(64)	NULL,

	[ASSETID]	int	NULL,

	[TRDIN_LOAN_VALUE]	numeric(16,6)	NULL,

	[NET_TRDIN_VALUE]	numeric(16,6)	NULL,

	[ISFINANCED]	nchar(1)	NULL,

	[FININSTITUTE]	nvarchar(40)	NULL,

	[MNTHPAYMENT]	numeric(8,2)	NULL,

	[TRDINCNTR]	int	NOT NULL,

CONSTRAINT [PK_WG_COLLATERAL_TRADEIN] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [TRDINCNTR]

	)
);
CREATE TABLE [dbo].[WG_COLLATERAL_TYPES]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[COLLATERAL_TYPE]	nvarchar(8)	NULL,

	[PLEDGED_ACC]	nvarchar(35)	NULL,

	[COLLATERAL_CODE]	nchar(10)	NULL,

	[COLLATERAL_RECEIVED]	nchar(1)	NULL,

CONSTRAINT [PK_WG_COLLATERAL_TYPES] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[WG_CORR_FUNDING]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[RESPA_CUTOFF_DAY]	int	NULL,

	[RESPA_CUTOFF_DAY_OVRD]	int	NULL,

	[PURCHASE_TYPE]	nvarchar(35)	NULL,

	[FED_REF_NBR]	nvarchar(35)	NULL,

	[FED_REF_NBR_OVRD]	nvarchar(35)	NULL,

	[WIRE_SCHED_DATE]	datetime	NULL,

	[WIRE_SCHED_DATE_OVRD]	datetime	NULL,

	[WIRE_SENT_DATE_OVRD]	datetime	NULL,

	[WIRE_SENT_DATE]	datetime	NULL,

	[ESCROW_BAL_OVRD]	numeric(16,6)	NULL,

	[LENDER_PD_DISB_OVR]	numeric(16,6)	NULL,

	[MIP_OVRD]	numeric(16,6)	NULL,

	[INT_PD_DUE_OVRD]	numeric(16,6)	NULL,

	[AM_CURTAILMENT]	numeric(16,6)	NULL,

	[AM_CURT_OVRD]	numeric(16,6)	NULL,

	[TOTAL_PRICE_AMOUNT]	decimal(18,3)	NULL,

	[TOTAL_FEES_ADJS]	decimal(18,3)	NULL,

	[NET_ESCROW_AMT]	decimal(18,3)	NULL,

	[CORS_INTEREST_PAID]	decimal(18,3)	NULL,

	[TOTAL_WIRE_AMOUNT]	decimal(18,3)	NULL,

	[SELWIRE_ACCOUNT]	int	NULL,

CONSTRAINT [PK_WG_CORR_FUNDING] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_CRM_CUSTOMER]	( 

	[CUSTOMER_ID]	nvarchar(50)	NOT NULL,

	[CUSTOMER_TYPE]	nvarchar(8)	NOT NULL,

	[CUSTOMER_NAME]	nvarchar(250)	NULL,

	[FNAME]	nvarchar(30)	NULL,

	[MNAME]	nvarchar(30)	NULL,

	[LNAME]	nvarchar(30)	NULL,

	[NAME_SUFFIX]	nvarchar(5)	NULL,

	[SSNTIN]	nvarchar(9)	NULL,

	[DOB]	datetime	NULL,

	[MOTHER_MAIDENNAME]	nvarchar(50)	NULL,

	[IS_CURRENT]	nchar(1)	NULL,

	[IS_EMPLOYEE]	nchar(1)	NULL,

	[CUSTOMER_AS_YEARS]	int	NULL,

	[CUSTOMER_AS_MONTHS]	int	NULL,

	[EMAIL_ADDR]	nvarchar(256)	NULL,

	[HASCHECKINGACCT]	nchar(1)	NULL,

	[CHECKING_ACT_BAL]	decimal(18,3)	NULL,

	[BU_ACT_BAL]	decimal(18,3)	NULL,

	[SHARE_ACCT_BAL]	decimal(18,3)	NULL,

	[QUALIFILESCORE]	decimal(18,3)	NULL,

	[QUALIFILESCORE_DATE]	datetime	NULL,

	[NO_FUN_AUTO_30DAYS]	int	NULL,

	[NO_ASLQACCT]	int	NULL,

	[NO_NSFS_LAST6MONTHS]	int	NULL,

	[TOT_NO_NSFS_LAST6MONTHS]	int	NULL,

	[NO_NSFS_LAST24MONTHS]	int	NULL,

	[ALLLOAN_CHOFFPAID]	decimal(18,3)	NULL,

	[AGG_BUS_LOANS]	int	NULL,

	[AGG_SEC_LOANS]	int	NULL,

	[AGG_PER_LOANS]	int	NULL,

	[HAS_CHKNG_ACCT]	nchar(1)	NULL,

	[NON_MORT_CREDITCHOFF]	nchar(1)	NULL,

	[DEPOSITACCT_CHOFF]	nchar(1)	NULL,

	[ALLDEPOSIT_ACCT_CHOFFPAID]	nchar(1)	NULL,

	[LOAN_CHOFF]	nchar(1)	NULL,

	[BANKRUPTCY_FLAG]	nchar(1)	NULL,

	[CREDITCARD_CHOFF]	nchar(1)	NULL,

	[CREDITCARD_CHOFFPAID]	nchar(1)	NULL,

	[PERSON_REC_FOUND]	nchar(1)	NULL,

	[LDFM_FLAG]	nchar(1)	NULL,

	[LDFM_INACT_DATE]	datetime	NULL,

	[PLATFORM_SOURCE]	nvarchar(100)	NULL,

CONSTRAINT [PK_WG_CRM_CUSTOMER] PRIMARY KEY CLUSTERED (

	  [CUSTOMER_ID]

	, [CUSTOMER_TYPE]

	)
);
CREATE TABLE [dbo].[WG_CRM_CUSTOMER_ACCT_DETAIL]	( 

	[CURRENT_CUSTOMERID]	nvarchar(50)	NOT NULL,

	[ACC_TYPE]	nvarchar(50)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[ACCTNUM]	nvarchar(35)	NULL,

	[MINORCODE]	nvarchar(50)	NULL,

	[ACCTBAL]	decimal(18,3)	NULL,

	[BANKRUPTCY]	nchar(1)	NULL,

	[ACCT_CHOFF]	nchar(1)	NULL,

	[ACCT_CHOFFPAID]	nchar(1)	NULL,

	[LIMITREMOVED]	nchar(1)	NULL,

	[LOANACCT_BUCODE]	nvarchar(25)	NULL,

	[LOANACCT_LIMIT]	decimal(18,3)	NULL,

	[HIGH_CREDIT]	decimal(16,6)	NULL,

	[INTEREST_RATE]	decimal(16,6)	NULL,

	[DEBTPAYOFFTHRUDT]	datetime	NULL,

	[ORIGDBTDT]	datetime	NULL,

	[LOANACCT_LIMIT_SUSP]	nchar(1)	NULL,

	[LOANACCT_DELINQUENCY]	nchar(1)	NULL,

	[LOANACCT_DAYSDELINQUENT]	decimal(18,3)	NULL,

	[LOANACCT_LOC]	nchar(1)	NULL,

	[SECURED]	nchar(1)	NULL,

	[MTHPYMT]	decimal(18,3)	NULL,

	[LOANACCT_LIMIT_MAINTENANCEDT]	datetime	NULL,

	[LOANACCT_PREV_BAL]	decimal(18,3)	NULL,

	[LOANACCT_PREV_BAL_6MNTHS]	decimal(18,3)	NULL,

	[LINEOF_CREDITEXISTS]	nchar(1)	NULL,

	[LOANACCT_PRIMARY_HOLDER]	nchar(1)	NULL,

	[LOANACCT_TYPE]	nvarchar(50)	NULL,

	[LOANACCT_OBLIGATION]	nvarchar(50)	NULL,

	[DEPACCT_PRIMARY_HOLDER]	nchar(1)	NULL,

	[ACCOUNT_QUALIFICATIONS]	nvarchar(50)	NULL,

	[ISONLINE_BANKINGUSER]	nchar(1)	NULL,

CONSTRAINT [PK_WG_CRM_CUSTOMER_ACCT_DETAIL] PRIMARY KEY CLUSTERED (

	  [CURRENT_CUSTOMERID]

	, [ACC_TYPE]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY]	( 

	[CURRENT_CUSTOMERID]	nvarchar(50)	NOT NULL,

	[AG_DA_ACCT_TYPE]	nvarchar(8)	NOT NULL,

	[AG_DA_ACCT_TOTALASSETS]	decimal(18,3)	NULL,

	[TOTALASSETSDAVGLAST60DAYS]	decimal(18,3)	NULL,

	[TOTALASSETSDAVGLAST180DAYS]	decimal(18,3)	NULL,

	[SAVINGACCBALDAVGLAST60DAYS]	decimal(18,3)	NULL,

	[SAVINGACCBALDAVGLAST180DAYS]	decimal(18,3)	NULL,

	[AGDIRECRDEPOSITVLAST30DAYS]	decimal(18,3)	NULL,

	[AGGREGATEDIREALUELAST60DAYS]	decimal(18,3)	NULL,

	[AGDEPOSITVALUELAST30DAYS]	decimal(18,3)	NULL,

	[AGDEPOSITVALUELAST60DAYS]	decimal(18,3)	NULL,

	[AGDEPOSITVALUELAST180DAYS]	decimal(18,3)	NULL,

CONSTRAINT [PK_WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY] PRIMARY KEY CLUSTERED (

	  [CURRENT_CUSTOMERID]

	, [AG_DA_ACCT_TYPE]

	)
);
CREATE TABLE [dbo].[WG_CRM_CUSTOMER_ADDRESS]	( 

	[CUSTOMER_ID]	nvarchar(50)	NOT NULL,

	[ADDRESS_TYPE]	nvarchar(8)	NOT NULL,

	[ADDR_LINE1]	nvarchar(100)	NULL,

	[ADDR_LINE2]	nvarchar(100)	NULL,

	[ADDR_LINE3]	nvarchar(100)	NULL,

	[ADDR_CITY]	nvarchar(25)	NULL,

	[ADDR_STATE]	nchar(2)	NULL,

	[ADDR_ZIP]	nvarchar(10)	NULL,

	[ADDR_COUNTY]	nvarchar(35)	NULL,

	[ADDR_COUNTRY]	nvarchar(35)	NULL,

	[ADDR_COUNTYCODE]	nchar(2)	NULL,

	[ADDR_UNIT]	nvarchar(25)	NULL,

	[ADDR_PFX]	nvarchar(25)	NULL,

	[ADDR_SUFFIX]	nvarchar(25)	NULL,

CONSTRAINT [PK_WG_CRM_CUSTOMER_ADDRESS] PRIMARY KEY CLUSTERED (

	  [CUSTOMER_ID]

	, [ADDRESS_TYPE]

	)
);
CREATE TABLE [dbo].[WG_CRM_CUSTOMER_PHONE]	( 

	[CUSTOMER_ID]	nvarchar(50)	NOT NULL,

	[PHONE_TYPE]	nvarchar(8)	NOT NULL,

	[PHONE_NBR]	nvarchar(10)	NULL,

	[PHONE_EXT]	nvarchar(4)	NULL,

CONSTRAINT [PK_WG_CRM_CUSTOMER_PHONE] PRIMARY KEY CLUSTERED (

	  [CUSTOMER_ID]

	, [PHONE_TYPE]

	)
);
CREATE TABLE [dbo].[WG_HMDAINFO_EXT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[TOTAL_LOAN_COSTS]	nvarchar(25)	NULL,

	[TOTAL_POINTS_AND_FEES]	nvarchar(25)	NULL,

	[ORIGINATION_CHARGES]	nvarchar(25)	NULL,

	[DISCOUNT_POINTS]	nvarchar(25)	NULL,

	[LENDER_CREDITS]	nvarchar(25)	NULL,

	[INTEREST_RATE]	nvarchar(25)	NULL,

	[HMDARATESPREAD]	nvarchar(25)	NULL,

	[PURCHCD]	int	NULL,

	[HMDAHOEPASTATUS]	smallint	NULL,

	[REPORTABLEYR]	nvarchar(4)	NULL,

	[HMDAREPORTABLEDESC]	nvarchar(50)	NULL,

	[REPORTABLEYROVR]	nvarchar(8)	NULL,

	[HMDA_LEI]	nvarchar(20)	NULL,

	[HMDA_ULI]	nvarchar(45)	NULL,

	[HMDA_MLONMLS]	nvarchar(21)	NULL,

	[APPDATE]	nvarchar(12)	NULL,

	[HMDALOANTYPECODE]	int	NULL,

	[HMDALOANPURPCODE]	int	NULL,

	[HMDAPREAPPREQUESTED]	int	NULL,

	[HMDAREPORTABLELA]	decimal(18,3)	NULL,

	[HMDAREPORTABLELNAOVR]	decimal(18,3)	NULL,

	[HMDAACTIONTAKENCODE]	int	NULL,

	[HMDAACTIONDATE]	datetime	NULL,

	[DENIALCODE1]	int	NULL,

	[DENIALCODE2]	int	NULL,

	[DENIALCODE3]	int	NULL,

	[DENIALCODE4]	int	NULL,

	[SUBMISSION_OF_APPL_CODE]	int	NULL,

	[INITIAL_PAYABLE]	int	NULL,

	[REVERSE_MORTGAGE_CODE]	int	NULL,

	[OPENEND_LOC_CODE]	int	NULL,

	[PURP_BUSINSCOMERCL_CODE]	int	NULL,

	[STADDLINE1]	nvarchar(80)	NULL,

	[STADDLINE2]	nvarchar(80)	NULL,

	[CYCODE]	nvarchar(25)	NULL,

	[ZIPCODE]	nvarchar(10)	NULL,

	[STCODE]	nvarchar(2)	NULL,

	[COUNTY]	nvarchar(5)	NULL,

	[CENTRACT]	nvarchar(12)	NULL,

	[PROPERTYVALUE]	nvarchar(50)	NULL,

	[CONS_METHOD_CODE]	int	NULL,

	[OCCU_TYPE_CODE]	int	NULL,

	[LIEN_STATUS_CODE]	int	NULL,

	[TOTAL_UNITS]	int	NULL,

	[AFFORTABLE_UNITS]	nvarchar(6)	NULL,

	[LAND_PROPINS_CODE]	int	NULL,

	[SEC_PROPTYPE_CODE]	int	NULL,

	[OTHERDENIALDESC]	nvarchar(255)	NULL,

	[HMDACOMBINEDLTV]	nvarchar(25)	NULL,

	[HMDAINCOME]	nvarchar(25)	NULL,

	[HMDADTIRATIO]	nvarchar(25)	NULL,

	[HMDA_APPCRDTSCORE]	int	NULL,

	[HMDA_COAPPCRDTSCORE]	int	NULL,

	[APPCREDIT_MODEL_CODE]	int	NULL,

	[COAPPCREDIT_MODEL_CODE]	int	NULL,

	[APPCREDIT_MODEL_OTHERDESC]	nvarchar(100)	NULL,

	[COAPPCREDIT_MODEL_OTHERDESC]	nvarchar(100)	NULL,

	[INTRODUCTORY_RATEPERIOD]	nvarchar(10)	NULL,

	[PREPAYMENT_PENALTYTERM]	nvarchar(10)	NULL,

	[HMDA_BALLOONCODE]	int	NULL,

	[INTEREST_ONLY_PAYMENTSCODE]	int	NULL,

	[NEGATIVE_AMORTIZATIONCODE]	int	NULL,

	[OTH_NONFULLAMORT_CODE]	int	NULL,

	[AUS_CODE]	int	NULL,

	[HMDA_AUS_OTHERDESC]	nvarchar(255)	NULL,

	[AUS_DECISION_CODE]	int	NULL,

	[HMDA_OTHAUS_DECISION_DESC]	nvarchar(255)	NULL,

	[HMDA_ULI_OVD]	nvarchar(45)	NULL,

	[APPBORRRACE1]	int	NULL,

	[APPBORRRACE2]	int	NULL,

	[APPBORRRACE3]	int	NULL,

	[APPBORRRACE4]	int	NULL,

	[APPBORRRACE5]	int	NULL,

	[COAPPBORRRACE1]	int	NULL,

	[COAPPBORRRACE2]	int	NULL,

	[COAPPBORRRACE3]	int	NULL,

	[COAPPBORRRACE4]	int	NULL,

	[COAPPBORRRACE5]	int	NULL,

	[BORRETHNICITY1]	int	NULL,

	[BORRETHNICITY2]	int	NULL,

	[BORRETHNICITY3]	int	NULL,

	[BORRETHNICITY4]	int	NULL,

	[BORRETHNICITY5]	int	NULL,

	[COBORRETHNICITY1]	int	NULL,

	[COBORRETHNICITY2]	int	NULL,

	[COBORRETHNICITY3]	int	NULL,

	[COBORRETHNICITY4]	int	NULL,

	[COBORRETHNICITY5]	int	NULL,

	[BOAGE]	int	NULL,

	[COBOAGE]	int	NULL,

	[BOETHNICITYVIOB]	int	NULL,

	[BORACEVIOB]	int	NULL,

	[BOSEXVIOB]	int	NULL,

	[COBOETHNICITYVIOB]	int	NULL,

	[COBORACEVIOB]	int	NULL,

	[COBOSEXVIOB]	int	NULL,

	[BOGENDER]	int	NULL,

	[COBOGENDER]	int	NULL,

	[HMDALOANTERM]	nvarchar(6)	NULL,

	[RATE_SET_DATE]	datetime	NULL,

	[RATE_SET_DATE_OVR]	datetime	NULL,

	[NETLACHANGE]	numeric(16,2)	NULL,

	[HMDA_LEI_OVD]	nvarchar(20)	NULL,

	[HMDA_APVDAPPCRDSCORE]	int	NULL,

	[HMDA_APVDALTCRSCORE]	int	NULL,

	[HMDA_APVDCOBOCRDSCR]	int	NULL,

	[HMDA_APVDHLTV]	decimal(16,6)	NULL,

	[HMDA_APVDNOOFUNITS]	smallint	NULL,

	[HMDA_APVDTOTRATIO]	decimal(16,6)	NULL,

	[HMDA_APVDCRDTMODCODE]	nvarchar(128)	NULL,

	[HMDA_APVDCRDMODOTH]	nvarchar(100)	NULL,

	[HMDA_ADCOCRDTMODCODE]	nvarchar(128)	NULL,

	[HMDA_ADCOCRDMODOTH]	nvarchar(100)	NULL,

	[AUS_CODE_OVRD]	int	NULL,

	[AUS_DECISION_CODE_OVRD]	int	NULL,

CONSTRAINT [PK_WG_HMDAINFO_EXT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_HOEPA_DATA]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[VERIFIED_INCOME]	numeric(16,6)	NULL,

	[VERIFIED_DEBTS]	numeric(16,6)	NULL,

	[DISCOUNT_AMT]	numeric(16,6)	NULL,

	[PROD_HAS_NEGAM]	nchar(1)	NULL,

	[TOTAL_LOAN_COSTS]	numeric(16,6)	NULL,

	[MAX_BONAFIDE_AMT]	numeric(16,6)	NULL,

	[QM_QUALIFY_DTI]	numeric(16,6)	NULL,

	[QM_QUALIFY_RATE]	numeric(16,6)	NULL,

	[QM_QUALIFY_PIPMT]	numeric(16,6)	NULL,

	[QM_QUALIFY_PITI]	numeric(16,6)	NULL,

	[QM_RESIDUAL_INC]	numeric(16,6)	NULL,

	[HOEPA_APR]	numeric(16,6)	NULL,

	[PREPAY_PEN_PASSES_QMS]	nchar(1)	NULL,

	[PREPAY_PEN_PASSES_QMR]	nchar(1)	NULL,

CONSTRAINT [PK_WG_HOEPA_DATA] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_INCOME_SOURCE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[INC_SRC_CTR]	int	NOT NULL,

	[RECORD_CREATED]	nvarchar(35)	NULL,

	[S_INCOME_SOURCE_TYPE]	nchar(1)	NULL,

	[OTHER_INCOME_SRC_DESC]	nvarchar(40)	NULL,

	[S_BUSINESS_TYPE]	nvarchar(30)	NULL,

	[SOURCE_NAME]	nvarchar(50)	NULL,

	[SOURCE_CONTACT]	nvarchar(35)	NULL,

	[ADDRESS_LN_1]	nvarchar(35)	NULL,

	[ADDRESS_LN_2]	nvarchar(35)	NULL,

	[CITY]	nvarchar(35)	NULL,

	[INC_STATE]	nchar(2)	NULL,

	[ZIPCODE]	nvarchar(10)	NULL,

	[COUNTRY]	nvarchar(35)	NULL,

	[PHONE]	nvarchar(11)	NULL,

	[PHONE_EXT]	nvarchar(6)	NULL,

	[FAX_NBR]	nvarchar(11)	NULL,

	[TITLE]	nvarchar(30)	NULL,

	[S_SPECIAL_BOR_EMP_REL_TYPE]	nvarchar(8)	NULL,

	[SPEC_BOR_EMP_REL_TYPE_DESC]	nvarchar(80)	NULL,

	[OCCUPATION]	nvarchar(8)	NULL,

	[EMPLOYED_FROM]	datetime	NULL,

	[EMPLOYED_TO]	datetime	NULL,

	[YEARS_AT_JOB]	decimal(18,3)	NULL,

	[SUPERVISOR_NAME]	nvarchar(35)	NULL,

	[INC_SRC_EMP_ID]	nvarchar(12)	NULL,

	[SELF_EMPLOYED_FLAG]	nchar(1)	NULL,

	[PCT_BUSINESS_OWNED]	decimal(16,6)	NULL,

	[S_SELF_EMPL_TYPE]	nvarchar(8)	NULL,

	[PROF_MONTHS]	int	NULL,

	[PROF_YEARS]	int	NULL,

	[BASE_INCOME]	decimal(18,3)	NULL,

	[BONUS_INCOME]	decimal(18,3)	NULL,

	[COMMISSION_INCOME]	decimal(18,3)	NULL,

	[OVERTIME_INCOME]	decimal(18,3)	NULL,

	[MILITARY_INCOME]	decimal(18,3)	NULL,

	[OTHER_INCOME]	decimal(18,3)	NULL,

	[TOTAL_INCOME]	decimal(18,3)	NULL,

	[LIABCTR]	int	NULL,

	[S_EMP_UNIT_TYPE]	nvarchar(8)	NULL,

	[EMP_UNIT_NUMBER]	nvarchar(12)	NULL,

	[INCOME_STATE_FOREIN]	nvarchar(35)	NULL,

	[INCOME_POSTCODE]	nvarchar(12)	NULL,

	[EMP_CNTRY_COD]	nvarchar(12)	NULL,

	[EMP_COUNTRY]	nvarchar(200)	NULL,

	[INC_STMT_IND]	nchar(1)	NULL,

	[BUSINESS_INCOME]	decimal(18,3)	NULL,

	[VOE_DT]	datetime	NULL,

	[INC_STMT_EMP_ID]	nvarchar(35)	NULL,

	[INC_DBA_NAME]	nvarchar(45)	NULL,

	[INC_EIN]	nvarchar(9)	NULL,

CONSTRAINT [PK_WG_INCOME_SOURCE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [BNUM]

	, [INC_SRC_CTR]

	)
);
CREATE TABLE [dbo].[WG_KELLEYBLUEBOOK_RESPONSE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[RESPONSE_ID]	int	NOT NULL,

	[VALUATION_DATE]	datetime	NULL,

	[TYPICALPRICE_VAL]	decimal(18,3)	NULL,

	[TRADEFAIR_VAL]	decimal(18,3)	NULL,

	[TRADEGOOD_VAL]	decimal(18,3)	NULL,

	[TRADEVERYGOOD_VAL]	decimal(18,3)	NULL,

	[TRADEEXCELLENT_VAL]	decimal(18,3)	NULL,

	[AUCTIONFAIR_VAL]	decimal(18,3)	NULL,

	[AUCTIONGOOD_VAL]	decimal(18,3)	NULL,

	[AUCTIONVERYGOOD_VAL]	decimal(18,3)	NULL,

	[AUCTIONEXCELLENT_VAL]	decimal(18,3)	NULL,

	[MSRP]	decimal(16,2)	NULL,

	[VEHICLEMILEAGE]	int	NULL,

	[STATUS_CODE]	nvarchar(50)	NULL,

	[STATUS_MESSAGE]	nvarchar(50)	NULL,

	[VEHICLE_ID]	nvarchar(20)	NULL,

	[TRADE_IN_VAL]	decimal(18,3)	NULL,

	[RETAIL_VAL]	decimal(18,3)	NULL,

	[WHOLESALE_VAL]	decimal(18,3)	NULL,

	[INVOICE_VAL]	decimal(18,3)	NULL,

	[CYLINDERS]	int	NULL,

	[CC]	int	NULL,

	[STROKE]	int	NULL,

	[CATEGORY]	nvarchar(30)	NULL,

	[S_GENERIC_BODY_STYLE]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_KELLEYBLUEBOOK_RESPONSE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [RESPONSE_ID]

	)
);
CREATE TABLE [dbo].[WG_PROMOTION]	( 

	[PROMO_ID]	int	NOT NULL,

	[PROMO_CODE]	nvarchar(20)	NULL,

	[PROMO_DESCRIPTION]	nvarchar(50)	NULL,

	[START_DATE]	datetime	NULL,

	[END_DATE]	datetime	NULL,

CONSTRAINT [PK_WG_PROMOTION] PRIMARY KEY CLUSTERED (

	  [PROMO_ID]

	)
);
CREATE TABLE [dbo].[WG_RPT_AMOUNTS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[AMORT_TERM]	smallint	NULL,

	[APPRAISAL_VALUE]	decimal(18,3)	NULL,

	[CLTV]	numeric(16,6)	NULL,

	[DISCOUNT_AMT]	numeric(16,6)	NULL,

	[HLTV]	numeric(16,6)	NULL,

	[INTEREST_RATE]	numeric(16,6)	NULL,

	[LOCK_DAYS]	smallint	NULL,

	[LTV]	numeric(16,6)	NULL,

	[MARGIN_PCT]	numeric(16,6)	NULL,

	[ORIG_LOAN_AMOUNT]	decimal(18,3)	NULL,

	[ORIGINATION_AMT]	numeric(16,6)	NULL,

	[PROP_MKT_VALUE]	decimal(18,3)	NULL,

	[INVLK_MARKET_PRICE]	numeric(16,6)	NULL,

	[INVLK_SRP_FACTOR]	numeric(16,6)	NULL,

	[YSP]	numeric(16,6)	NULL,

	[OVERAGE]	numeric(16,6)	NULL,

	[APR]	numeric(16,6)	NULL,

	[UNPAID_PRIN_BAL]	decimal(18,3)	NULL,

	[ARM_INDEX]	numeric(16,6)	NULL,

	[BASE_MARKET_PRICE]	numeric(16,6)	NULL,

	[BASE_MARKET_PRICE_OVR]	numeric(16,6)	NULL,

	[INVLK_MARKET_PRICE_OVR]	numeric(16,6)	NULL,

	[SERVICING_FEE]	numeric(16,6)	NULL,

	[TTL_MKT_PRICE_ADJUSTMENTS]	numeric(16,6)	NULL,

	[DEBT_RATIO]	numeric(16,6)	NULL,

	[HOUSING_RATIO]	numeric(16,6)	NULL,

	[BASE_LOAN_AMOUNT]	decimal(18,3)	NULL,

	[CONCURRENT_FINANCE_AMT]	decimal(16,6)	NULL,

	[DISCOUNT_POINTS]	decimal(16,6)	NULL,

	[HELOC_INITIAL_ADVANCE]	decimal(18,3)	NULL,

	[QUALIFYING_RATE]	decimal(16,6)	NULL,

CONSTRAINT [PK_WG_RPT_AMOUNTS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_BORROWER]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[B_ORDER]	smallint	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[B_AGE]	smallint	NULL,

	[B_BORTYPE]	nvarchar(128)	NULL,

	[B_BORTYPE_DESC]	nvarchar(256)	NULL,

	[B_DOB]	datetime	NULL,

	[B_EMAIL]	nvarchar(128)	NULL,

	[B_FIRST_TIME_YN]	nchar(1)	NULL,

	[B_FOREIGN_NATL_YN]	nchar(1)	NULL,

	[B_GENDER]	nvarchar(128)	NULL,

	[B_HOME_PHONE]	nvarchar(11)	NULL,

	[B_MAIL_ADDR1]	nvarchar(100)	NULL,

	[B_MAIL_ADDR2]	nvarchar(100)	NULL,

	[B_MAIL_CITY]	nvarchar(25)	NULL,

	[B_MAIL_COUNTY]	nvarchar(35)	NULL,

	[B_MAIL_STATE]	nchar(2)	NULL,

	[B_MAIL_ZIP]	nvarchar(10)	NULL,

	[B_MARITAL_STATUS]	nvarchar(128)	NULL,

	[B_MARITAL_STATUS_DESC]	nvarchar(256)	NULL,

	[B_NAME_FIRST]	nvarchar(250)	NULL,

	[B_NAME_LAST]	nvarchar(30)	NULL,

	[B_NAME_MID]	nvarchar(30)	NULL,

	[B_PRIMARY_YN]	nchar(1)	NULL,

	[B_RACE]	nvarchar(128)	NULL,

	[B_RACE_DESC]	nvarchar(256)	NULL,

	[B_SCORE]	int	NULL,

	[B_SSN]	nvarchar(11)	NULL,

	[B_VETERAN_YN]	nchar(1)	NULL,

	[B_WORK_PHONE]	nvarchar(11)	NULL,

	[PROSPECT_CONTACT_METHOD]	nvarchar(128)	NULL,

	[PROSPECT_OPTOUT]	nchar(1)	NULL,

	[PROSPECT_STATUS]	nvarchar(128)	NULL,

	[PROSPECT_STATUS_EXP]	nvarchar(255)	NULL,

	[PROSPECT_TIME_TO_CALL]	nvarchar(24)	NULL,

	[PROSPECT_YN]	nchar(1)	NULL,

	[ETHNICITY]	nvarchar(128)	NULL,

	[B_INTERVIEW_METHOD]	nvarchar(128)	NULL,

	[B_INTERVIEW_METHOD_DESC]	nvarchar(256)	NULL,

	[USA_CITIZEN_YN]	nchar(1)	NULL,

	[B_SCORE_OVR]	int	NULL,

	[B_CELL_PHONE]	nvarchar(11)	NULL,

	[EMAIL_CONSENT]	nchar(1)	NULL,

	[SMS_CONSENT]	nchar(1)	NULL,

CONSTRAINT [PK_WG_RPT_BORROWER] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [B_ORDER]

	, [BNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_CMS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ACCT_EXEC]	nvarchar(90)	NULL,

	[ACCT_EXEC_CID]	int	NULL,

	[ACCT_EXEC_SNM]	nvarchar(20)	NULL,

	[APPRAISAL_CO]	nvarchar(90)	NULL,

	[APPRAISAL_CO_CID]	int	NULL,

	[APPRAISAL_CO_SNM]	nvarchar(20)	NULL,

	[AUDITOR]	nvarchar(90)	NULL,

	[AUDITOR_CID]	int	NULL,

	[AUDITOR_SNM]	nvarchar(20)	NULL,

	[AUS_CO]	nvarchar(90)	NULL,

	[AUS_CO_CID]	int	NULL,

	[AUS_CO_SNM]	nvarchar(20)	NULL,

	[BRANCH]	nvarchar(90)	NULL,

	[BRANCH_CID]	int	NULL,

	[BRANCH_MGR]	nvarchar(90)	NULL,

	[BRANCH_MGR_CID]	int	NULL,

	[BRANCH_MGR_SNM]	nvarchar(20)	NULL,

	[BRANCH_SNM]	nvarchar(20)	NULL,

	[CLOSER]	nvarchar(90)	NULL,

	[CLOSER_CID]	int	NULL,

	[CLOSER_SNM]	nvarchar(20)	NULL,

	[DOC_PREPARER]	nvarchar(90)	NULL,

	[DOC_PREPARER_CID]	int	NULL,

	[DOC_PREPARER_SNM]	nvarchar(20)	NULL,

	[ESCROW]	nvarchar(90)	NULL,

	[ESCROW_CID]	int	NULL,

	[ESCROW_SNM]	nvarchar(20)	NULL,

	[FUNDER]	nvarchar(90)	NULL,

	[FUNDER_CID]	int	NULL,

	[FUNDER_SNM]	nvarchar(20)	NULL,

	[INS_CERT_PRVDR]	nvarchar(90)	NULL,

	[INS_CERT_PRVDR_CID]	int	NULL,

	[INS_CERT_PRVDR_SNM]	nvarchar(20)	NULL,

	[INVESTOR]	nvarchar(90)	NULL,

	[INVESTOR_CID]	int	NULL,

	[INVESTOR_SNM]	nvarchar(20)	NULL,

	[MI_COMPANY]	nvarchar(90)	NULL,

	[MI_COMPANY_CID]	int	NULL,

	[MI_COMPANY_SNM]	nvarchar(20)	NULL,

	[MTG_BROKER]	nvarchar(90)	NULL,

	[MTG_BROKER_CID]	int	NULL,

	[MTG_BROKER_SNM]	nvarchar(20)	NULL,

	[ORIGINATOR]	nvarchar(90)	NULL,

	[ORIGINATOR_CID]	int	NULL,

	[ORIGINATOR_SNM]	nvarchar(20)	NULL,

	[PROCESSOR]	nvarchar(90)	NULL,

	[PROCESSOR_CID]	int	NULL,

	[PROCESSOR_SNM]	nvarchar(20)	NULL,

	[REGION]	nvarchar(90)	NULL,

	[REGION_CID]	int	NULL,

	[REGION_MGR]	nvarchar(90)	NULL,

	[REGION_MGR_CID]	int	NULL,

	[REGION_MGR_SNM]	nvarchar(20)	NULL,

	[REGION_SNM]	nvarchar(20)	NULL,

	[SHIPPER]	nvarchar(90)	NULL,

	[SHIPPER_CID]	int	NULL,

	[SHIPPER_SNM]	nvarchar(20)	NULL,

	[TITLE]	nvarchar(90)	NULL,

	[TITLE_CID]	int	NULL,

	[TITLE_INSURER]	nvarchar(90)	NULL,

	[TITLE_INSURER_CID]	int	NULL,

	[TITLE_INSURER_SNM]	nvarchar(20)	NULL,

	[TITLE_SNM]	nvarchar(20)	NULL,

	[UNDERWRITER]	nvarchar(90)	NULL,

	[UNDERWRITER_CID]	int	NULL,

	[UNDERWRITER_SNM]	nvarchar(20)	NULL,

	[UNDERWRITER2]	nvarchar(90)	NULL,

	[UNDERWRITER2_CID]	int	NULL,

	[UNDERWRITER2_SNM]	nvarchar(20)	NULL,

	[WAREHOUSE_LNDR]	nvarchar(90)	NULL,

	[WAREHOUSE_LNDR_CID]	int	NULL,

	[WAREHOUSE_LNDR_SNM]	nvarchar(20)	NULL,

	[SELLING_REALTOR]	nvarchar(90)	NULL,

	[SELLING_REALTOR_SNM]	nvarchar(20)	NULL,

	[SELLING_REALTOR_CID]	int	NULL,

	[LISTING_REALTOR]	nvarchar(90)	NULL,

	[LISTING_REALTOR_SNM]	nvarchar(20)	NULL,

	[LISTING_REALTOR_CID]	int	NULL,

	[LOAN_CONSULTANT]	nvarchar(90)	NULL,

	[LOAN_CONSULTANT_SNM]	nvarchar(20)	NULL,

	[LOAN_CONSULTANT_CID]	int	NULL,

	[BRKR_ACNT_EXEC]	nvarchar(90)	NULL,

	[BRKR_ACNT_EXEC_SNM]	nvarchar(20)	NULL,

	[BRKR_ACNT_EXEC_CID]	int	NULL,

	[BRKR_REL_MGR]	nvarchar(90)	NULL,

	[BRKR_REL_MGR_SNM]	nvarchar(20)	NULL,

	[BRKR_REL_MGR_CID]	int	NULL,

	[LOAN_OFFICER]	nvarchar(90)	NULL,

	[LOAN_OFFICER_CID]	int	NULL,

	[LOAN_OFFICER_SNM]	nvarchar(20)	NULL,

	[POST_CLOSER]	nvarchar(90)	NULL,

	[POST_CLOSER_CID]	int	NULL,

	[POST_CLOSER_SNM]	nvarchar(20)	NULL,

	[ORIGINATING_LENDER]	nvarchar(90)	NULL,

	[ORIGINATING_LENDER_CID]	int	NULL,

	[ORIGINATING_LENDER_SNM]	nvarchar(20)	NULL,

	[UNDERWRITER3]	nvarchar(90)	NULL,

	[UNDERWRITER3_CID]	int	NULL,

	[UNDERWRITER3_SNM]	nvarchar(20)	NULL,

	[REFERRAL_CHANNEL]	nvarchar(90)	NULL,

	[REFERRAL_CHANNEL_CID]	int	NULL,

	[REFERRAL_CHANNEL_SNM]	nvarchar(20)	NULL,

	[REFERRAL_TYPE]	nvarchar(90)	NULL,

	[REFERRAL_TYPE_CID]	int	NULL,

	[REFERRAL_TYPE_SNM]	nvarchar(20)	NULL,

	[REFERRAL_SOURCE]	nvarchar(90)	NULL,

	[REFERRAL_SOURCE_CID]	int	NULL,

	[REFERRAL_SOURCE_SNM]	nvarchar(20)	NULL,

	[REFERRAL_RELATIONSHIP]	nvarchar(90)	NULL,

	[REFERRAL_RELATIONSHIP_CID]	int	NULL,

	[REFERRAL_RELATIONSHIP_SNM]	nvarchar(20)	NULL,

	[REFERRAL_CHANNEL2]	nvarchar(90)	NULL,

	[REFERRAL_CHANNEL2_CID]	int	NULL,

	[REFERRAL_CHANNEL2_SNM]	nvarchar(20)	NULL,

	[REFERRAL_TYPE2]	nvarchar(90)	NULL,

	[REFERRAL_TYPE2_CID]	int	NULL,

	[REFERRAL_TYPE2_SNM]	nvarchar(20)	NULL,

	[REFERRAL_SOURCE2]	nvarchar(90)	NULL,

	[REFERRAL_SOURCE2_CID]	int	NULL,

	[REFERRAL_SOURCE2_SNM]	nvarchar(20)	NULL,

	[REFERRAL_RELATIONSHIP2]	nvarchar(90)	NULL,

	[REFERRAL_RELATIONSHIP2_CID]	int	NULL,

	[REFERRAL_RELATIONSHIP2_SNM]	nvarchar(20)	NULL,

	[SETTLEMENT_AGENT]	nvarchar(90)	NULL,

	[SETTLEMENT_AGENT_CID]	int	NULL,

	[SETTLEMENT_AGENT_SNM]	nvarchar(20)	NULL,

	[APPRAISER]	nvarchar(90)	NULL,

	[APPRAISER_CID]	int	NULL,

	[APPRAISER_SNM]	nvarchar(20)	NULL,

	[ATTORNEY]	nvarchar(90)	NULL,

	[ATTORNEY_CID]	int	NULL,

	[ATTORNEY_SNM]	nvarchar(20)	NULL,

	[NOTARY]	nvarchar(90)	NULL,

	[NOTARY_CID]	int	NULL,

	[NOTARY_SNM]	nvarchar(20)	NULL,

	[SALES_REP]	nvarchar(90)	NULL,

	[SALES_REP_CID]	int	NULL,

	[SALES_REP_SNM]	nvarchar(20)	NULL,

CONSTRAINT [PKWG_RPT_CMS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_DATES]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[APPLICATION_DATE]	datetime	NULL,

	[APPRAISAL_ORDER_DATE]	datetime	NULL,

	[APPRAISAL_RECVD_DATE]	datetime	NULL,

	[CANCELLED_DATE]	datetime	NULL,

	[CLOSED_DATE]	datetime	NULL,

	[COMMITMENT_EXP_DATE_OVR]	datetime	NULL,

	[CREATE_DATE]	datetime	NULL,

	[DENIAL_DATE]	datetime	NULL,

	[DISBURSEMENT_DATE]	datetime	NULL,

	[DOCS_DRAWN_DATE]	datetime	NULL,

	[EST_CLOSE_DATE]	datetime	NULL,

	[FILE_SUB_DATE]	datetime	NULL,

	[FLOOD_ORDER_DATE]	datetime	NULL,

	[FLOOD_RECVD_DATE]	datetime	NULL,

	[FUNDED_DATE]	datetime	NULL,

	[LOCKED_DATE]	datetime	NULL,

	[NOIA_DATE]	datetime	NULL,

	[ORIGINATION_DATE]	datetime	NULL,

	[PROCESSING_BEGIN_DATE]	datetime	NULL,

	[READY_FOR_DOCS_DATE]	datetime	NULL,

	[REQ_ADDTL_PROC_DATE]	datetime	NULL,

	[TITLE_ORDER_DATE]	datetime	NULL,

	[TITLE_RECVD_DATE]	datetime	NULL,

	[UW_DECISION_DATE]	datetime	NULL,

	[WITHDRAWN_DATE]	datetime	NULL,

	[LOCK_EXP_DATE]	datetime	NULL,

	[INVLK_COMMITMENT_DATE]	datetime	NULL,

	[INVLK_COMMITMENT_EXP_DATE]	datetime	NULL,

	[INVLK_COMMITMENT_CNFRM_DATE]	datetime	NULL,

	[READY_SHIP_DATE]	datetime	NULL,

	[RESCISSION_EXP_DATE]	datetime	NULL,

	[SHIPPED_DATE]	datetime	NULL,

	[INV_FUNDED_DATE]	datetime	NULL,

	[READY_FUND_DATE]	datetime	NULL,

	[READY_UW_DATE]	datetime	NULL,

	[DISCLOSURE_DATE]	datetime	NULL,

	[INIT_DISCLOSURE_DATE]	datetime	NULL,

	[REDISCLOSURE_DATE]	datetime	NULL,

	[FINAL_DISCLOSURE_DATE]	datetime	NULL,

	[THREEDAY_DISCLOSURE_DATE]	datetime	NULL,

	[FIRST_CREDIT_RPT_DATE]	datetime	NULL,

	[LAST_CREDIT_RPT_DATE]	datetime	NULL,

	[FINAL_DOCS_SHIPPED]	datetime	NULL,

	[HCM_DISCL_DT]	datetime	NULL,

	[SYS_BORROWER_SITUATION_DATE]	datetime	NULL,

	[MAN_BORROWER_SITUATION_DATE]	datetime	NULL,

	[MATURITY_DATE]	datetime	NULL,

	[FIRST_PMT_DATE]	datetime	NULL,

	[APPROVAL_DATE]	datetime	NULL,

	[SENT_TO_UNDERWRITING]	datetime	NULL,

	[PURCHASE_DATE]	datetime	NULL,

	[DOCUMENT_DATE]	datetime	NULL,

	[CLOSING_PROXY_DATE]	datetime	NULL,

	[CUDATE]	datetime	NULL,

	[NOI_SENT_DATE]	datetime	NULL,

	[NOI_START_DATE]	datetime	NULL,

	[NOI_END_DATE]	datetime	NULL,

	[FLOOD_DETMN_LETTER_DATE]	datetime	NULL,

	[UW_DOC_EXP_DATE]	datetime	NULL,

	[CLOSING_DOC_EXP_DATE]	datetime	NULL,

	[CLOSING_DOCS_DUE_DATE]	datetime	NULL,

	[SALES_CONTRACT_DATE]	datetime	NULL,

	[FILE_RECEIVED_DATE]	datetime	NULL,

	[UW_DECISION_EXP_DATE]	datetime	NULL,

	[APPRAISAL_DUE_DATE]	datetime	NULL,

	[APPRAISAL_RCVD_DATE]	datetime	NULL,

	[TITLE_INS_ORDERED_DATE]	datetime	NULL,

	[TITLE_INS_RCVD_DATE]	datetime	NULL,

	[APPRAISAL_ISSUE_DATE]	datetime	NULL,

	[MISC_7_DATE]	datetime	NULL,

	[ASSET_EXP_DOC_DATE]	datetime	NULL,

	[SUSPENDED_DATE]	datetime	NULL,

	[DISBURSEMENT_ISSUE_DATE]	datetime	NULL,

	[PREQUALIFY_DATE]	datetime	NULL,

	[UW_APPROVAL_EXP_DATE]	datetime	NULL,

	[CONFIRMED_LOCK_DATE]	datetime	NULL,

	[UW_DECISION_DATETIME]	datetime	NULL,

CONSTRAINT [PKWG_RPT_DATES] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_HMDA]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[REPORTABLE_YEAR]	nchar(4)	NULL,

	[ACTION_DATE]	datetime	NULL,

	[ACTION_TAKEN_CODE]	smallint	NULL,

	[ACTION_TAKEN]	nvarchar(50)	NULL,

	[PURCHASER_TYPE_CODE]	int	NULL,

	[PURCHASER_TYPE]	nvarchar(50)	NULL,

	[LOAN_TYPE_CODE]	smallint	NULL,

	[LOAN_TYPE]	nvarchar(50)	NULL,

	[LOAN_PURPOSE_CODE]	smallint	NULL,

	[LOAN_PURPOSE]	nvarchar(50)	NULL,

	[OWNER_OCCUPANCY_CODE]	smallint	NULL,

	[OWNER_OCCUPANCY]	nvarchar(50)	NULL,

	[PREAPPRVL_REQ_TYPE_CODE]	smallint	NULL,

	[PREAPPRVL_REQ_TYPE]	nvarchar(50)	NULL,

	[RATE_SPREAD]	numeric(16,6)	NULL,

	[HOEPA_STATUS_CODE]	smallint	NULL,

	[HOEPA_STATUS]	nvarchar(50)	NULL,

	[LIEN_STATUS_CODE]	smallint	NULL,

	[LIEN_STATUS]	nvarchar(50)	NULL,

	[DENIAL_1_CODE]	int	NULL,

	[DENIAL_1]	nvarchar(50)	NULL,

	[DENIAL_2_CODE]	int	NULL,

	[DENIAL_2]	nvarchar(50)	NULL,

	[DENIAL_3_CODE]	int	NULL,

	[DENIAL_3]	nvarchar(50)	NULL,

	[B1_SEX_CODE]	smallint	NULL,

	[B1_SEX]	nvarchar(50)	NULL,

	[B1_ETHNICITY_CODE]	smallint	NULL,

	[B1_ETHNICITY]	nvarchar(50)	NULL,

	[B1_RACE_1_CODE]	smallint	NULL,

	[B1_RACE_1]	nvarchar(50)	NULL,

	[B1_RACE_2_CODE]	smallint	NULL,

	[B1_RACE_2]	nvarchar(50)	NULL,

	[B1_RACE_3_CODE]	smallint	NULL,

	[B1_RACE_3]	nvarchar(50)	NULL,

	[B1_RACE_4_CODE]	smallint	NULL,

	[B1_RACE_4]	nvarchar(50)	NULL,

	[B1_RACE_5_CODE]	smallint	NULL,

	[B1_RACE_5]	nvarchar(50)	NULL,

	[B2_SEX_CODE]	smallint	NULL,

	[B2_SEX]	nvarchar(50)	NULL,

	[B2_ETHNICITY_CODE]	smallint	NULL,

	[B2_ETHNICITY]	nvarchar(50)	NULL,

	[B2_RACE_1_CODE]	smallint	NULL,

	[B2_RACE_1]	nvarchar(50)	NULL,

	[B2_RACE_2_CODE]	smallint	NULL,

	[B2_RACE_2]	nvarchar(50)	NULL,

	[B2_RACE_3_CODE]	smallint	NULL,

	[B2_RACE_3]	nvarchar(50)	NULL,

	[B2_RACE_4_CODE]	smallint	NULL,

	[B2_RACE_4]	nvarchar(50)	NULL,

	[B2_RACE_5_CODE]	smallint	NULL,

	[B2_RACE_5]	nvarchar(50)	NULL,

CONSTRAINT [PK_WG_RPT_HMDA] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_INV_LOCK_SNAPSHOT]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[SNAPSHOTID]	int	NOT NULL,

	[SNAPSHOT_DATE]	datetime	NULL,

	[DELEGATED_ENDORSEMENT_YN]	nchar(1)	NULL,

	[PRODUCT]	nvarchar(128)	NULL,

	[RATECODE]	nvarchar(10)	NULL,

	[INTEREST_RATE]	float	NULL,

	[AMORTIZATION_TYPE]	nvarchar(128)	NULL,

	[INVST_LOCK_PERIOD]	nvarchar(128)	NULL,

	[BASE_MARKET_PRICE]	float	NULL,

	[TTL_MKT_PRICE_ADJUSTMENTS]	float	NULL,

	[DELIVERY_TERMS]	nvarchar(128)	NULL,

	[PROPERTY_TYPE]	nvarchar(128)	NULL,

	[DOCUMENTATION_LEVEL]	nvarchar(20)	NULL,

	[OCCUPANCY_TYPE]	nvarchar(20)	NULL,

	[PURP_OF_REFINANCE]	nvarchar(20)	NULL,

	[LOAN_PURPOSE]	nvarchar(20)	NULL,

	[ORIGINAL_LOAN_AMOUNT]	float	NULL,

	[PROPERTY_LOAN_TO_VALUE]	float	NULL,

	[COMBINED_LOAN_TO_VALUE]	float	NULL,

	[ALTERNATE_CREDIT_SCORE]	int	NULL,

	[PROPERTY_STATE]	nvarchar(5)	NULL,

	[TOTAL_RATIO]	float	NULL,

CONSTRAINT [PK_WG_RPT_INV_LOCK_SNAPSHOT] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [SNAPSHOTID]

	)
);
CREATE TABLE [dbo].[WG_RPT_INVESTOR]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[MLPSA_KEY]	nvarchar(40)	NULL,

	[PACKAGE_ID]	nvarchar(50)	NULL,

	[TRADECONFIRM_ID]	nvarchar(50)	NULL,

	[FUNDING_ID]	nvarchar(50)	NULL,

	[COUPON_STRIP]	numeric(16,6)	NULL,

	[INVLK_LOCK_PERIOD]	nvarchar(128)	NULL,

	[INVLK_LOCK_PERIOD_DESC]	nvarchar(256)	NULL,

	[PIPELINE_LOCK_ID]	int	NULL,

CONSTRAINT [PKWG_RPT_INVESTOR] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_IPG_DETAIL]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[INVESTOR_CODE]	nvarchar(4)	NULL,

	[PRODUCT_CODE]	nvarchar(4)	NULL,

	[PRODUCT_NAME]	nvarchar(80)	NULL,

	[PROGRAM_CODE]	nvarchar(4)	NULL,

	[PROGRAM_NAME]	nvarchar(80)	NULL,

	[PRICE_GROUP_CODE]	nvarchar(4)	NULL,

	[PRICE_GROUP_CODE_NAME]	nvarchar(80)	NULL,

	[IPG_NAME]	nvarchar(240)	NULL,

	[SECONDARY_LOAN_TYPE]	nvarchar(128)	NULL,

	[SECONDARY_LOAN_TYPE_DESC]	nvarchar(256)	NULL,

	[PREPAY_PENALTY_TYPE]	nvarchar(128)	NULL,

	[PREPAY_PENALTY_TYPE_DESC]	nvarchar(256)	NULL,

	[OVER_ALLOW_PCT]	numeric(16,6)	NULL,

	[SHORT_ALLOW_PCT]	numeric(16,6)	NULL,

	[OVER_SPLIT_PCT]	numeric(16,6)	NULL,

	[SHORT_SPLIT_PCT]	numeric(16,6)	NULL,

	[REQUIRES_MERS]	nchar(1)	NULL,

	[REQUIRES_MI]	nchar(1)	NULL,

	[ONE_TIMECLOSE_CONST]	nchar(1)	NULL,

	[INTERIM_CONSTRUCTION]	nchar(1)	NULL,

	[ASSUMABLE]	nchar(1)	NULL,

	[CONV_PERIOD_ST]	smallint	NULL,

	[CONV_PERIOD_END]	smallint	NULL,

	[EZD_PRODUCT]	nchar(1)	NULL,

	[HMDA_REPORTABLE]	nchar(1)	NULL,

	[BUYDOWN_ALLOWED]	nchar(1)	NULL,

	[HELOC_ALLOW_YN]	nchar(1)	NULL,

	[PROD_PROF_TRUE]	nchar(1)	NULL,

	[PRICE_NAME]	nvarchar(240)	NULL,

	[ALLOW_DPA]	nchar(1)	NULL,

	[AVAIL_BTOC]	nchar(1)	NULL,

	[FIRST_LOCK_IND]	nchar(1)	NULL,

	[OLD_AGENCY_NUM_IND]	nchar(1)	NULL,

	[PRODUCT_IDENTIFIER]	nvarchar(80)	NULL,

	[SERVICING_INTERFACE_IND]	nvarchar(30)	NULL,

	[SERVICING_LOCATION]	nchar(20)	NULL,

	[SUB_PRIME_IND]	nchar(1)	NULL,

	[MI_REQUIRE]	nchar(1)	NULL,

CONSTRAINT [PKWG_RPT_IPG_DETAIL] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_LOAN]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[CLNUM]	nvarchar(20)	NULL,

	[EXTERNAL_LNUM]	nvarchar(40)	NULL,

	[JPM_LNUM]	nvarchar(40)	NULL,

	[AMORTIZATION]	nvarchar(128)	NULL,

	[AMORTIZATION_DESC]	nvarchar(256)	NULL,

	[CHANNEL]	nvarchar(128)	NULL,

	[CHANNEL_DESC]	nvarchar(256)	NULL,

	[CREDIT_SCORE]	int	NULL,

	[DOC_TYPE]	nvarchar(128)	NULL,

	[DOC_TYPE_DESC]	nvarchar(256)	NULL,

	[LEAD_SOURCE]	nvarchar(128)	NULL,

	[LEAD_SOURCE_DESC]	nvarchar(256)	NULL,

	[LIEN_POSITION]	nvarchar(128)	NULL,

	[LIEN_POSITION_DESC]	nvarchar(256)	NULL,

	[LOAN_PURPOSE]	nvarchar(128)	NULL,

	[LOAN_PURPOSE_DESC]	nvarchar(256)	NULL,

	[LOAN_STATUS]	nvarchar(128)	NULL,

	[LOAN_STATUS_DESC]	nvarchar(256)	NULL,

	[LOAN_TYPE]	nvarchar(128)	NULL,

	[LOAN_TYPE_DESC]	nvarchar(256)	NULL,

	[OCCUPANCY]	nvarchar(128)	NULL,

	[OCCUPANCY_DESC]	nvarchar(256)	NULL,

	[PREPAY_PENALTY_YN]	nchar(1)	NULL,

	[PRODUCT]	nvarchar(128)	NULL,

	[PRODUCT_DESC]	nvarchar(256)	NULL,

	[PROGRAM]	nvarchar(128)	NULL,

	[PROGRAM_DESC]	nvarchar(256)	NULL,

	[UW_DISPOSITION]	nvarchar(128)	NULL,

	[UW_DISPOSITION_DESC]	nvarchar(256)	NULL,

	[LOAN_LOCKED]	nchar(1)	NULL,

	[INVLK_COMMITMENT_NBR]	nvarchar(20)	NULL,

	[INVLK_LOCKED]	nchar(1)	NULL,

	[INVLK_LOCK_STATUS]	nvarchar(128)	NULL,

	[INVLK_LOCK_STATUS_DESC]	nvarchar(256)	NULL,

	[LOAN_ACTIVITY]	nvarchar(128)	NULL,

	[REFI_PURPOSE]	nvarchar(128)	NULL,

	[REFI_PURPOSE_DESC]	nvarchar(256)	NULL,

	[AGENCY_CASE_NUMBER]	nvarchar(30)	NULL,

	[LOAN_IS_PREQUAL_YN]	nchar(1)	NULL,

	[MORTGAGE_TYPE]	nvarchar(128)	NULL,

	[MORTGAGE_TYPE_DESC]	nvarchar(256)	NULL,

	[LOAN_TERM]	smallint	NULL,

	[FUNDING_METHOD]	nvarchar(128)	NULL,

	[FUNDING_METHOD_DESC]	nvarchar(256)	NULL,

	[DELIVERY_TERMS]	nvarchar(128)	NULL,

	[DELIVERY_TERMS_DESC]	nvarchar(256)	NULL,

	[CONDITION_TEXT]	nvarchar(max)	NULL,

	[CUSTATE]	nchar(1)	NULL,

	[CUISACTIVE_YN]	nchar(1)	NULL,

	[ESCROW_WAIVER]	nchar(1)	NULL,

	[REDISCLOSE_YN]	nchar(1)	NULL,

	[PRODUCT_RATECODE]	nvarchar(10)	NULL,

	[UW_TOLERANCE_FLAG]	nchar(1)	NULL,

	[GFE_TOLERANCE_FLAG]	nchar(1)	NULL,

	[LOCK_CONFIRM_YN]	nvarchar(1)	NULL,

	[CULTURE_CODE]	nvarchar(10)	NULL,

	[LOCK_TYPE]	nvarchar(40)	NULL,

	[LOCK_TYPE_DESC]	nvarchar(160)	NULL,

CONSTRAINT [PKWG_RPT_LOAN] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_LOAN_ACTIVITY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[S_LOAN_ACTIVITY]	nvarchar(128)	NOT NULL,

	[LOAN_ACTIVITY]	nvarchar(128)	NULL,

	[INITIAL_DATE]	date	NULL,

	[LAST_DATE]	date	NULL,

CONSTRAINT [PK_WG_RPT_LOAN_ACTIVITY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [S_LOAN_ACTIVITY]

	)
);
CREATE TABLE [dbo].[WG_RPT_LOAN_CONDITIONS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[CNDTN_CNTR]	int	NOT NULL,

	[CATEGORY]	nvarchar(128)	NULL,

	[CONDITION_TYPE]	nvarchar(128)	NULL,

	[CONDITION_STATE]	nvarchar(20)	NULL,

	[DUE_DATE]	datetime	NULL,

	[MAINT_DATE]	datetime	NULL,

	[WAIVED_DATE]	datetime	NULL,

	[ACTIVE_YN]	nchar(1)	NULL,

	[SIGN_OFF_DATE]	datetime	NULL,

	[CONDITION]	nvarchar(2000)	NULL,

	[UWCONDITION]	nvarchar(128)	NULL,

CONSTRAINT [PK_WG_RPT_LOAN_CONDITIONS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [CNDTN_CNTR]

	)
);
CREATE TABLE [dbo].[WG_RPT_LOAN_REMARKS]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[ENTERED_DATE]	datetime	NOT NULL,

	[USRID]	int	NOT NULL,

	[USERNAME]	nvarchar(60)	NULL,

	[REMARK_TYPE]	nvarchar(20)	NULL,

	[ACTIVITY]	nvarchar(128)	NULL,

	[TASK]	nvarchar(128)	NULL,

	[REMARK]	nvarchar(max)	NULL,

	[RMKID]	int	NOT NULL,

	[REMARKS_TXT]	nvarchar(max)	NULL,

CONSTRAINT [PK_WG_RPT_LOAN_REMARKS] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [RMKID]

	)
);
CREATE TABLE [dbo].[WG_RPT_LOAN_STATUS]	( 

	[ROWCNTR]	int	NOT NULL,

	[LNUM]	nchar(20)	NOT NULL,

	[S_LOAN_STATUS]	nvarchar(8)	NULL,

	[LOAN_STATUS]	nvarchar(128)	NULL,

	[STATUS_DATE]	datetime	NULL,

CONSTRAINT [PK_WG_RPT_LOAN_STATUS] PRIMARY KEY CLUSTERED (

	  [ROWCNTR]

	, [LNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_PROPERTY]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[CENSUS_TRACT]	nvarchar(8)	NULL,

	[COUNTY_CODE]	nchar(3)	NULL,

	[MSA_CODE]	nvarchar(6)	NULL,

	[PROJECT_CLASS]	nvarchar(128)	NULL,

	[PROJECT_NAME]	nvarchar(80)	NULL,

	[PROP_ADDR1]	nvarchar(55)	NULL,

	[PROP_ADDR2]	nvarchar(55)	NULL,

	[PROP_CITY]	nvarchar(25)	NULL,

	[PROP_COUNTY]	nvarchar(35)	NULL,

	[PROP_STATE]	nchar(2)	NULL,

	[PROP_ZIP]	nvarchar(10)	NULL,

	[PROPERTY_TYPE]	nvarchar(128)	NULL,

	[PROPERTY_TYPE_DESC]	nvarchar(256)	NULL,

	[STATE_CODE]	nchar(2)	NULL,

	[YEAR_BUILT]	smallint	NULL,

	[NUMBER_OF_UNITS]	smallint	NULL,

	[PROP_COUNTRY]	nvarchar(35)	NULL,

CONSTRAINT [PKWG_RPT_PROPERTY] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_RPT_WORKFLOW]	( 

	[WORKTYPE_INSTANCE]	int	NOT NULL,

	[LNUM]	nchar(20)	NULL,

	[WORKTYPE_CODE]	nvarchar(8)	NULL,

	[EST_EFFORT_TIME]	int	NULL,

	[EXP_RESOLVE_DATE]	datetime	NULL,

	[PROC_GROUP]	nvarchar(256)	NULL,

	[QUEUED_DATE]	date	NULL,

	[QUEUED_DATETIME]	datetime	NULL,

	[QUEUED_TIME]	int	NULL,

	[RESERVED_USER]	nvarchar(60)	NULL,

	[RESOLVE_DATE]	datetime	NULL,

	[RESOLVE_TYPE]	nvarchar(256)	NULL,

	[WF_ACTIVITY]	nvarchar(128)	NULL,

	[WF_STATUS]	smallint	NULL,

	[WORK_OPENED_DATE]	date	NULL,

	[WORK_OPENED_DATETIME]	datetime	NULL,

	[WORKED_TIME]	int	NULL,

	[WORKTYPE]	nvarchar(256)	NULL,

	[RESERVED_USERID]	int	NULL,

	[PROC_GROUP_CODE]	nvarchar(8)	NULL,

CONSTRAINT [PK_WG_RPT_WORKFLOW] PRIMARY KEY CLUSTERED (

	  [WORKTYPE_INSTANCE]

	)
);
CREATE TABLE [dbo].[WG_SC_ATTRIBUTES]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DEPTHOF_FILE_IND_SRC]	nvarchar(20)	NULL,

	[BANKRUPTCY_IND_SRC]	nvarchar(20)	NULL,

	[REPO_FCLS_IND_SRC]	nvarchar(20)	NULL,

	[DELQ_CRED_POL_CNT_SRC]	int	NULL,

	[DEROG_OBLIG_CNT_SRC]	int	NULL,

	[DEROG_OBLIG_AMT_SRC]	decimal(18,3)	NULL,

	[UNPAID_MED_AMT_SRC]	decimal(18,3)	NULL,

	[LENDER_CHGOFF_IND_SRC]	nvarchar(20)	NULL,

	[EXCL_DECIS_RSLT_SRC]	nvarchar(20)	NULL,

	[PROP_TYPE_IND_SRC]	nvarchar(20)	NULL,

	[STATE_IND_SRC]	nvarchar(20)	NULL,

	[LTV_VAL_SRC]	decimal(16,6)	NULL,

	[CLTV_VAL_SRC]	decimal(16,6)	NULL,

	[DTI_VAL_SRC]	decimal(16,6)	NULL,

	[LA_VAL_SRC]	decimal(18,3)	NULL,

	[CSCORE_VAL_SRC]	int	NULL,

	[DEPTHOF_FILE_IND_OVR]	nvarchar(20)	NULL,

	[BANKRUPTCY_IND_OVR]	nvarchar(20)	NULL,

	[REPO_FCLS_IND_OVR]	nvarchar(20)	NULL,

	[DELQ_CRED_POL_CNT_OVR]	int	NULL,

	[DEROG_OBLIG_CNT_OVR]	int	NULL,

	[DEROG_OBLIG_AMT_OVR]	decimal(18,3)	NULL,

	[UNPAID_MED_AMT_OVR]	decimal(18,3)	NULL,

	[LENDER_CHGOFF_IND_OVR]	nvarchar(20)	NULL,

	[EXCL_DECIS_RSLT_OVR]	nvarchar(20)	NULL,

	[PROP_TYPE_IND_OVR]	nvarchar(20)	NULL,

	[STATE_IND_OVR]	nvarchar(20)	NULL,

	[LTV_VAL_OVR]	decimal(16,6)	NULL,

	[CLTV_VAL_OVR]	decimal(16,6)	NULL,

	[DTI_VAL_OVR]	decimal(16,6)	NULL,

	[LA_VAL_OVR]	decimal(18,3)	NULL,

	[CSCORE_VAL_OVR]	int	NULL,

	[DEPTHOF_FILE_IND_ATT]	nvarchar(20)	NULL,

	[BANKRUPTCY_IND_ATT]	nvarchar(20)	NULL,

	[REPO_FCLS_IND_ATT]	nvarchar(20)	NULL,

	[DELQ_CRED_POL_CNT_ATT]	int	NULL,

	[DEROG_OBLIG_CNT_ATT]	int	NULL,

	[DEROG_OBLIG_AMT_ATT]	decimal(16,6)	NULL,

	[UNPAID_MED_AMT_ATT]	decimal(16,6)	NULL,

	[LENDER_CHGOFF_IND_ATT]	nvarchar(20)	NULL,

	[EXCL_DECIS_RSLT_ATT]	nvarchar(20)	NULL,

	[PROP_TYPE_IND_ATT]	nvarchar(20)	NULL,

	[STATE_IND_ATT]	nvarchar(20)	NULL,

	[LTV_VAL_ATT]	decimal(16,6)	NULL,

	[CLTV_VAL_ATT]	decimal(16,6)	NULL,

	[DTI_VAL_ATT]	decimal(16,6)	NULL,

	[LA_VAL_ATT]	decimal(18,3)	NULL,

	[CSCORE_VAL_ATT]	int	NULL,

	[TRDNBR_OPEN_OVR]	int	NULL,

	[TRDMOS_OLD_OVR]	int	NULL,

	[BKANY_CNT_OVR]	int	NULL,

	[BKANYMOS_NEW_OVR]	int	NULL,

	[REPO_CNT_OVR]	int	NULL,

	[FCLS_CNT_OVR]	int	NULL,

	[COLMDUNP_AMT_OVR]	decimal(18,3)	NULL,

	[DELQ500_CNT_OVR]	int	NULL,

	[DELQ306MOS_CNT_OVR]	int	NULL,

	[DELQ6012MOS_CNT_OVR]	int	NULL,

	[DELQ90P24MOS_CNT_OVR]	int	NULL,

	[COFUNP500_CNT_OVR]	int	NULL,

	[JUDUNP500_CNT_OVR]	int	NULL,

	[TAXUNP500_CNT_OVR]	int	NULL,

	[COLNMDUNP500_CNT_OVR]	int	NULL,

	[COFUNP500_AMT_OVR]	decimal(18,3)	NULL,

	[JUDUNP500_AMT_OVR]	decimal(18,3)	NULL,

	[TAXUNP500_AMT_OVR]	decimal(18,3)	NULL,

	[COLNMDUNP500_AMT_OVR]	decimal(18,3)	NULL,

	[THINLIMIT_IND_ATT]	nvarchar(20)	NULL,

	[THINLIMIT_IND_SRC]	nvarchar(20)	NULL,

	[THINLIMIT_IND_OVR]	nvarchar(20)	NULL,

	[TIERLIMIT_IND_ATT]	nvarchar(20)	NULL,

	[TIERLIMIT_IND_SRC]	nvarchar(20)	NULL,

	[TIERLIMIT_IND_OVR]	nvarchar(20)	NULL,

	[THRESHOLD_IND_ATT]	nvarchar(20)	NULL,

	[THRESHOLD_IND_SRC]	nvarchar(20)	NULL,

	[THRESHOLD_IND_OVR]	nvarchar(20)	NULL,

	[PTI_VAL_ATT]	decimal(8,3)	NULL,

	[PTI_VAL_SRC]	decimal(8,3)	NULL,

	[PTI_VAL_OVR]	decimal(8,3)	NULL,

	[CREDIT_TIER_ATT]	nvarchar(20)	NULL,

	[CREDIT_TIER_SRC]	nvarchar(20)	NULL,

	[CREDIT_TIER_OVR]	nvarchar(20)	NULL,

	[PRIM_BORR_DECS_ATT]	nvarchar(20)	NULL,

	[PRIM_BORR_DECS_SRC]	nvarchar(20)	NULL,

	[PRIM_BORR_DECS_OVR]	nvarchar(20)	NULL,

	[CO_BORR_DECS_ATT]	nvarchar(20)	NULL,

	[CO_BORR_DECS_SRC]	nvarchar(20)	NULL,

	[CO_BORR_DECS_OVR]	nvarchar(20)	NULL,

	[PRI_BOR_TRD_DESC_ATT]	nvarchar(20)	NULL,

	[PRI_BOR_TRD_DESC_SRC]	nvarchar(20)	NULL,

	[PRI_BOR_TRD_DESC_OVR]	nvarchar(20)	NULL,

	[CO_BOR_TRD_DESC_ATT]	nvarchar(20)	NULL,

	[CO_BOR_TRD_DESC_SRC]	nvarchar(20)	NULL,

	[CO_BOR_TRD_DESC_OVR]	nvarchar(20)	NULL,

	[PRI_BOR_BK_DESC_ATT]	nvarchar(20)	NULL,

	[PRI_BOR_BK_DESC_SRC]	nvarchar(20)	NULL,

	[PRI_BOR_BK_DESC_OVR]	nvarchar(20)	NULL,

	[CO_BOR_BK_DESC_ATT]	nvarchar(20)	NULL,

	[CO_BOR_BK_DESC_SRC]	nvarchar(20)	NULL,

	[CO_BOR_BK_DESC_OVR]	nvarchar(20)	NULL,

	[PRI_BOR_TRD_AGE_DESC_ATT]	nvarchar(20)	NULL,

	[PRI_BOR_TRD_AGE_DESC_SRC]	nvarchar(20)	NULL,

	[PRI_BOR_TRD_AGE_DESC_OVR]	nvarchar(20)	NULL,

	[PRI_BOR_TIRE_SCORE_ATT]	nvarchar(20)	NULL,

	[PRI_BOR_TIRE_SCORE_SRC]	nvarchar(20)	NULL,

	[PRI_BOR_TIRE_SCORE_OVR]	nvarchar(20)	NULL,

	[DTI_SCORE_ATT]	nvarchar(20)	NULL,

	[DTI_SCORE_SRC]	nvarchar(20)	NULL,

	[DTI_SCORE_OVR]	nvarchar(20)	NULL,

	[LOAN_TRM_RULE_DECS_ATT]	nvarchar(20)	NULL,

	[LOAN_TRM_RULE_DECS_SRC]	nvarchar(20)	NULL,

	[LOAN_TRM_RULE_DECS_OVR]	nvarchar(20)	NULL,

	[LOAN_FACTOR_DECS_ATT]	nvarchar(20)	NULL,

	[LOAN_FACTOR_DECS_SRC]	nvarchar(20)	NULL,

	[LOAN_FACTOR_DECS_OVR]	nvarchar(20)	NULL,

	[PRI_BOR_NO_OF_TRDS_OVR]	int	NULL,

	[CO_BOR_NO_OF_TRDS_OVR]	int	NULL,

	[PRI_BOR_IS_MEM_OVR]	nvarchar(20)	NULL,

	[CO_BOR_IS_MEM_OVR]	nvarchar(20)	NULL,

	[PRI_BOR_BK_SCR_OVR]	int	NULL,

	[CO_BOR_BK_SCR_OVR]	int	NULL,

	[PRI_BOR_MEM_MNTH_OVR]	int	NULL,

	[CO_BOR_MEM_MNTH_OVR]	int	NULL,

	[PRI_BOR_OLD_TRD_AGE_OVR]	int	NULL,

	[CO_BOR_OLD_TRD_AGE_OVR]	int	NULL,

	[COLLAT_VEHICLE_AGE_OVR]	int	NULL,

	[LOAN_ELIGIBILITY_ATT]	nvarchar(20)	NULL,

	[LOAN_ELIGIBILITY_SRC]	nvarchar(20)	NULL,

	[LOAN_ELIGIBILITY_OVR]	nvarchar(20)	NULL,

	[COLLATERAL_ATT]	nvarchar(20)	NULL,

	[COLLATERAL_SRC]	nvarchar(20)	NULL,

	[COLLATERAL_OVR]	nvarchar(20)	NULL,

	[CO_AGE_OLD_AUT_TRD_OVR]	int	NULL,

	[PRI_AGE_OLD_AUT_TRD_OVR]	int	NULL,

	[CO_AUT_TRD_OP_24_MO_OVR]	int	NULL,

	[PRI_AUT_TRD_OP_24_MO_OVR]	int	NULL,

	[CO_AVG_AGE_TRD_LNS_OVR]	int	NULL,

	[PRI_AVG_AGE_TRD_LNS_OVR]	int	NULL,

	[CO_AUT_TOT_BAL_TRD_OVR]	int	NULL,

	[PRI_AUT_TOT_BAL_TRD_OVR]	int	NULL,

	[CO_CRDT_OPN_IN_6_MO_OVR]	int	NULL,

	[PRI_CRDT_OPN_IN_6_MO_OVR]	int	NULL,

	[CO_NO_TMS_30L_2YRS_OVR]	int	NULL,

	[PRI_NO_TMS_30L_2YRS_OVR]	int	NULL,

	[CO_INQ_6M_EX_14DYS_OVR]	int	NULL,

	[PRI_INQ_6M_EX_14DYS_OVR]	int	NULL,

	[CO_INQ_6M_EX_30DYS_OVR]	int	NULL,

	[PRI_INQ_6M_EX_30DYS_OVR]	int	NULL,

	[CO_AF_INQ_6M_EX_14D_OVR]	int	NULL,

	[PRI_AF_INQ_6M_EX_14D_OVR]	int	NULL,

	[CO_NO_OF_MON_RE_DEQ_OVR]	int	NULL,

	[PRI_NO_OF_MON_RE_DEQ_OVR]	int	NULL,

	[PRI_RTO_BAL_REV_BNK_OVR]	int	NULL,

	[CO_RTO_BAL_REV_BANK_OVR]	int	NULL,

	[PRI_HC_TRD_RPT_IN_6M_OVR]	int	NULL,

	[CO_HC_TRD_RPT_IN_6M_OVR]	int	NULL,

	[PRI_TRD_OPN_PAST_6M_OVR]	int	NULL,

	[CO_TRD_OPN_PAST_6M_OVR]	int	NULL,

	[PRI_TRD_WRS_RAT_60P_OVR]	int	NULL,

	[CO_TRD_WRST_RAT_60P_OVR]	int	NULL,

	[PRI_REVOLV_TRD_HCR_OVR]	int	NULL,

	[CO_REVOLV_TRD_HCR_OVR]	int	NULL,

	[PRI_TOT_NSF_24MONS_OVR]	int	NULL,

	[CO_TOT_NSF_24MONS_OVR]	int	NULL,

	[CUST_CREDIT_SCORE_OVR]	int	NULL,

CONSTRAINT [PK_WGSCATTRIBUTES] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_SC_DECISION]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DECISION_INDICATOR]	nvarchar(20)	NULL,

	[RECOMMENDATION_TEXT]	nvarchar(1000)	NULL,

CONSTRAINT [PK_WGSCDECISION] PRIMARY KEY CLUSTERED (

	  [LNUM]

	)
);
CREATE TABLE [dbo].[WG_SYMBOL_XREF]	( 

	[TABLENAME]	nvarchar(35)	NOT NULL,

	[COLUMNNAME]	nvarchar(35)	NOT NULL,

	[FLDNAME]	nvarchar(35)	NOT NULL,

	[LKP_TABLE]	nvarchar(35)	NOT NULL,

	[LKP_COLUMN]	nvarchar(35)	NOT NULL,

	[LKP_DISPLAY_COLUMN]	nvarchar(35)	NOT NULL,

	)
);
CREATE TABLE [dbo].[WG_TLBR_VET_MILT_SERVICE]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[BNUM]	smallint	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[S_BRANCH]	nvarchar(8)	NULL,

	[START_DATE]	datetime	NULL,

	[END_DATE]	datetime	NULL,

	[S_OFF_OR_ENLISTED]	nvarchar(8)	NULL,

	[SERVICE_NUMBER]	nvarchar(15)	NULL,

	[ACTIVESERVYN]	nchar(1)	NULL,

CONSTRAINT [PK_WG_TLBR_VET_MILT_SERVICE] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [BNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
CREATE TABLE [dbo].[WG_TLR_RECORDING_INFO]	( 

	[LNUM]	nchar(20)	NOT NULL,

	[DBID]	nchar(5)	NOT NULL,

	[ROWSERIALNO]	int	NOT NULL,

	[REOCNTR]	int	NULL,

	[RECORDING_DATE]	datetime	NULL,

	[DOCUMENT_TYPE]	nvarchar(8)	NULL,

	[DOCUMENT_NUMBER]	nvarchar(20)	NULL,

	[DOC_TYPE_OTHER_DESC]	nvarchar(80)	NULL,

	[JURISDICTION_NAME]	nvarchar(80)	NULL,

	[JURISDICTION_TYPE]	nvarchar(8)	NULL,

	[JUDICIAL_DISTRICT]	nvarchar(80)	NULL,

	[RECORDING_DISTRICT]	nvarchar(80)	NULL,

	[BOOK_TYPE]	nvarchar(8)	NULL,

	[BOOK_NUMBER]	nvarchar(20)	NULL,

	[INSTRUMENT_NUMBER]	nvarchar(80)	NULL,

	[RECORDING_OFFICE]	nvarchar(80)	NULL,

	[RECORDING_STATE]	nvarchar(2)	NULL,

	[RECORDING_COUNTY]	nvarchar(80)	NULL,

	[PAGE_NUMBER]	nvarchar(20)	NULL,

	[VOLUME_NUMBER]	nvarchar(20)	NULL,

	[RECORDING_CITY]	nvarchar(20)	NULL,

CONSTRAINT [PK_WG_TLR_RECORDING_INFO] PRIMARY KEY CLUSTERED (

	  [LNUM]

	, [DBID]

	, [ROWSERIALNO]

	)
);
