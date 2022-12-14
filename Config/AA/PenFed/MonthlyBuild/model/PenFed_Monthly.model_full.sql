IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'clt_AssetAcq')
BEGIN
  EXEC( 'CREATE SCHEMA clt_AssetAcq;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq_restricted')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq_restricted;' )
END
GO


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'AssetAcq_pii')
BEGIN
  EXEC( 'CREATE SCHEMA AssetAcq_pii;' )
END
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'clt_AssetAcq' AND TABLE_NAME = 'PenFed_Monthly')
BEGIN
   DROP TABLE [clt_AssetAcq].[PenFed_Monthly]
END
GO

CREATE TABLE [clt_AssetAcq].[PenFed_Monthly]
(
   [ASAP_RecordEffectiveDateTime]                      datetime2(7)         NOT NULL,
   [ASAP_DeleteDateTime]                               datetime2(7)         NULL,
   [snapshot_date]                                     int                  NULL,
   [loan_id]                                           int                  NULL,
   [asset_class]                                       nvarchar(200)        NULL,
   [product_type]                                      nvarchar(200)        NULL,
   [credit_union_product_type]                         nvarchar(200)        NULL,
   [credit_class]                                      nvarchar(200)        NULL,
   [loan_purpose]                                      nvarchar(200)        NULL,
   [loan_type]                                         nvarchar(200)        NULL,
   [doc_type]                                          nvarchar(200)        NULL,
   [auto_manual_apprvl]                                nvarchar(200)        NULL,
   [orig_bal]                                          int                  NULL,
   [curr_bal]                                          decimal(16,6)        NULL,
   [orig_jun_bal]                                      int                  NULL,
   [curr_jun_bal]                                      int                  NULL,
   [orig_sen_bal]                                      int                  NULL,
   [curr_sen_bal]                                      int                  NULL,
   [curr_cred_limit]                                   int                  NULL,
   [curr_unfund_bal]                                   int                  NULL,
   [orig_fico]                                         int                  NULL,
   [curr_fico]                                         int                  NULL,
   [curr_fico_date]                                    int                  NULL,
   [dti_back_orig]                                     decimal(16,6)        NULL,
   [dti_front_orig]                                    decimal(16,6)        NULL,
   [borrower_state_code]                               nvarchar(50)         NULL,
   [borrower_occup]                                    nvarchar(50)         NULL,
   [orig_date]                                         int                  NULL,
   [first_pay_date]                                    int                  NULL,
   [maturity_date]                                     int                  NULL,
   [orig_loan_term]                                    int                  NULL,
   [wala]                                              int                  NULL,
   [wam]                                               int                  NULL,
   [next_due_date]                                     int                  NULL,
   [paid_thru_date]                                    int                  NULL,
   [int_paid_thru_date]                                int                  NULL,
   [balloon_flag]                                      nchar(1)             NULL,
   [balloon_term]                                      int                  NULL,
   [int_rate_type]                                     nvarchar(50)         NULL,
   [orig_int_rate]                                     decimal(16,6)        NULL,
   [curr_int_rate]                                     decimal(16,6)        NULL,
   [act_pni_paid]                                      decimal(16,6)        NULL,
   [io_flag]                                           int                  NULL,
   [io_term]                                           int                  NULL,
   [ppay_pnlty_flag]                                   nchar(1)             NULL,
   [ppay_pnlty_term]                                   int                  NULL,
   [occ_type]                                          nvarchar(50)         NULL,
   [prop_type]                                         nvarchar(50)         NULL,
   [prop_state]                                        nvarchar(50)         NULL,
   [prop_city]                                         nvarchar(50)         NULL,
   [prop_county]                                       nvarchar(50)         NULL,
   [prop_zip_code]                                     int                  NULL,
   [prop_msa]                                          nvarchar(50)         NULL,
   [lien_type]                                         int                  NULL,
   [second_lien_flag]                                  nchar(1)             NULL,
   [lien_related_id]                                   int                  NULL,
   [orig_appr_type]                                    int                  NULL,
   [orig_appr_value]                                   int                  NULL,
   [orig_appr_date]                                    int                  NULL,
   [refresh_appr_value]                                int                  NULL,
   [refresh_appr_type]                                 int                  NULL,
   [refresh_appr_date]                                 int                  NULL,
   [curr_bpo_value]                                    int                  NULL,
   [bpo_date]                                          int                  NULL,
   [curr_avm_value]                                    int                  NULL,
   [curr_avm_date]                                     int                  NULL,
   [sales_price]                                       int                  NULL,
   [orig_ltv_first]                                    decimal(16,6)        NULL,
   [orig_ltv_sec]                                      int                  NULL,
   [cltv_orig]                                         decimal(16,6)        NULL,
   [curr_ltv]                                          decimal(16,6)        NULL,
   [curr_cltv]                                         int                  NULL,
   [curr_ltv_sec]                                      int                  NULL,
   [curr_dq_bkt]                                       nvarchar(50)         NULL,
   [curr_loan_status]                                  nvarchar(50)         NULL,
   [dpd]                                               int                  NULL,
   [bkrpt_flag**]                                      nchar(1)             NULL,
   [bkrpt_chapter]                                     int                  NULL,
   [fcl_flag]                                          nchar(1)             NULL,
   [reo_flag]                                          nchar(1)             NULL,
   [dq_hist_12]                                        int                  NULL,
   [charge_off_flag]                                   nchar(1)             NULL,
   [charge_off_amt]                                    int                  NULL,
   [recovery_amt]                                      int                  NULL,
   [ffeic_writedown]                                   int                  NULL,
   [nbr_of_times_30_days_delinquent_life_of_loan]      int                  NULL,
   [nbr_of_times_60_days_delinquent_life_of_loan]      int                  NULL,
   [nbr_of_times_90_days_delinquent_life_of_loan]      int                  NULL,
   [nbr_of_times_120_days_delinquent_life_of_loan]     int                  NULL,
   [nbr_of_times_180_days_delinquent_life_of_loan]     int                  NULL,
   [tdr_flag]                                          nchar(1)             NULL,
   [bankruptcy_file_date]                              int                  NULL,
   [fore_start_date]                                   int                  NULL,
   [fore_sale_date]                                    int                  NULL,
   [date_reo]                                          int                  NULL,
   [mod_flag]                                          nchar(1)             NULL,
   [tdr_hist_flag]                                     nchar(1)             NULL,
   [tdr_impairment_amt]                                int                  NULL,
   [mod_type]                                          nvarchar(50)         NULL,
   [mod_date]                                          int                  NULL,
   [nbr_times_mod]                                     int                  NULL,
   [latest_mod_date]                                   int                  NULL,
   [mod_rate]                                          int                  NULL,
   [mod_mat_date]                                      int                  NULL,
   [mod_forgive_bal]                                   int                  NULL,
   [mod_forborne_bal]                                  int                  NULL,
   [mod_pni]                                           int                  NULL,
   [mod_orig_loan_id]                                  int                  NULL,
   [dq_bkt_mod]                                        int                  NULL,
   [refresh_ltv_mod]                                   int                  NULL,
   [rate_pre_mod]                                      int                  NULL,
   [mod_bal]                                           int                  NULL,
   [pmt_pre_mod]                                       int                  NULL,
   [pmt_post_mod]                                      int                  NULL,
   [int_rate_index]                                    int                  NULL,
   [first_reset_freq]                                  int                  NULL,
   [subseq_reset_freq]                                 int                  NULL,
   [int_gross_margin]                                  decimal(16,6)        NULL,
   [rate_life_cap]                                     decimal(16,6)        NULL,
   [rate_life_floor]                                   decimal(16,6)        NULL,
   [rate_first_cap]                                    decimal(16,6)        NULL,
   [rate_subseq_cap]                                   decimal(16,6)        NULL,
   [rate_first_floor]                                  decimal(16,6)        NULL,
   [rate_subseq_floor]                                 decimal(16,6)        NULL,
   [first_rate_adj_date]                               int                  NULL,
   [next_rate_adj_date]                                int                  NULL,
   [mtr_rate_adj]                                      int                  NULL,
   [neg_am_flag]                                       nchar(1)             NULL,
   [neg_am_cap]                                        int                  NULL,
   [option_arm_flag]                                   nchar(1)             NULL,
   [recast_term]                                       int                  NULL,
   [net_margin]                                        int                  NULL,
   [arm_initial_rate]                                  decimal(16,6)        NULL,
   [first_pmt_adj_date]                                int                  NULL,
   [nxt_pmt_adj_date]                                  int                  NULL,
   [back_days]                                         int                  NULL,
   [orig_mi_coverage]                                  int                  NULL,
   [mi_company]                                        int                  NULL,
   [orig_cred_limit]                                   int                  NULL,
   [credit_closed_flag]                                nchar(1)             NULL,
   [credit_frozen_flag]                                int                  NULL,
   [credit_limit_change_action]                        int                  NULL,
   [draw_period]                                       int                  NULL,
   [repay_period]                                      int                  NULL,
   [he_type]                                           int                  NULL,
   [curr_ut_ratio]                                     int                  NULL,
   [date_line_changed]                                 int                  NULL,
   [date_line_closed]                                  int                  NULL,
   [mtr_pmt_adj]                                       int                  NULL,
   [business_account_flag]                             nvarchar(50)         NULL,
   [exit_type]                                         int                  NULL,
   [conform_curr_dq_bkt]                               int                  NULL,
   [conform_curr_loan_status]                          int                  NULL,
   [conform_dq_bkt_mod]                                int                  NULL,
   [conform_doc_type]                                  int                  NULL,
   [conform_int_rate_index]                            int                  NULL,
   [conform_int_rate_type]                             int                  NULL,
   [conform_loan_purpose]                              int                  NULL,
   [conform_loan_type]                                 int                  NULL,
   [conform_mod_type]                                  int                  NULL,
   [conform_occ_type]                                  int                  NULL,
   [conform_product_type]                              int                  NULL,
   [conform_property_type]                             int                  NULL,
   [ASAP_ROW_HASH]                                     nvarchar(64)         NULL,
   [ASAP_DML_FLAG]                                     nvarchar(2)          NULL,
   [ASAP_CREATED_DATE]                                 datetime2(7)         NULL,
   [ASAP_UPDATED_DATE]                                 datetime2(7)         NULL,
   [ASAP_LINEAGE_ID]                                   nvarchar(36)         NULL,
   [ASAP_ACTIVITY_ID]                                  nvarchar(36)         NULL,
   [ASAP_TRIGGER_ID]                                   nvarchar(36)         NULL,
   [ASAP_SRC_FILEPATH]                                 nvarchar(1000)       NULL,
   [ASAP_SRC_FILE_DATE]                                datetime2(7)         NULL,
   [ASAP_SRC_NAME]                                     nvarchar(36)         NULL
)
;
GO


