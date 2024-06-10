CREATE TABLE nonpii.member_food_logs (
    user_id bigint NOT NULL ENCODE raw distkey,
    user_pid character varying(16) ENCODE lzo,
    user_uuid character(36) NOT NULL ENCODE lzo,
    food_log_id integer ENCODE az64,
    meal_tag character varying(64) ENCODE bytedict,
    note_added boolean ENCODE raw,
    image_uploaded boolean ENCODE raw,
    capture_utc timestamp without time zone ENCODE az64,
    upload_utc timestamp without time zone ENCODE az64,
    update_utc timestamp without time zone ENCODE az64,
    delete_utc timestamp without time zone ENCODE az64,
    create_utc timestamp without time zone ENCODE az64,
    create_tz_offset bigint ENCODE az64,
    image_url character varying(256) ENCODE lzo
)
DISTSTYLE AUTO
SORTKEY ( user_id );