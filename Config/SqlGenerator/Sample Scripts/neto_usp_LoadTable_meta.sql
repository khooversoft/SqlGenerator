DELETE FROM etl.ETLGenPrimaryKeyColumns WHERE DataLayer = 'clt_neto';
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'BORROWER', 'LNUM', 1
UNION
SELECT 'clt_neto', 'BORROWER', 'BNUM', 2
UNION
SELECT 'clt_neto', 'BORROWER', 'DBID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) 
SELECT 'clt_neto', 'DATES', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_DATES', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_DATES3', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_HOUSING_PROPSD', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_LOAN_CONTACTS', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_LOAN_CONTACTS2', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_LOAN_DATA', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_LOAN_STATUS', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_PMT_STREAMS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TL_PMT_STREAMS', 'PAYMENTCTR', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_PNP_IPG_DETAIL', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_POINT_OF_SALE_INFO', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_TRANSOVR', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_UW_4', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TL_UWAPPREXT', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TL_UWAPPREXT', 'CNTR', 2
UNION
SELECT 'clt_neto', 'GF_TL_UWAPPREXT', 'DBID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLB_HOUSING_PRSNT', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLB_HOUSING_PRSNT', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLB_HOUSING_PRSNT', 'DBID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_ADDITIONALDATA', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_ADDITIONALDATA', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_ADDITIONALDATA', 'DBID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_ALIAS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_ALIAS', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_ALIAS', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_ALIAS', 'ROWSERIALNO', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_ASSIST_PROGRAMS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_ASSIST_PROGRAMS', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_ASSIST_PROGRAMS', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_ASSIST_PROGRAMS', 'GIFTCTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_BORROWERID', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_BORROWERID', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_BORROWERID', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_BORROWERID', 'ROWSERIALNO', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_CREDIT_SCORE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_CREDIT_SCORE', 'RESPONSEID', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_CREDIT_SCORE', 'CREDITRESPONSEID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_CREDIT_SCORE', 'SCOREID', 4
UNION
SELECT 'clt_neto', 'GF_TLBR_CREDIT_SCORE', 'DBID', 5
UNION
SELECT 'clt_neto', 'GF_TLBR_CREDIT_SCORE', 'BORROWER_ID', 13;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_DEPENDENTS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_DEPENDENTS', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_DEPENDENTS', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_DEPENDENTS', 'ROWSERIALNO', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_ETHNICITY', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_ETHNICITY', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_ETHNICITY', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_ETHNICITY', 'ETHNICITY_CTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_HOUSNG_PRSNT_OTH', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_HOUSNG_PRSNT_OTH', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_HOUSNG_PRSNT_OTH', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_HOUSNG_PRSNT_OTH', 'CTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_RACE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_RACE', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_RACE', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_RACE', 'ROWSERIALNO', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_RAW_SCORES', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_RAW_SCORES', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_RAW_SCORES', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_RAW_SCORES', 'ROWSERIALNO', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_SUBETHNICITY', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_SUBETHNICITY', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_SUBETHNICITY', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_SUBETHNICITY', 'SUBETHNICITY_CTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLBR_SUBRACE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLBR_SUBRACE', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLBR_SUBRACE', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLBR_SUBRACE', 'SUBRACE_CTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_DISBURSEMENTS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_DISBURSEMENTS', 'DBID', 2
UNION
SELECT 'clt_neto', 'GF_TLR_DISBURSEMENTS', 'ROWSERIALNO', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_DISCL_DATA', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_DISCL_DATA', 'ROWSERIALNO', 2
UNION
SELECT 'clt_neto', 'GF_TLR_DISCL_DATA', 'DBID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_FUNDITEM', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_FUNDITEM', 'TRANS_COUNTER', 2
UNION
SELECT 'clt_neto', 'GF_TLR_FUNDITEM', 'TRANS_DBID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_INSURANCE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_INSURANCE', 'DBID', 2
UNION
SELECT 'clt_neto', 'GF_TLR_INSURANCE', 'ROWSERIALNO', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_REG_O', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_REG_O', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLR_REG_O', 'DBID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_REOWNED_BORROWERS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_REOWNED_BORROWERS', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLR_REOWNED_BORROWERS', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLR_REOWNED_BORROWERS', 'REOCNTR', 4
UNION
SELECT 'clt_neto', 'GF_TLR_REOWNED_BORROWERS', 'REL_DBID', 5
UNION
SELECT 'clt_neto', 'GF_TLR_REOWNED_BORROWERS', 'REL_BNUM', 6;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_REQ_CREDIT_LIAB_REP', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_REQ_CREDIT_LIAB_REP', 'DBID', 2
UNION
SELECT 'clt_neto', 'GF_TLR_REQ_CREDIT_LIAB_REP', 'REQUESTID', 3
UNION
SELECT 'clt_neto', 'GF_TLR_REQ_CREDIT_LIAB_REP', 'CREDITREQUESTID', 4
UNION
SELECT 'clt_neto', 'GF_TLR_REQ_CREDIT_LIAB_REP', 'LIABILITYID', 5
UNION
SELECT 'clt_neto', 'GF_TLR_REQ_CREDIT_LIAB_REP', 'REPOSITORYID', 6;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_FILE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_FILE', 'DBID', 2
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_FILE', 'RESPONSEID', 3
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_FILE', 'CREDITRESPONSEID', 4
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_FILE', 'CREDITFILEID', 5
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_FILE', 'BORROWER_ID', 6;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_INQUIRY', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_INQUIRY', 'RESPONSEID', 2
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_INQUIRY', 'CREDITRESPONSEID', 3
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_INQUIRY', 'INQUIRYID', 4
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_INQUIRY', 'DBID', 5;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_SUMMARY', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_SUMMARY', 'BNUM', 2
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_SUMMARY', 'DBID', 3
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_SUMMARY', 'RESPONSEID', 4
UNION
SELECT 'clt_neto', 'GF_TLR_RES_CREDIT_SUMMARY', 'CREDITRESPONSEID', 5;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_SUBJPRP_INSURANCE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_SUBJPRP_INSURANCE', 'DBID', 2
UNION
SELECT 'clt_neto', 'GF_TLR_SUBJPRP_INSURANCE', 'ROWSERIALNO', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_SUBJPRP_TAX', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_SUBJPRP_TAX', 'DBID', 2
UNION
SELECT 'clt_neto', 'GF_TLR_SUBJPRP_TAX', 'ROWSERIALNO', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLR_TAXITEMS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLR_TAXITEMS', 'DBID', 2
UNION
SELECT 'clt_neto', 'GF_TLR_TAXITEMS', 'ROWSERIALNO', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TLRR_FUNDDISB', 'LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TLRR_FUNDDISB', 'DISB_DBID', 2
UNION
SELECT 'clt_neto', 'GF_TLRR_FUNDDISB', 'DISB_SERNO', 3
UNION
SELECT 'clt_neto', 'GF_TLRR_FUNDDISB', 'ORIG_CNTR', 4
UNION
SELECT 'clt_neto', 'GF_TLRR_FUNDDISB', 'ORIG_DBID', 5;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_AUDIT_LOAN_DELETE', 'DELETED_LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TS_AUDIT_LOAN_DELETE', 'DELETED_LNUM', 1
UNION
SELECT 'clt_neto', 'GF_TS_AUDIT_LOAN_DELETE', 'USRID', 3
UNION
SELECT 'clt_neto', 'GF_TS_AUDIT_LOAN_DELETE', 'USRID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_ADDRESS', 'CID', 1
UNION
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_ADDRESS', 'ROWSERIALNO', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_EMAIL', 'CID', 1
UNION
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_EMAIL', 'ROWSERIALNO', 2
UNION
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_EMAIL', 'S_EMAILTYPE', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_INFO', 'CID', 1
UNION
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_INFO', 'ACTIVE', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_PHONE', 'CID', 1
UNION
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_PHONE', 'ROWSERIALNO', 2
UNION
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_PHONE', 'S_PHONETYPE', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_TYPE', 'CID', 1
UNION
SELECT 'clt_neto', 'GF_TS_CMS_CONTACT_TYPE', 'S_CMSTYPE', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_CMS_INFOBYTYPE', 'CID', 1
UNION
SELECT 'clt_neto', 'GF_TS_CMS_INFOBYTYPE', 'S_CMSTYPE', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_PNP_IPG_INVESTOR', 'INVESTORCODE', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_PNP_IPG_PRICING', 'PRICING_GROUP_CODE', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_PNP_IPG_PRODUCT', 'PRODUCTCODE', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GF_TS_PNP_IPG_PROGRAM', 'PROGRAMCODE', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GFXVARTEXTMAP', 'TABLENAME', 1
UNION
SELECT 'clt_neto', 'GFXVARTEXTMAP', 'DBIDCOLUMN', 2
UNION
SELECT 'clt_neto', 'GFXVARTEXTMAP', 'SERIALNOCOLUMN', 3
UNION
SELECT 'clt_neto', 'GFXVARTEXTMAP', 'VARTEXTTABLE', 4
UNION
SELECT 'clt_neto', 'GFXVARTEXTMAP', 'COMPROPERTYNAME', 5;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'GSSUSR', 'USRID', 1
UNION
SELECT 'clt_neto', 'GSSUSR', 'USRNAME', 2
UNION
SELECT 'clt_neto', 'GSSUSR', 'SECMASK', 5;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) SELECT 'clt_neto', 'HELOC', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) SELECT 'clt_neto', 'HELOC2', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'HMDAINFO', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'INCOME', 'LNUM', 1
UNION
SELECT 'clt_neto', 'INCOME', 'BNUM', 2
UNION
SELECT 'clt_neto', 'INCOME', 'DBID', 3
UNION
SELECT 'clt_neto', 'INCOME', 'CTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'INFO1008', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'L_SYMBOL', 'FLDNAME', 1
UNION
SELECT 'clt_neto', 'L_SYMBOL', 'FLDNAME', 1
UNION
SELECT 'clt_neto', 'L_SYMBOL', 'DBSYMBOL', 2
UNION
SELECT 'clt_neto', 'L_SYMBOL', 'DBSYMBOL', 2
UNION
SELECT 'clt_neto', 'L_SYMBOL', 'SYMBOLID', 4
UNION
SELECT 'clt_neto', 'L_SYMBOL', 'SYMBOLID', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'LIABLTY', 'LNUM', 1
UNION
SELECT 'clt_neto', 'LIABLTY', 'BNUM', 2
UNION
SELECT 'clt_neto', 'LIABLTY', 'DBID', 3
UNION
SELECT 'clt_neto', 'LIABLTY', 'LIABCTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'POA', 'LNUM', 1
UNION
SELECT 'clt_neto', 'POA', 'BNUM', 2
UNION
SELECT 'clt_neto', 'POA', 'DBID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'PREVRES', 'LNUM', 1
UNION
SELECT 'clt_neto', 'PREVRES', 'BNUM', 2
UNION
SELECT 'clt_neto', 'PREVRES', 'DBID', 3
UNION
SELECT 'clt_neto', 'PREVRES', 'RESCTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'PRODUCT', 'LNUM', 1
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'REOWNED', 'LNUM', 1
UNION
SELECT 'clt_neto', 'REOWNED', 'BNUM', 2
UNION
SELECT 'clt_neto', 'REOWNED', 'DBID', 3
UNION
SELECT 'clt_neto', 'REOWNED', 'REOCNTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'SEIA', 'LNUM', 1
UNION
SELECT 'clt_neto', 'SEIA', 'BNUM', 2
UNION
SELECT 'clt_neto', 'SEIA', 'TAXYEAR', 3
UNION
SELECT 'clt_neto', 'SEIA', 'METHOD', 4
UNION
SELECT 'clt_neto', 'SEIA', 'CNTR', 5
UNION
SELECT 'clt_neto', 'SEIA', 'DBID', 71
UNION
SELECT 'clt_neto', 'SEIA', 'CTR', 72;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'SELLER', 'LNUM', 1
UNION
SELECT 'clt_neto', 'SELLER', 'DBID', 2
UNION
SELECT 'clt_neto', 'SELLER', 'SELCNTR', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'SERVICNG', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'SUBJPRP', 'LNUM', 1

GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) SELECT 'clt_neto', 'TAXINFO', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder) SELECT 'clt_neto', 'TILINFO', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'TRACKING', 'LNUM', 1
UNION
SELECT 'clt_neto', 'TRACKING', 'CLNUM', 2

GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'TRANSDATA', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'TRSTENTS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'TRSTENTS', 'TRUSTNO', 2
UNION
SELECT 'clt_neto', 'TRSTENTS', 'DBID', 3
UNION
SELECT 'clt_neto', 'TRSTENTS', 'COUNTER', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'TRUSTS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'TRUSTS', 'TRUSTCNT', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'UNDCOND1', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'UNDCOND2', 'LNUM', 1
UNION
SELECT 'clt_neto', 'UNDCOND2', 'DBID', 2
UNION
SELECT 'clt_neto', 'UNDCOND2', 'CNTR', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'UWAPPR', 'LNUM', 1
UNION
SELECT 'clt_neto', 'UWAPPR', 'CNTR', 2
UNION
SELECT 'clt_neto', 'UWAPPR', 'DBID', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'VARTXT', 'DBID', 1
UNION
SELECT 'clt_neto', 'VARTXT', 'SERIALNO', 2
UNION
SELECT 'clt_neto', 'VARTXT', 'SEQNO', 3
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'VETINFO', 'LNUM', 1
UNION
SELECT 'clt_neto', 'VETINFO', 'BNUM', 36
UNION
SELECT 'clt_neto', 'VETINFO', 'DBID', 37;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET', 'ASSETID', 2
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET_ACCT', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET_ACCT', 'ASSETID', 2

GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET_MARINE_ENG', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET_MARINE_ENG', 'ASSETID', 2
UNION
SELECT 'clt_neto', 'WG_ASSET_MARINE_ENG', 'ROWCOUNTER', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET_VEHICLE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET_VEHICLE', 'ASSETID', 2
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET_VHCL_AUTO', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET_VHCL_AUTO', 'ASSETID', 2

GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET_VHCL_MARINE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET_VHCL_MARINE', 'ASSETID', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET_VHCL_OPTIONS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET_VHCL_OPTIONS', 'ASSETID', 2
UNION
SELECT 'clt_neto', 'WG_ASSET_VHCL_OPTIONS', 'ROWCOUNTER', 3
UNION
SELECT 'clt_neto', 'WG_ASSET_VHCL_OPTIONS', 'VALUATION_CNTR', 8;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET_VHCL_RV', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET_VHCL_RV', 'ASSETID', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET_VHCL_TRAILER', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET_VHCL_TRAILER', 'ASSETID', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_ASSET_VHCL_VALUATION', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_ASSET_VHCL_VALUATION', 'ASSETID', 2
UNION
SELECT 'clt_neto', 'WG_ASSET_VHCL_VALUATION', 'VALUATION_CNTR', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_AUTO_DEBIT', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_CNS_LOAN_APPLICATION', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_COLLATERAL_ADDRESS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_COLLATERAL_ADDRESS', 'BNUM', 2
UNION
SELECT 'clt_neto', 'WG_COLLATERAL_ADDRESS', 'DBID', 3
UNION
SELECT 'clt_neto', 'WG_COLLATERAL_ADDRESS', 'ASSETID', 4
UNION
SELECT 'clt_neto', 'WG_COLLATERAL_ADDRESS', 'ROWSERIALNO', 5;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_COLLATERAL_PLEDGOR', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_COLLATERAL_PLEDGOR', 'DBID', 2
UNION
SELECT 'clt_neto', 'WG_COLLATERAL_PLEDGOR', 'ROWSERIALNO', 3
UNION
SELECT 'clt_neto', 'WG_COLLATERAL_PLEDGOR', 'CHILDROWSERIALNO', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_COLLATERAL_TYPES', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_COLLATERAL_TYPES', 'DBID', 2
UNION
SELECT 'clt_neto', 'WG_COLLATERAL_TYPES', 'ROWSERIALNO', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_CRM_CUSTOMER', 'CUSTOMER_ID', 1
UNION
SELECT 'clt_neto', 'WG_CRM_CUSTOMER', 'CUSTOMER_TYPE', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_CRM_CUSTOMER_ACCT_DETAIL', 'CURRENT_CUSTOMERID', 1
UNION
SELECT 'clt_neto', 'WG_CRM_CUSTOMER_ACCT_DETAIL', 'ACC_TYPE', 2
UNION
SELECT 'clt_neto', 'WG_CRM_CUSTOMER_ACCT_DETAIL', 'ROWSERIALNO', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY', 'CURRENT_CUSTOMERID', 1
UNION
SELECT 'clt_neto', 'WG_CRM_CUSTOMER_ACCT_DETAIL_SUMMARY', 'AG_DA_ACCT_TYPE', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_CRM_CUSTOMER_ADDRESS', 'CUSTOMER_ID', 1
UNION
SELECT 'clt_neto', 'WG_CRM_CUSTOMER_ADDRESS', 'ADDRESS_TYPE', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_CRM_CUSTOMER_PHONE', 'CUSTOMER_ID', 1
UNION
SELECT 'clt_neto', 'WG_CRM_CUSTOMER_PHONE', 'PHONE_TYPE', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_HMDAINFO_EXT', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_INCOME_SOURCE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_INCOME_SOURCE', 'DBID', 2
UNION
SELECT 'clt_neto', 'WG_INCOME_SOURCE', 'BNUM', 3
UNION
SELECT 'clt_neto', 'WG_INCOME_SOURCE', 'INC_SRC_CTR', 4;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_AMOUNTS', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_BORROWER', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_RPT_BORROWER', 'B_ORDER', 2
UNION
SELECT 'clt_neto', 'WG_RPT_BORROWER', 'BNUM', 3;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_CMS', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_DATES', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_HMDA', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_INV_LOCK_SNAPSHOT', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_RPT_INV_LOCK_SNAPSHOT', 'SNAPSHOTID', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_INVESTOR', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_IPG_DETAIL', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_LOAN', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_LOAN_ACTIVITY', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_RPT_LOAN_ACTIVITY', 'S_LOAN_ACTIVITY', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_LOAN_CONDITIONS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_RPT_LOAN_CONDITIONS', 'CNDTN_CNTR', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_LOAN_REMARKS', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_RPT_LOAN_REMARKS', 'ENTERED_DATE', 2
UNION
SELECT 'clt_neto', 'WG_RPT_LOAN_REMARKS', 'USRID', 3
UNION
SELECT 'clt_neto', 'WG_RPT_LOAN_REMARKS', 'RMKID', 9;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_LOAN_STATUS', 'ROWCNTR', 1
UNION
SELECT 'clt_neto', 'WG_RPT_LOAN_STATUS', 'LNUM', 2;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_PROPERTY', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_RPT_WORKFLOW', 'WORKTYPE_INSTANCE', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_SC_DECISION', 'LNUM', 1;
GO

INSERT INTO etl.ETLGenPrimaryKeyColumns (DataLayer, TableName, ColumnName, ColumnOrder)
SELECT 'clt_neto', 'WG_TLBR_VET_MILT_SERVICE', 'LNUM', 1
UNION
SELECT 'clt_neto', 'WG_TLBR_VET_MILT_SERVICE', 'BNUM', 2
UNION
SELECT 'clt_neto', 'WG_TLBR_VET_MILT_SERVICE', 'DBID', 3
UNION
SELECT 'clt_neto', 'WG_TLBR_VET_MILT_SERVICE', 'ROWSERIALNO', 4;