-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq' AND TABLE_NAME = 'PenFed_Monthly')
BEGIN
   DROP VIEW [AssetAcq].[PenFed_Monthly]
END
GO


CREATE VIEW [AssetAcq].[PenFed_Monthly]
AS
   SELECT
      x.[snapshot_date],
      x.[loan_id],
      x.[asset_class],
      x.[product_type],
      x.[credit_union_product_type],
      x.[credit_class],
      x.[loan_purpose],
      x.[loan_type],
      x.[doc_type],
      x.[auto_manual_apprvl],
      x.[orig_bal],
      x.[curr_bal],
      x.[orig_jun_bal],
      x.[curr_jun_bal],
      x.[orig_sen_bal],
      x.[curr_sen_bal],
      x.[curr_cred_limit],
      x.[curr_unfund_bal],
      x.[orig_fico],
      x.[curr_fico],
      x.[curr_fico_date],
      x.[dti_back_orig],
      x.[dti_front_orig],
      x.[borrower_state_code],
      x.[borrower_occup],
      x.[orig_date],
      x.[first_pay_date],
      x.[maturity_date],
      x.[orig_loan_term],
      x.[wala],
      x.[wam],
      x.[next_due_date],
      x.[paid_thru_date],
      x.[int_paid_thru_date],
      x.[balloon_flag],
      x.[balloon_term],
      x.[int_rate_type],
      x.[orig_int_rate],
      x.[curr_int_rate],
      x.[act_pni_paid],
      x.[io_flag],
      x.[io_term],
      x.[ppay_pnlty_flag],
      x.[ppay_pnlty_term],
      x.[occ_type],
      x.[prop_type],
      x.[prop_state],
      x.[prop_city],
      x.[prop_county],
      x.[prop_zip_code],
      x.[prop_msa],
      x.[lien_type],
      x.[second_lien_flag],
      x.[lien_related_id],
      x.[orig_appr_type],
      x.[orig_appr_value],
      x.[orig_appr_date],
      x.[refresh_appr_value],
      x.[refresh_appr_type],
      x.[refresh_appr_date],
      x.[curr_bpo_value],
      x.[bpo_date],
      x.[curr_avm_value],
      x.[curr_avm_date],
      x.[sales_price],
      x.[orig_ltv_first],
      x.[orig_ltv_sec],
      x.[cltv_orig],
      x.[curr_ltv],
      x.[curr_cltv],
      x.[curr_ltv_sec],
      x.[curr_dq_bkt],
      x.[curr_loan_status],
      x.[dpd],
      x.[bkrpt_flag**],
      x.[bkrpt_chapter],
      x.[fcl_flag],
      x.[reo_flag],
      x.[dq_hist_12],
      x.[charge_off_flag],
      x.[charge_off_amt],
      x.[recovery_amt],
      x.[ffeic_writedown],
      x.[nbr_of_times_30_days_delinquent_life_of_loan],
      x.[nbr_of_times_60_days_delinquent_life_of_loan],
      x.[nbr_of_times_90_days_delinquent_life_of_loan],
      x.[nbr_of_times_120_days_delinquent_life_of_loan],
      x.[nbr_of_times_180_days_delinquent_life_of_loan],
      x.[tdr_flag],
      x.[bankruptcy_file_date],
      x.[fore_start_date],
      x.[fore_sale_date],
      x.[date_reo],
      x.[mod_flag],
      x.[tdr_hist_flag],
      x.[tdr_impairment_amt],
      x.[mod_type],
      x.[mod_date],
      x.[nbr_times_mod],
      x.[latest_mod_date],
      x.[mod_rate],
      x.[mod_mat_date],
      x.[mod_forgive_bal],
      x.[mod_forborne_bal],
      x.[mod_pni],
      x.[mod_orig_loan_id],
      x.[dq_bkt_mod],
      x.[refresh_ltv_mod],
      x.[rate_pre_mod],
      x.[mod_bal],
      x.[pmt_pre_mod],
      x.[pmt_post_mod],
      x.[int_rate_index],
      x.[first_reset_freq],
      x.[subseq_reset_freq],
      x.[int_gross_margin],
      x.[rate_life_cap],
      x.[rate_life_floor],
      x.[rate_first_cap],
      x.[rate_subseq_cap],
      x.[rate_first_floor],
      x.[rate_subseq_floor],
      x.[first_rate_adj_date],
      x.[next_rate_adj_date],
      x.[mtr_rate_adj],
      x.[neg_am_flag],
      x.[neg_am_cap],
      x.[option_arm_flag],
      x.[recast_term],
      x.[net_margin],
      x.[arm_initial_rate],
      x.[first_pmt_adj_date],
      x.[nxt_pmt_adj_date],
      x.[back_days],
      x.[orig_mi_coverage],
      x.[mi_company],
      x.[orig_cred_limit],
      x.[credit_closed_flag],
      x.[credit_frozen_flag],
      x.[credit_limit_change_action],
      x.[draw_period],
      x.[repay_period],
      x.[he_type],
      x.[curr_ut_ratio],
      x.[date_line_changed],
      x.[date_line_closed],
      x.[mtr_pmt_adj],
      x.[business_account_flag],
      x.[exit_type],
      x.[conform_curr_dq_bkt],
      x.[conform_curr_loan_status],
      x.[conform_dq_bkt_mod],
      x.[conform_doc_type],
      x.[conform_int_rate_index],
      x.[conform_int_rate_type],
      x.[conform_loan_purpose],
      x.[conform_loan_type],
      x.[conform_mod_type],
      x.[conform_occ_type],
      x.[conform_product_type],
      x.[conform_property_type],
      x.[ASAP_ROW_HASH],
      x.[ASAP_DML_FLAG],
      x.[ASAP_CREATED_DATE],
      x.[ASAP_UPDATED_DATE],
      x.[ASAP_LINEAGE_ID],
      x.[ASAP_ACTIVITY_ID],
      x.[ASAP_TRIGGER_ID],
      x.[ASAP_SRC_FILEPATH],
      x.[ASAP_SRC_FILE_DATE],
      x.[ASAP_SRC_NAME]
   FROM [clt_AssetAcq].[PenFed_Monthly] x
   WHERE x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_restricted' AND TABLE_NAME = 'PenFed_Monthly')
