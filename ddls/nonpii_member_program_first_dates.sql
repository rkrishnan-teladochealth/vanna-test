CREATE TABLE nonpii.member_program_first_dates (
    user_id bigint NOT NULL ENCODE raw distkey,
    program character varying(32) NOT NULL ENCODE text255,
    first_registered date NOT NULL ENCODE lzo,
    first_device_shipped date ENCODE lzo,
    first_device_activation date ENCODE lzo,
    first_enrolled date ENCODE lzo,
    first_billable date ENCODE lzo,
    first_network_issue date ENCODE lzo,
    first_activated date ENCODE lzo,
    first_coached date ENCODE lzo
)
DISTSTYLE KEY
SORTKEY ( user_id, program );