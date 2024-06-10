CREATE TABLE data_science_edw.dim_service (
    service_key integer NOT NULL ENCODE az64,
    service_family_cd character varying(160) NOT NULL ENCODE lzo,
    service_family_nm character varying(240) NOT NULL ENCODE lzo,
    service_offering_cd character varying(160) NOT NULL ENCODE lzo,
    service_offering_nm character varying(240) NOT NULL ENCODE lzo,
    service_specialty_cd character varying(160) NOT NULL ENCODE lzo,
    service_specialty_nm character varying(240) NOT NULL ENCODE lzo,
    source_nm character varying(240) NOT NULL ENCODE lzo,
    created_at timestamp without time zone NOT NULL ENCODE az64,
    created_by character varying(20) NOT NULL ENCODE lzo,
    updated_at timestamp without time zone NOT NULL ENCODE az64,
    updated_by character varying(20) NOT NULL ENCODE lzo,
    servicing_platform_cd character varying(160) ENCODE lzo,
    service_id character varying(80) ENCODE lzo,
    service_desc character varying(1000) ENCODE lzo,
    admin_service_cd character varying(160) ENCODE lzo,
    src_row_hash character varying(256) NOT NULL ENCODE lzo,
    tgt_row_hash character varying(256) NOT NULL ENCODE lzo,
    PRIMARY KEY (service_key)
)
DISTSTYLE ALL;