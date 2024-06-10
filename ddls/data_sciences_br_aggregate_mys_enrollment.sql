CREATE TABLE data_sciences.br_aggregate_mys_enrollment (
    aggregate_value character varying(500) ENCODE lzo,
    type character varying(64) ENCODE lzo,
    date_month date ENCODE az64,
    monthly_enrollment_count bigint ENCODE az64,
    cumulative_enrollment bigint ENCODE az64,
    monthly_activation_count bigint ENCODE az64,
    cumulative_active bigint ENCODE az64
)
DISTSTYLE AUTO;