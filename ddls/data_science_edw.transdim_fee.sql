CREATE TABLE data_science_edw.transdim_fee (
    fee_key integer NOT NULL ENCODE az64,
    fee_durable_key integer NOT NULL ENCODE az64,
    etl_scd_start_dt date NOT NULL ENCODE az64,
    scd_start_dt date NOT NULL ENCODE az64,
    scd_end_dt date NOT NULL ENCODE az64,
    scd_current_flg character(1) NOT NULL ENCODE raw,
    org_key integer NOT NULL ENCODE raw distkey,
    service_key integer NOT NULL ENCODE az64,
    feature_key integer NOT NULL ENCODE az64,
    payer_cd character varying(160) ENCODE lzo,
    payer_nm character varying(1020) ENCODE lzo,
    payer_id integer ENCODE az64,
    feature_start_dt date ENCODE az64,
    feature_end_dt date ENCODE az64,
    promotion_cd character varying(160) ENCODE lzo,
    promotion_nm character varying(240) ENCODE lzo,
    sku_cd character varying(160) ENCODE lzo,
    sku_nm character varying(1020) ENCODE lzo,
    consult_fee_member_amt numeric(12,2) ENCODE az64,
    consult_fee_company_amt numeric(12,2) ENCODE az64,
    group_membership_fee_cd character varying(160) ENCODE lzo,
    group_membership_fee_amt numeric(12,2) ENCODE az64,
    reseller_fee_amt numeric(12,2) ENCODE az64,
    override_fee_total_amt numeric(12,2) ENCODE az64,
    override_fee_copay_amt numeric(12,2) ENCODE az64,
    override_fee_insurance numeric(12,2) ENCODE az64,
    logical_delete_flg character(1) NOT NULL ENCODE lzo,
    source_nm character varying(240) NOT NULL ENCODE lzo,
    created_at timestamp without time zone NOT NULL ENCODE az64,
    created_by character varying(80) NOT NULL ENCODE lzo,
    updated_at timestamp without time zone NOT NULL ENCODE az64,
    updated_by character varying(80) NOT NULL ENCODE lzo,
    primary_source_cd character varying(240) ENCODE lzo,
    primary_source_nm character varying(1020) ENCODE lzo,
    group_membership_fee_nm character varying(1020) ENCODE lzo,
    consult_reimbursement_method_cd character varying(160) ENCODE lzo,
    consult_reimbursement_method_nm character varying(1020) ENCODE lzo,
    print_or_less_flg character(1) ENCODE lzo,
    min_age integer ENCODE az64,
    max_age integer ENCODE az64,
    bundle_type_cd character varying(160) ENCODE lzo,
    bundle_type_nm character varying(1020) ENCODE lzo,
    org_detail_key integer NOT NULL ENCODE az64,
    org_detail_durable_key integer NOT NULL ENCODE az64,
    src_row_hash character varying(256) ENCODE lzo,
    tgt_row_hash character varying(256) ENCODE lzo
)
DISTSTYLE KEY
SORTKEY ( org_key, source_nm, promotion_cd, sku_cd, scd_current_flg, fee_durable_key, etl_scd_start_dt, scd_end_dt, updated_at, service_key, feature_key, org_detail_key, org_detail_durable_key );