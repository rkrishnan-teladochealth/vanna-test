CREATE TABLE data_science_edw.dim_organization (
    org_key integer NOT NULL ENCODE raw,
    group_id integer NOT NULL ENCODE raw,
    legacy_group_id integer NOT NULL ENCODE raw,
    group_nm character varying(1020) NOT NULL ENCODE lzo,
    source_group_id character varying(4000) ENCODE lzo,
    group_effective_start_dt date NOT NULL ENCODE az64,
    group_effective_end_dt date ENCODE az64,
    group_registration_pri_fee_member numeric(12,2) ENCODE az64,
    group_registration_pri_fee_company numeric(12,2) ENCODE az64,
    group_registration_dep_fee_member numeric(12,2) ENCODE az64,
    group_registration_dep_fee_company numeric(12,2) ENCODE az64,
    group_consult_fee_member numeric(12,2) ENCODE az64,
    group_consult_fee_company numeric(12,2) ENCODE az64,
    group_membership_fee_cd character varying(160) ENCODE bytedict,
    group_membership_fee numeric(12,2) ENCODE az64,
    reseller_fee numeric(12,2) ENCODE az64,
    primary_source_cd character varying(160) ENCODE bytedict,
    primary_source_nm character varying(240) ENCODE bytedict,
    primary_minimum_age integer ENCODE az64,
    dependent_source_cd character varying(160) ENCODE lzo,
    dependent_source_nm character varying(240) ENCODE lzo,
    dependent_minimum_age integer ENCODE az64,
    card_nm character varying(1020) ENCODE lzo,
    send_ccr_to_pcp_flg character(1) ENCODE lzo,
    welcome_kit_send_card_flg character(1) ENCODE lzo,
    print_url character varying(1020) ENCODE lzo,
    print_phone character varying(240) ENCODE lzo,
    logo_filename character varying(1020) ENCODE lzo,
    mail_class character varying(240) ENCODE lzo,
    campaign_group_opt_out_flg character(1) ENCODE lzo,
    sales_rep_id integer ENCODE az64,
    sales_rep_first_nm character varying(240) ENCODE lzo,
    sales_rep_last_nm character varying(240) ENCODE lzo,
    account_manager_id integer ENCODE az64,
    account_manager_first_nm character varying(240) ENCODE lzo,
    account_manager_last_nm character varying(240) ENCODE lzo,
    group_org_level_nbr integer NOT NULL ENCODE az64,
    group_org_id integer ENCODE raw,
    master_org_id integer ENCODE az64,
    master_org_nm character varying(1020) ENCODE lzo,
    master_account_id integer ENCODE az64,
    master_account_nm character varying(1020) ENCODE lzo,
    company_id integer ENCODE raw,
    company_nm character varying(1020) ENCODE lzo,
    organization_id1 integer ENCODE az64,
    organization_nm1 character varying(1020) ENCODE lzo,
    organization_id2 integer ENCODE raw,
    organization_nm2 character varying(1020) ENCODE lzo,
    organization_id3 integer ENCODE raw,
    organization_nm3 character varying(1020) ENCODE lzo,
    organization_id4 integer ENCODE az64,
    organization_nm4 character varying(1020) ENCODE lzo,
    organization_id5 integer ENCODE az64,
    organization_nm5 character varying(1020) ENCODE lzo,
    organization_id6 integer ENCODE az64,
    organization_nm6 character varying(1020) ENCODE lzo,
    organization_id7 integer ENCODE az64,
    organization_nm7 character varying(1020) ENCODE lzo,
    organization_id8 integer ENCODE az64,
    organization_nm8 character varying(1020) ENCODE lzo,
    organization_id9 integer ENCODE az64,
    organization_nm9 character varying(1020) ENCODE lzo,
    organization_id10 integer ENCODE az64,
    organization_nm10 character varying(1020) ENCODE lzo,
    organization_id11 integer ENCODE az64,
    organization_nm11 character varying(1020) ENCODE lzo,
    organization_id12 integer ENCODE az64,
    organization_nm12 character varying(1020) ENCODE lzo,
    billing_org_id integer ENCODE raw,
    billing_id integer ENCODE az64,
    invoice_nm character varying(240) ENCODE lzo,
    finance_nm character varying(240) ENCODE lzo,
    billing_regards_to character varying(240) ENCODE lzo,
    billing_address_line1 character varying(1020) ENCODE lzo,
    billing_address_line2 character varying(1020) ENCODE lzo,
    billing_city_nm character varying(240) ENCODE lzo,
    billing_state_province_cd character varying(80) ENCODE lzo,
    billing_state_province_nm character varying(240) ENCODE lzo,
    billing_postal character varying(80) ENCODE lzo,
    billing_first_nm character varying(240) ENCODE lzo,
    billing_last_nm character varying(240) ENCODE lzo,
    billing_eligible_date_of_month integer ENCODE az64,
    headquarters_address_line1 character varying(1020) ENCODE lzo,
    headquarters_address_line2 character varying(1020) ENCODE lzo,
    headquarters_city_nm character varying(240) ENCODE lzo,
    headquarters_state_province_cd character varying(80) ENCODE lzo,
    headquarters_state_province_nm character varying(240) ENCODE bytedict,
    headquarters_postal character varying(80) ENCODE lzo,
    utilization_report_email_to character varying(4000) ENCODE lzo,
    utilization_report_email_bcc character varying(4000) ENCODE lzo,
    utilization_report_effective_start_dt date ENCODE az64,
    utilization_report_bucket_email_to character varying(4000) ENCODE lzo,
    utilization_report_bucket_email_bcc character varying(4000) ENCODE lzo,
    utilization_report_bucket_effective_start_dt date ENCODE az64,
    primary_contact_first_nm character varying(240) ENCODE lzo,
    primary_contact_last_nm character varying(240) ENCODE lzo,
    primary_contact_phone character varying(240) ENCODE lzo,
    primary_contact_email character varying(1020) ENCODE lzo,
    decision_maker_first_nm character varying(240) ENCODE lzo,
    decision_maker_last_nm character varying(240) ENCODE lzo,
    decision_maker_phone character varying(240) ENCODE lzo,
    decision_maker_email character varying(1020) ENCODE lzo,
    source_nm character varying(240) NOT NULL ENCODE raw,
    logical_delete_flg character(1) NOT NULL ENCODE lzo,
    created_at timestamp without time zone NOT NULL ENCODE az64,
    created_by character varying(20) NOT NULL ENCODE lzo,
    updated_by character varying(20) NOT NULL ENCODE lzo,
    updated_at timestamp without time zone NOT NULL ENCODE az64,
    allow_conversion_to_retail_flg character(1) NOT NULL ENCODE lzo,
    group_type_cd character varying(160) NOT NULL ENCODE lzo,
    group_type_nm character varying(240) NOT NULL ENCODE lzo,
    client_segment_cd character varying(160) ENCODE lzo,
    client_segment_nm character varying(1020) ENCODE lzo,
    client_subsegment_cd character varying(160) ENCODE raw,
    client_subsegment_nm character varying(1020) ENCODE lzo,
    billing_org_nm character varying(1020) ENCODE lzo,
    consult_reimbursement_method_cd character varying(160) ENCODE lzo,
    consult_reimbursement_method_nm character varying(1020) ENCODE bytedict,
    risk_contract_flg character(1) ENCODE lzo,
    broker_id integer ENCODE az64,
    broker_nm character varying(1020) ENCODE lzo,
    invoice_email_address character varying(1020) ENCODE lzo,
    employer_organization_id integer ENCODE az64,
    employer_organization_nm character varying(1020) ENCODE lzo,
    broker_effective_start_dt date ENCODE az64,
    broker_effective_end_dt date ENCODE az64,
    group_created_dt date ENCODE az64,
    group_membership_fee_nm character varying(1020) ENCODE lzo,
    directmail_optout_cd character varying(160) ENCODE lzo,
    directmail_approval_start_dt date ENCODE az64,
    directmail_approval_end_dt date ENCODE az64,
    email_optout_cd character varying(160) ENCODE lzo,
    email_approval_start_dt date ENCODE az64,
    email_approval_end_dt date ENCODE az64,
    incentive_optout_cd character varying(160) ENCODE lzo,
    incentive_optout_start_dt date ENCODE az64,
    incentive_optout_end_dt date ENCODE az64,
    outbound_optout_cd character varying(160) ENCODE lzo,
    outbound_approval_start_dt date ENCODE az64,
    outbound_approval_end_dt date ENCODE az64,
    sms_optout_cd character varying(160) ENCODE lzo,
    sms_approval_start_dt date ENCODE az64,
    sms_approval_end_dt date ENCODE az64,
    welcome_kit_retro_flg character(1) ENCODE lzo,
    welcome_kit_retro_dt date ENCODE az64,
    welcome_kit_send_dt_setting date ENCODE az64,
    print_template_id character varying(240) ENCODE lzo,
    accnt_manager_company character varying(1020) ENCODE lzo,
    accnt_manager_master_accnt character varying(1020) ENCODE lzo,
    accnt_manager_master_organization character varying(1020) ENCODE lzo,
    organization_id_marketing integer ENCODE az64,
    organization_nm_marketing character varying(1020) ENCODE lzo,
    accnt_manager_updt_dt date ENCODE az64,
    accnt_manager_group_to_level5 character varying(1020) ENCODE lzo,
    accnt_manager_group_to_level6 character varying(1020) ENCODE lzo,
    accnt_manager_group_to_level7 character varying(1020) ENCODE lzo,
    member_pay_cd character varying(160) ENCODE lzo,
    member_pay_nm character varying(1020) ENCODE lzo,
    line_of_business_cd character varying(160) NOT NULL ENCODE bytedict,
    line_of_business_nm character varying(1020) NOT NULL ENCODE lzo,
    domestic_country_cd character varying(160) NOT NULL ENCODE lzo,
    domestic_country_nm character varying(1020) NOT NULL ENCODE lzo,
    source_plan_sponsor character varying(1020) ENCODE lzo,
    market_segment_nm character varying(1020) ENCODE lzo,
    standard_service_level character varying(240) ENCODE lzo,
    vip_service_level character varying(240) ENCODE lzo,
    allow_sla_reimbursement_flg character(1) ENCODE lzo,
    reporting_state_cd character varying(160) ENCODE lzo,
    reporting_state_nm character varying(240) ENCODE lzo,
    chronic_care_reg_cd character varying(240) ENCODE lzo,
    chronic_care_client_cd character varying(240) ENCODE lzo,
    chronic_care_referral_flg character(1) ENCODE lzo,
    chronic_care_joint_eligibility_flg character(1) ENCODE lzo,
    pg_flg character(1) ENCODE lzo,
    src_row_hash character varying(256) NOT NULL ENCODE lzo,
    tgt_row_hash character varying(256) NOT NULL ENCODE lzo,
    one_app_flg character varying(4) ENCODE lzo,
    in_home_rx_delivery_flg character varying(4) ENCODE lzo,
    PRIMARY KEY (org_key)
)
DISTSTYLE ALL
SORTKEY ( source_nm, client_subsegment_cd, line_of_business_cd, updated_at, organization_id2, billing_org_id, organization_id3, company_id, group_org_id, org_key, group_id, legacy_group_id );