BEGIN
   DROP VIEW [AssetAcq_restricted].[PenFed_Monthly]
END
GO


CREATE VIEW [AssetAcq_restricted].[PenFed_Monthly]
AS
   SELECT
      x.[snapshot_date],
      x.[loan_id],
      x.[asset_class],
      x.[product_type],
      x.[credit_union_product_type],
      x.[credit_class],
      x.[loan_purpose],
      x.[loan_type],
      x.[doc_type],
      x.[auto_manual_apprvl],
      x.[orig_bal],
      x.[curr_bal],
      x.[orig_jun_bal],
      x.[curr_jun_bal],
      x.[orig_sen_bal],
      x.[curr_sen_bal],
      x.[curr_cred_limit],
      x.[curr_unfund_bal],
      x.[orig_fico],
      x.[curr_fico],
      x.[curr_fico_date],
      x.[dti_back_orig],
      x.[dti_front_orig],
      x.[borrower_state_code],
      x.[borrower_occup],
      x.[orig_date],
      x.[first_pay_date],
      x.[maturity_date],
      x.[orig_loan_term],
      x.[wala],
      x.[wam],
      x.[next_due_date],
      x.[paid_thru_date],
      x.[int_paid_thru_date],
      x.[balloon_flag],
      x.[balloon_term],
      x.[int_rate_type],
      x.[orig_int_rate],
      x.[curr_int_rate],
      x.[act_pni_paid],
      x.[io_flag],
      x.[io_term],
      x.[ppay_pnlty_flag],
      x.[ppay_pnlty_term],
      x.[occ_type],
      x.[prop_type],
      x.[prop_state],
      x.[prop_city],
      x.[prop_county],
      x.[prop_zip_code],
      x.[prop_msa],
      x.[lien_type],
      x.[second_lien_flag],
      x.[lien_related_id],
      x.[orig_appr_type],
      x.[orig_appr_value],
      x.[orig_appr_date],
      x.[refresh_appr_value],
      x.[refresh_appr_type],
      x.[refresh_appr_date],
      x.[curr_bpo_value],
      x.[bpo_date],
      x.[curr_avm_value],
      x.[curr_avm_date],
      x.[sales_price],
      x.[orig_ltv_first],
      x.[orig_ltv_sec],
      x.[cltv_orig],
      x.[curr_ltv],
      x.[curr_cltv],
      x.[curr_ltv_sec],
      x.[curr_dq_bkt],
      x.[curr_loan_status],
      x.[dpd],
      x.[bkrpt_flag**],
      x.[bkrpt_chapter],
      x.[fcl_flag],
      x.[reo_flag],
      x.[dq_hist_12],
      x.[charge_off_flag],
      x.[charge_off_amt],
      x.[recovery_amt],
      x.[ffeic_writedown],
      x.[nbr_of_times_30_days_delinquent_life_of_loan],
      x.[nbr_of_times_60_days_delinquent_life_of_loan],
      x.[nbr_of_times_90_days_delinquent_life_of_loan],
      x.[nbr_of_times_120_days_delinquent_life_of_loan],
      x.[nbr_of_times_180_days_delinquent_life_of_loan],
      x.[tdr_flag],
      x.[bankruptcy_file_date],
      x.[fore_start_date],
      x.[fore_sale_date],
      x.[date_reo],
      x.[mod_flag],
      x.[tdr_hist_flag],
      x.[tdr_impairment_amt],
      x.[mod_type],
      x.[mod_date],
      x.[nbr_times_mod],
      x.[latest_mod_date],
      x.[mod_rate],
      x.[mod_mat_date],
      x.[mod_forgive_bal],
      x.[mod_forborne_bal],
      x.[mod_pni],
      x.[mod_orig_loan_id],
      x.[dq_bkt_mod],
      x.[refresh_ltv_mod],
      x.[rate_pre_mod],
      x.[mod_bal],
      x.[pmt_pre_mod],
      x.[pmt_post_mod],
      x.[int_rate_index],
      x.[first_reset_freq],
      x.[subseq_reset_freq],
      x.[int_gross_margin],
      x.[rate_life_cap],
      x.[rate_life_floor],
      x.[rate_first_cap],
      x.[rate_subseq_cap],
      x.[rate_first_floor],
      x.[rate_subseq_floor],
      x.[first_rate_adj_date],
      x.[next_rate_adj_date],
      x.[mtr_rate_adj],
      x.[neg_am_flag],
      x.[neg_am_cap],
      x.[option_arm_flag],
      x.[recast_term],
      x.[net_margin],
      x.[arm_initial_rate],
      x.[first_pmt_adj_date],
      x.[nxt_pmt_adj_date],
      x.[back_days],
      x.[orig_mi_coverage],
      x.[mi_company],
      x.[orig_cred_limit],
      x.[credit_closed_flag],
      x.[credit_frozen_flag],
      x.[credit_limit_change_action],
      x.[draw_period],
      x.[repay_period],
      x.[he_type],
      x.[curr_ut_ratio],
      x.[date_line_changed],
      x.[date_line_closed],
      x.[mtr_pmt_adj],
      x.[business_account_flag],
      x.[exit_type],
      x.[conform_curr_dq_bkt],
      x.[conform_curr_loan_status],
      x.[conform_dq_bkt_mod],
      x.[conform_doc_type],
      x.[conform_int_rate_index],
      x.[conform_int_rate_type],
      x.[conform_loan_purpose],
      x.[conform_loan_type],
      x.[conform_mod_type],
      x.[conform_occ_type],
      x.[conform_product_type],
      x.[conform_property_type],
      x.[ASAP_ROW_HASH],
      x.[ASAP_DML_FLAG],
      x.[ASAP_CREATED_DATE],
      x.[ASAP_UPDATED_DATE],
      x.[ASAP_LINEAGE_ID],
      x.[ASAP_ACTIVITY_ID],
      x.[ASAP_TRIGGER_ID],
      x.[ASAP_SRC_FILEPATH],
      x.[ASAP_SRC_FILE_DATE],
      x.[ASAP_SRC_NAME]
   FROM [clt_AssetAcq].[PenFed_Monthly] x
   WHERE x.[ASAP_DeleteDateTime] IS NULL
