CREATE TABLE data_sciences.br_aggregate_program_enrollment_daily (
date_utc date ENCODE az64 distkey,
aggregate_value character varying(2059) ENCODE raw,
type character varying(64) ENCODE raw,
program character varying(32) ENCODE lzo,
min_launch_date date ENCODE az64,
total_imputed_recruitable_population bigint ENCODE az64,
total_enrolled bigint ENCODE az64,
total_enrolled_not_deactivated_not_lapsed bigint ENCODE az64,
pct_enrolled_not_deactivated_not_lapsed numeric(19,2) ENCODE az64,
total_lapsed bigint ENCODE az64,
total_deactivated bigint ENCODE az64,
total_activated bigint ENCODE az64,
pct_activated numeric(19,2) ENCODE az64,
scorecard boolean ENCODE raw,
business_review boolean ENCODE raw
)
DISTSTYLE KEY
SORTKEY ( date_utc, type, aggregate_value );

commont on table data_sciences.br_aggregate_program_enrollment_daily is 'Aggregate table for Solution Level Enrollment Trends';
comment on column data_sciences.br_aggregate_program_enrollment_daily.date_utc is 'The program metrics for each row are evaluated as of the end of this date in the UTC time zone.';
comment on column data_sciences.br_aggregate_program_enrollment_daily.aggregate_value is 'Unique aggregation ';
comment on column data_sciences.br_aggregate_program_enrollment_daily.type is 'Account type associated with the Program - Client Account/Industry/Billing Partner';
comment on column data_sciences.br_aggregate_program_enrollment_daily.program is 'Standard program names from SFDC:  "Diabetes", "Hypertension"';
comment on column data_sciences.br_aggregate_program_enrollment_daily.min_launch_date is 'The "minimum launch date for the client''s program';
comment on column data_sciences.br_aggregate_program_enrollment_daily.total_imputed_recruitable_population is ' Total number of individuals who are considered available or eligible for recruitment into CCM Programs';
comment on column data_sciences.br_aggregate_program_enrollment_daily.total_enrolled is 'Total number of individuals who are enrolled into CCM Programs';
comment on column data_sciences.br_aggregate_program_enrollment_daily.total_enrolled_not_deactivated_not_lapsed is 'Total number of individuals who are enrolled into CCM Programs and are active(not having deactivated account nor lapsed)';
comment on column data_sciences.br_aggregate_program_enrollment_daily.pct_enrolled_not_deactivated_not_lapsed is 'Percentage of individuals who are enrolled into CCM Programs and are active(not having deactivated account nor lapsed)';
comment on column data_sciences.br_aggregate_program_enrollment_daily.total_lapsed is 'Total number of individuals who are enrolled into CCM Programs but have lapsed';
comment on column data_sciences.br_aggregate_program_enrollment_daily.total_deactivated is 'Total number of individuals who are enrolled into CCM Programs but have deactivated their accounts';
comment on column data_sciences.br_aggregate_program_enrollment_daily.total_activated is 'Total number of individuals who are enrolled into CCM Programs and are having active accounts';
comment on column data_sciences.br_aggregate_program_enrollment_daily.pct_activated is 'Percentage of individuals who are enrolled into CCM Programs and are having active accounts';
comment on column data_sciences.br_aggregate_program_enrollment_daily.scorecard is 'Flag that determines if the client is eligible for receiving CCM scorecard or not';
comment on column data_sciences.br_aggregate_program_enrollment_daily.business_review is 'Flag that determines if the client is eligible for receiving a business review';

