CREATE TABLE data_science_edw.monthly_case_costing_snapshot (
    monthly_case_costing_snapshot_id integer NOT NULL ENCODE az64 distkey,
    snapshot_start_dt date NOT NULL ENCODE az64,
    snapshot_end_dt date NOT NULL ENCODE az64,
    clientnm_parent character varying(1020) NOT NULL ENCODE lzo,
    clientnm_orig_parent character varying(1020) NOT NULL ENCODE lzo,
    clientnm_orig_parent_id character varying(240) NOT NULL ENCODE lzo,
    clientnm_child character varying(1020) NOT NULL ENCODE lzo,
    clientnm_orig_child character varying(1020) NOT NULL ENCODE lzo,
    clientnm_orig_child_id character varying(240) NOT NULL ENCODE lzo,
    business_unit character varying(80) NOT NULL ENCODE raw,
    business_unit_case character varying(80) ENCODE lzo,
    service_line_cd character varying(160) NOT NULL ENCODE bytedict,
    service_line_nm character varying(240) NOT NULL ENCODE bytedict,
    onward_flg character varying(80) NOT NULL ENCODE raw,
    watson_oncology_flg character varying(80) NOT NULL ENCODE raw,
    case_category character varying(240) NOT NULL ENCODE bytedict,
    member_cntry_cd character varying(160) NOT NULL ENCODE lzo,
    member_cntry_nm character varying(240) NOT NULL ENCODE lzo,
    member_state_cd character varying(160) NOT NULL ENCODE lzo,
    member_state_nm character varying(240) NOT NULL ENCODE raw,
    age_group character varying(160) NOT NULL ENCODE bytedict,
    gender character varying(80) NOT NULL ENCODE bytedict,
    relationship character varying(1020) NOT NULL ENCODE bytedict,
    integration_category character varying(160) NOT NULL ENCODE bytedict,
    diagnosis_condition_category character varying(160) NOT NULL ENCODE bytedict,
    diagnosis_condition_nm character varying(1020) NOT NULL ENCODE bytedict,
    business_region_derived character varying(1020) NOT NULL ENCODE lzo,
    business_region character varying(1020) NOT NULL ENCODE lzo,
    close_case_pri_cnt integer ENCODE az64,
    close_case_dep_cnt integer ENCODE az64,
    total_savings_amt numeric(18,2) ENCODE az64,
    savings_pri_amt numeric(18,2) ENCODE az64,
    savings_dep_amt numeric(18,2) ENCODE az64,
    treatment_change_pri_cnt integer ENCODE az64,
    treatment_change_dep_cnt integer ENCODE az64,
    treatment_no_change_pri_cnt integer ENCODE az64,
    treatment_no_change_dep_cnt integer ENCODE az64,
    diagnosis_change_pri_cnt integer ENCODE az64,
    diagnosis_change_dep_cnt integer ENCODE az64,
    diagnosis_no_change_pri_cnt integer ENCODE az64,
    diagnosis_no_change_dep_cnt integer ENCODE az64,
    surgery_avoided_pri_cnt integer ENCODE az64,
    surgery_avoided_dep_cnt integer ENCODE az64,
    absence_avoided_pri_cnt integer ENCODE az64,
    absence_avoided_dep_cnt integer ENCODE az64,
    survey_satisfied_pri_cnt integer ENCODE az64,
    survey_satisfied_dep_cnt integer ENCODE az64,
    survey_not_satisfied_pri_cnt integer ENCODE az64,
    survey_not_satisfied_dep_cnt integer ENCODE az64,
    impact_case_complete_pri_cnt integer ENCODE az64,
    impact_case_complete_dep_cnt integer ENCODE az64,
    closed_case_impact_complete_pri_cnt integer ENCODE az64,
    closed_case_impact_complete_dep_cnt integer ENCODE az64,
    source_nm character varying(240) NOT NULL ENCODE raw,
    row_hash character varying(240) NOT NULL ENCODE lzo,
    exclusion_comment character varying(1020) ENCODE lzo,
    exclusion_cd character varying(160) NOT NULL ENCODE raw,
    created_at timestamp without time zone NOT NULL ENCODE az64,
    created_by character varying(80) NOT NULL ENCODE lzo,
    updated_at timestamp without time zone NOT NULL ENCODE az64,
    updated_by character varying(80) NOT NULL ENCODE lzo,
    src_row_hash character varying(256) ENCODE lzo,
    tgt_row_hash character varying(256) ENCODE lzo,
    PRIMARY KEY (monthly_case_costing_snapshot_id)
)
DISTSTYLE KEY
SORTKEY ( member_state_nm, member_cntry_nm, row_hash, gender, exclusion_cd, diagnosis_condition_category, service_line_cd, source_nm, snapshot_start_dt, service_line_nm, age_group, integration_category, watson_oncology_flg, case_category, clientnm_orig_child, diagnosis_condition_nm, onward_flg, relationship, member_state_cd, clientnm_orig_parent_id, snapshot_end_dt, member_cntry_cd, clientnm_child, clientnm_parent, clientnm_orig_child_id, clientnm_orig_parent, business_unit );