;
GO

-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = 'AssetAcq_pii' AND TABLE_NAME = 'PenFed_Monthly')
BEGIN
   DROP VIEW [AssetAcq_pii].[PenFed_Monthly]
END
GO


CREATE VIEW [AssetAcq_pii].[PenFed_Monthly]
AS
   SELECT
      x.[snapshot_date],
      x.[loan_id],
      x.[asset_class],
      x.[product_type],
      x.[credit_union_product_type],
      x.[credit_class],
      x.[loan_purpose],
      x.[loan_type],
      x.[doc_type],
      x.[auto_manual_apprvl],
      x.[orig_bal],
      x.[curr_bal],
      x.[orig_jun_bal],
      x.[curr_jun_bal],
      x.[orig_sen_bal],
      x.[curr_sen_bal],
      x.[curr_cred_limit],
      x.[curr_unfund_bal],
      x.[orig_fico],
      x.[curr_fico],
      x.[curr_fico_date],
      x.[dti_back_orig],
      x.[dti_front_orig],
      x.[borrower_state_code],
      x.[borrower_occup],
      x.[orig_date],
      x.[first_pay_date],
      x.[maturity_date],
      x.[orig_loan_term],
      x.[wala],
      x.[wam],
      x.[next_due_date],
      x.[paid_thru_date],
      x.[int_paid_thru_date],
      x.[balloon_flag],
      x.[balloon_term],
      x.[int_rate_type],
      x.[orig_int_rate],
      x.[curr_int_rate],
      x.[act_pni_paid],
      x.[io_flag],
      x.[io_term],
      x.[ppay_pnlty_flag],
      x.[ppay_pnlty_term],
      x.[occ_type],
      x.[prop_type],
      x.[prop_state],
      x.[prop_city],
      x.[prop_county],
      x.[prop_zip_code],
      x.[prop_msa],
      x.[lien_type],
      x.[second_lien_flag],
      x.[lien_related_id],
      x.[orig_appr_type],
      x.[orig_appr_value],
      x.[orig_appr_date],
      x.[refresh_appr_value],
      x.[refresh_appr_type],
      x.[refresh_appr_date],
      x.[curr_bpo_value],
      x.[bpo_date],
      x.[curr_avm_value],
      x.[curr_avm_date],
      x.[sales_price],
      x.[orig_ltv_first],
      x.[orig_ltv_sec],
      x.[cltv_orig],
      x.[curr_ltv],
      x.[curr_cltv],
      x.[curr_ltv_sec],
      x.[curr_dq_bkt],
      x.[curr_loan_status],
      x.[dpd],
      x.[bkrpt_flag**],
      x.[bkrpt_chapter],
      x.[fcl_flag],
      x.[reo_flag],
      x.[dq_hist_12],
      x.[charge_off_flag],
      x.[charge_off_amt],
      x.[recovery_amt],
      x.[ffeic_writedown],
      x.[nbr_of_times_30_days_delinquent_life_of_loan],
      x.[nbr_of_times_60_days_delinquent_life_of_loan],
      x.[nbr_of_times_90_days_delinquent_life_of_loan],
      x.[nbr_of_times_120_days_delinquent_life_of_loan],
      x.[nbr_of_times_180_days_delinquent_life_of_loan],
      x.[tdr_flag],
      x.[bankruptcy_file_date],
      x.[fore_start_date],
      x.[fore_sale_date],
      x.[date_reo],
      x.[mod_flag],
      x.[tdr_hist_flag],
      x.[tdr_impairment_amt],
      x.[mod_type],
      x.[mod_date],
      x.[nbr_times_mod],
      x.[latest_mod_date],
      x.[mod_rate],
      x.[mod_mat_date],
      x.[mod_forgive_bal],
      x.[mod_forborne_bal],
      x.[mod_pni],
      x.[mod_orig_loan_id],
      x.[dq_bkt_mod],
      x.[refresh_ltv_mod],
      x.[rate_pre_mod],
      x.[mod_bal],
      x.[pmt_pre_mod],
      x.[pmt_post_mod],
      x.[int_rate_index],
      x.[first_reset_freq],
      x.[subseq_reset_freq],
      x.[int_gross_margin],
      x.[rate_life_cap],
      x.[rate_life_floor],
      x.[rate_first_cap],
      x.[rate_subseq_cap],
      x.[rate_first_floor],
      x.[rate_subseq_floor],
      x.[first_rate_adj_date],
      x.[next_rate_adj_date],
      x.[mtr_rate_adj],
      x.[neg_am_flag],
      x.[neg_am_cap],
      x.[option_arm_flag],
      x.[recast_term],
      x.[net_margin],
      x.[arm_initial_rate],
      x.[first_pmt_adj_date],
      x.[nxt_pmt_adj_date],
      x.[back_days],
      x.[orig_mi_coverage],
      x.[mi_company],
      x.[orig_cred_limit],
      x.[credit_closed_flag],
      x.[credit_frozen_flag],
      x.[credit_limit_change_action],
      x.[draw_period],
      x.[repay_period],
      x.[he_type],
      x.[curr_ut_ratio],
      x.[date_line_changed],
      x.[date_line_closed],
      x.[mtr_pmt_adj],
      x.[business_account_flag],
      x.[exit_type],
      x.[conform_curr_dq_bkt],
      x.[conform_curr_loan_status],
      x.[conform_dq_bkt_mod],
      x.[conform_doc_type],
      x.[conform_int_rate_index],
      x.[conform_int_rate_type],
      x.[conform_loan_purpose],
      x.[conform_loan_type],
      x.[conform_mod_type],
      x.[conform_occ_type],
      x.[conform_product_type],
      x.[conform_property_type],
      x.[ASAP_ROW_HASH],
      x.[ASAP_DML_FLAG],
      x.[ASAP_CREATED_DATE],
      x.[ASAP_UPDATED_DATE],
      x.[ASAP_LINEAGE_ID],
      x.[ASAP_ACTIVITY_ID],
      x.[ASAP_TRIGGER_ID],
      x.[ASAP_SRC_FILEPATH],
      x.[ASAP_SRC_FILE_DATE],
      x.[ASAP_SRC_NAME]
   FROM [clt_AssetAcq].[PenFed_Monthly] x
   WHERE x.[ASAP_DeleteDateTime] IS NULL
;
GO

