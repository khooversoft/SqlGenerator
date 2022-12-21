-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TL_LOAN_CONTACTS2]
AS
   SELECT
      x.[LNUM],
      x.[CID_ACCOUNT_REP],
      x.[CID_APPRAISAL],
      x.[CID_AREA_SALES_MANAGER],
      x.[CID_ASSIGNEE],
      x.[CID_ASSIGNEE_CONTACT],
      x.[CID_ASSIGNOR],
      x.[CID_ASSIGNOR_CONTACT],
      x.[CID_ATTESTOR],
      x.[CID_AUDITOR],
      x.[CID_AUTHORIZED_AGENT],
      x.[CID_BENEFICIARY],
      x.[CID_BUILDER],
      x.[CID_BUYERS_AGENT],
      x.[CID_BUYERS_ATTORNEY],
      x.[CID_BUYERS_REALTOR],
      x.[CID_COMMITMNT_AUTH_CORR],
      x.[CID_CONTRACTOR],
      x.[CID_CORRESPONDENT_ACCT_REP],
      x.[CID_DEPOSITORY],
      x.[CID_ESCROW],
      x.[CID_ESCROW_AGENT],
      x.[CID_FEE_INSPECTOR],
      x.[CID_FIN_INSTITUTION],
      x.[CID_FLOOD_AGENT],
      x.[CID_HAZARD_AGENT],
      x.[CID_HOME_BUYERS_WARRANTY],
      x.[CID_INSURER_GUARANTOR],
      x.[CID_INS_CERT_AGENT],
      x.[CID_INS_CERT_PROVIDER],
      x.[CID_INVESTOR_CONTACT],
      x.[CID_MARKETING_COORD],
      x.[CID_NOTARY_PUBLIC],
      x.[CID_OFFICER],
      x.[CID_PLAN_REVIEWER],
      x.[CID_RECORDER],
      x.[CID_REG_VICE_PRESIDENT],
      x.[CID_RENT_LOSS_AGENT],
      x.[CID_RENT_LOSS_INSURER],
      x.[CID_SECRETARY],
      HASHBYTES('SHA2_256', CAST(x.[CID_SELLERS_ATTORNEY] AS NVARCHAR(50))) AS [CID_SELLERS_ATTORNEY],
      HASHBYTES('SHA2_256', CAST(x.[CID_SELLING_AGENT] AS NVARCHAR(50))) AS [CID_SELLING_AGENT],
      x.[CID_SELLING_REALTOR],
      x.[CID_SERVICING_AGENT],
      x.[CID_SHIPPER],
      x.[CID_SPONSOR],
      x.[CID_SURVEYING_COMPANY],
      x.[CID_SURVEYOR],
      x.[CID_TAX_CERTIFICATE_PROV],
      x.[CID_TAX_COLLECTOR],
      HASHBYTES('SHA2_256', CAST(x.[CID_THIRD_PARTY] AS NVARCHAR(50))) AS [CID_THIRD_PARTY],
      x.[CID_VA_OFFICE],
      x.[CID_VERIFICATION_OFFICER],
      x.[CID_VICE_PRESIDENT],
      x.[CID_WAREHOUSE_LENDER],
      x.[CID_WARRANTOR],
      x.[CID_WHLSALE_MARKTNG_COOR],
      HASHBYTES('SHA2_256', CAST(x.[CID_WITNESS] AS NVARCHAR(50))) AS [CID_WITNESS],
      HASHBYTES('SHA2_256', CAST(x.[CID_TRUSTEE2] AS NVARCHAR(50))) AS [CID_TRUSTEE2],
      x.[CID_WHOLESALE_LENDER],
      x.[CID_CONTRACT_UNDERWRITER],
      x.[CID_CONDO],
      x.[CID_FINAL_INVESTOR],
      x.[CID_UNDERWRITER2],
      x.[CID_UNDERWRITER3],
      x.[CID_COMMUNITY_LAND_TRUST],
      x.[CID_RTRN_CLOS_PKG],
      x.[CID_RTRN_REC_DOCS],
      x.[CID_HB_COUNSELING_ORG2],
      x.[CID_HB_COUNSELING_AGT2],
      x.[CID_SEC_FINCNG_PVDR],
      x.[CID_SEC_FINCNG_REP],
      x.[CID_FUNDING_SOURCE],
      x.[CID_TAX_SRV_PROCESSOR],
      x.[CID_HB_COUNSELING_ORG1],
      x.[CID_HB_COUNSELING_AGT1],
      x.[CID_MAINT_ORG],
      x.[CID_COMM_LAND_TR_REP],
      x.[CID_LOSS_PAYEE],
      x.[CID_HUD_OFFICE],
      x.[CID_FINAL_INV_CONTACT],
      x.[CID_203KCONSULTANT],
      x.[CID_FHAVAAPPRUW],
      x.[CID_LISTING_REALTOR],
      x.[CID_REFERRALTYPE],
      x.[CID_REFERRALCHANNEL],
      x.[CID_REFERRALSOURCE],
      x.[CID_REFERRALRELATIONSHIP],
      x.[CID_REFERALTYPE2],
      x.[CID_REFERALCHANNEL2],
      x.[CID_REFERALSOURCE2],
      x.[CID_REFERALRELATIONSHIP2],
      x.[CID_CLSNG_PROTCTN_INS_CO],
      x.[CID_SALESMGR],
      x.[CID_PROCMGR],
      x.[CID_PROCASST],
      x.[CID_UWMGR],
      x.[CID_SUSPANALYST],
      x.[CID_TEAM],
      HASHBYTES('SHA2_256', CAST(x.[CID_CUSTRELATIONS] AS NVARCHAR(50))) AS [CID_CUSTRELATIONS],
      x.[CID_SUBLENDER],
      x.[CID_SUBLENDERREP],
      x.[CID_CLSPRTCTNLTRCO],
      x.[CID_SALESASSISTANT],
      x.[CID_COMMUNITY],
      x.[CID_TRAILINGDOCS],
      x.[CID_LOAN_REVIEWER],
      x.[CID_CLOSMGR],
      x.[CID_FNDMGR],
      x.[CID_OPSMGR],
      x.[CID_UWALST],
      x.[CID_HMDRWR],
      x.[CID_DISBCOMP],
      x.[CID_OTHINS],
      x.[CID_OTHAGT]
   FROM [clt_NetO].[GF_TL_LOAN_CONTACTS2] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
