CREATE TABLE data_sciences.br_aggregate_solution_enrollment_daily (
    date_utc date ENCODE az64 distkey,
    aggregate_value character varying(2059) ENCODE raw,
    type character varying(64) ENCODE raw,
    solution_name character varying(255) ENCODE lzo,
    wp_transition_date date ENCODE az64,
    total_imputed_recruitable_population bigint ENCODE az64,
    total_enrolled bigint ENCODE az64,
    total_enrolled_not_deactivated_not_lapsed bigint ENCODE az64,
    pct_total_enrolled_not_deactivated_not_lapsed numeric(19,2) ENCODE az64,
    total_lapsed bigint ENCODE az64,
    total_activated bigint ENCODE az64,
    pct_total_activated numeric(19,2) ENCODE az64,
    total_deactivated bigint ENCODE az64,
    total_dm bigint ENCODE az64,
    total_htn bigint ENCODE az64,
    total_dpp bigint ENCODE az64,
    total_wm bigint ENCODE az64,
    total_bh bigint ENCODE az64,
    total_hf bigint ENCODE az64,
    total_anchor_0 bigint ENCODE az64,
    total_anchor_1 bigint ENCODE az64,
    total_anchor_2 bigint ENCODE az64,
    total_anchor_3 bigint ENCODE az64,
    scorecard boolean ENCODE raw,
    business_review boolean ENCODE raw
)
DISTSTYLE KEY
SORTKEY ( date_utc, type, aggregate_value );