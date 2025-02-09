CREATE TABLE data_science_edw.monthly_case_activity_snapshot (
    monthly_case_activity_snapshot_id integer NOT NULL ENCODE az64 distkey,
    snapshot_start_dt date NOT NULL ENCODE az64,
    snapshot_end_dt date NOT NULL ENCODE az64,
    clientnm_parent character varying(1020) NOT NULL ENCODE lzo,
    clientnm_orig_parent character varying(1020) NOT NULL ENCODE lzo,
    clientnm_orig_parent_id character varying(240) NOT NULL ENCODE lzo,
    clientnm_child character varying(1020) NOT NULL ENCODE lzo,
    clientnm_orig_child character varying(1020) NOT NULL ENCODE lzo,
    clientnm_orig_child_id character varying(240) NOT NULL ENCODE lzo,
    business_unit character varying(80) NOT NULL ENCODE bytedict,
    business_unit_case character varying(80) ENCODE bytedict,
    service_line_cd character varying(160) NOT NULL ENCODE bytedict,
    service_line_nm character varying(240) NOT NULL ENCODE bytedict,
    onward_flg character varying(80) NOT NULL ENCODE bytedict,
    watson_oncology_flg character varying(80) NOT NULL ENCODE bytedict,
    case_category character varying(240) NOT NULL ENCODE bytedict,
    member_cntry_cd character varying(160) NOT NULL ENCODE lzo,
    member_cntry_nm character varying(240) NOT NULL ENCODE lzo,
    member_state_cd character varying(160) NOT NULL ENCODE lzo,
    member_state_nm character varying(240) NOT NULL ENCODE raw,
    age_group character varying(160) NOT NULL ENCODE bytedict,
    gender character varying(80) NOT NULL ENCODE bytedict,
    relationship character varying(1020) NOT NULL ENCODE bytedict,
    integration_category character varying(160) NOT NULL ENCODE bytedict,
    call_origin character varying(240) NOT NULL ENCODE bytedict,
    how_client_heard_about_us character varying(240) NOT NULL ENCODE bytedict,
    specialty character varying(240) NOT NULL ENCODE bytedict,
    call_reason character varying(240) NOT NULL ENCODE bytedict,
    business_region_derived character varying(1020) NOT NULL ENCODE bytedict,
    business_region character varying(1020) NOT NULL ENCODE bytedict,
    opened_call_log_pri_cnt integer ENCODE az64,
    opened_call_log_dep_cnt integer ENCODE az64,
    opened_case_pri_cnt integer ENCODE az64,
    opened_case_dep_cnt integer ENCODE az64,
    cancelled_case_pri_cnt integer ENCODE az64,
    cancelled_case_dep_cnt integer ENCODE az64,
    ongoing_case_pri_itd_cnt integer ENCODE az64,
    ongoing_case_dep_itd_cnt integer ENCODE az64,
    close_case_cnt integer ENCODE az64,
    close_case_pri_cnt integer ENCODE az64,
    close_case_dep_cnt integer ENCODE az64,
    case_life_days_pri_cnt integer ENCODE az64,
    case_life_days_dep_cnt integer ENCODE az64,
    survey_satisfied_response_pri_cnt integer ENCODE az64,
    survey_satisfied_response_dep_cnt integer ENCODE az64,
    survey_not_satisfied_response_pri_cnt integer ENCODE az64,
    survey_not_satisfied_response_dep_cnt integer ENCODE az64,
    genomics_case_pri_cnt integer ENCODE az64,
    genomics_case_dep_cnt integer ENCODE az64,
    clinical_trial_match_case_pri_cnt integer ENCODE az64,
    clinical_trial_match_case_dep_cnt integer ENCODE az64,
    watson_oncology_case_pri_cnt integer ENCODE az64,
    watson_oncology_case_dep_cnt integer ENCODE az64,
    search_pri_cnt integer ENCODE az64,
    search_dep_cnt integer ENCODE az64,
    source_nm character varying(240) NOT NULL ENCODE bytedict,
    row_hash character varying(240) NOT NULL ENCODE lzo,
    exclusion_comment character varying(1020) ENCODE bytedict,
    exclusion_cd character varying(160) NOT NULL ENCODE bytedict,
    created_at timestamp without time zone NOT NULL ENCODE az64,
    created_by character varying(80) NOT NULL ENCODE lzo,
    updated_at timestamp without time zone NOT NULL ENCODE az64,
    updated_by character varying(80) NOT NULL ENCODE lzo,
    src_row_hash character varying(256) ENCODE lzo,
    tgt_row_hash character varying(256) ENCODE lzo,
    PRIMARY KEY (monthly_case_activity_snapshot_id)
)
DISTSTYLE KEY
SORTKEY ( member_state_nm, member_cntry_nm, call_origin, row_hash, gender, exclusion_cd, service_line_cd, snapshot_start_dt, source_nm, service_line_nm, age_group, integration_category, watson_oncology_flg, case_category, clientnm_orig_child, onward_flg, relationship, member_state_cd, clientnm_orig_parent_id, snapshot_end_dt, member_cntry_cd, clientnm_child, clientnm_parent, clientnm_orig_child_id, clientnm_orig_parent, business_unit );