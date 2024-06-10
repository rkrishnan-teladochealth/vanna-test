CREATE TABLE data_sciences.br_aggregate_mys_coaching_digital_recommendation (
    date_utc date ENCODE az64 distkey,
    aggregate_value character varying(2059) ENCODE raw,
    type character varying(64) ENCODE raw,
    program character varying(32) ENCODE raw,
    primary_need character varying(64) ENCODE lzo,
    coaching_recommendation_count bigint ENCODE az64,
    total_coaching_recommendation_count bigint ENCODE az64,
    coaching_recommendation_pct numeric(19,2) ENCODE az64,
    rn_coaching bigint ENCODE az64,
    digital_recommendation_count bigint ENCODE az64,
    total_digital_recommendation_count bigint ENCODE az64,
    digital_recommendation_pct numeric(19,2) ENCODE az64,
    rn_digital bigint ENCODE az64
)
DISTSTYLE KEY
SORTKEY ( date_utc, type, aggregate_value, program );