CREATE TABLE data_sciences.br_aggregate_device_engagement (
date_utc date ENCODE az64 distkey,
aggregate_value character varying(2059) ENCODE raw,
type character varying(64) ENCODE raw,
program character varying(32) ENCODE raw,
total_enrolled_not_deactivated_not_lapsed bigint ENCODE az64,
total_bg_check_count_7day bigint ENCODE az64,
total_bg_check_count_30day bigint ENCODE az64,
total_bg_check_count_90day bigint ENCODE az64,
total_bg_checked_7day bigint ENCODE az64,
total_bg_checked_30day bigint ENCODE az64,
total_bg_checked_90day bigint ENCODE az64,
pct_bg_checked_7day numeric(19,2) ENCODE az64,
pct_bg_checked_30day numeric(19,2) ENCODE az64,
pct_bg_checked_90day numeric(19,2) ENCODE az64,
avg_bg_check_count_7day numeric(4,0) ENCODE az64,
avg_bg_check_count_30day numeric(4,0) ENCODE az64,
avg_bg_check_count_90day numeric(4,0) ENCODE az64,
total_bg_hyper_count_7day bigint ENCODE az64,
total_bg_hyper_count_30day bigint ENCODE az64,
total_bg_hyper_count_90day bigint ENCODE az64,
total_bg_hypo_count_7day bigint ENCODE az64,
total_bg_hypo_count_30day bigint ENCODE az64,
total_bg_hypo_count_90day bigint ENCODE az64,
avg_bg_days_checked_frequency_90day numeric(4,0) ENCODE az64,
total_bp_readings_count_7day bigint ENCODE az64,
total_bp_readings_count_30day bigint ENCODE az64,
total_bp_readings_count_90day bigint ENCODE az64,
total_bp_checked_7day bigint ENCODE az64,
total_bp_checked_30day bigint ENCODE az64,
total_bp_checked_90day bigint ENCODE az64,
pct_bp_checked_7day numeric(19,2) ENCODE az64,
pct_bp_checked_30day numeric(19,2) ENCODE az64,
pct_bp_checked_90day numeric(19,2) ENCODE az64,
avg_bp_readings_count_7day numeric(4,0) ENCODE az64,
avg_bp_readings_count_30day numeric(4,0) ENCODE az64,
avg_bp_readings_count_90day numeric(4,0) ENCODE az64,
avg_bp_diastolic_7day numeric(4,0) ENCODE az64,
avg_bp_diastolic_30day numeric(4,0) ENCODE az64,
avg_bp_diastolic_90day numeric(4,0) ENCODE az64,
avg_bp_systolic_7day numeric(4,0) ENCODE az64,
avg_bp_systolic_30day numeric(4,0) ENCODE az64,
avg_bp_systolic_90day numeric(4,0) ENCODE az64,
total_bp_readings_systolic_above_range_count_7day bigint ENCODE az64,
total_bp_readings_systolic_above_range_count_30day bigint ENCODE az64,
total_bp_readings_systolic_above_range_count_90day bigint ENCODE az64,
total_bp_readings_systolic_in_range_count_7day bigint ENCODE az64,
total_bp_readings_systolic_in_range_count_30day bigint ENCODE az64,
total_bp_readings_systolic_in_range_count_90day bigint ENCODE az64,
avg_bp_days_checked_frequency_90day numeric(4,0) ENCODE az64,
total_weights_count_7day bigint ENCODE az64,
total_weights_count_30day bigint ENCODE az64,
total_weights_count_90day bigint ENCODE az64,
total_weights_checked_7day bigint ENCODE az64,
total_weights_checked_30day bigint ENCODE az64,
total_weights_checked_90day bigint ENCODE az64,
pct_weight_checked_7day numeric(19,2) ENCODE az64,
pct_weight_checked_30day numeric(19,2) ENCODE az64,
pct_weight_checked_90day numeric(19,2) ENCODE az64,
avg_weight_7day numeric(19,2) ENCODE az64,
avg_weight_30day numeric(19,2) ENCODE az64,
avg_weight_90day numeric(19,2) ENCODE az64,
avg_weight_days_checked_frequency_90day numeric(4,0) ENCODE az64,
avg_all_device_activities_7day numeric(4,0) ENCODE az64,
avg_all_device_activities_30day numeric(4,0) ENCODE az64,
avg_all_device_activities_90day numeric(4,0) ENCODE az64,
total_device_activities_checked_7day bigint ENCODE az64,
total_device_activities_checked_30day bigint ENCODE az64,
total_device_activities_checked_90day bigint ENCODE az64,
pct_device_activities_checked_7day numeric(19,2) ENCODE az64,
pct_device_activities_checked_30day numeric(19,2) ENCODE az64,
pct_device_activities_checked_90day numeric(19,2) ENCODE az64
)
DISTSTYLE KEY
SORTKEY ( date_utc, type, aggregate_value, program );

comment on table data_sciences.br_aggregate_device_engagement is 'Aggregate table for BG/BP/WM Device Engagement';
comment on column data_sciences.br_aggregate_device_engagement.date_utc is 'The UTC date for the device engagement aggregates being summarized for each solution';
comment on column data_sciences.br_aggregate_device_engagement.aggregate_value is  'Derived client name computed using taglist';
comment on column data_sciences.br_aggregate_device_engagement.type is 'Type of client populated such as Billing Partner,DownMarket Client etc';
comment on column data_sciences.br_aggregate_device_engagement.program is 'Standard program names from SFDC:  "Diabetes", "Hypertension"';
comment on column data_sciences.br_aggregate_device_engagement.total_enrolled_not_deactivated_not_lapsed is 'Total number of individuals who are enrolled into CCM Programs and are active(not having deactivated account nor lapsed)';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_check_count_7day is 'The number of BG checks successfully performed on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_check_count_30day is 'The number of BG checks successfully performed on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_check_count_90day is 'The number of BG checks successfully performed on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_checked_7day is 'The number of BG checks successfully performed on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_checked_30day is 'The number of BG checks successfully performed on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_checked_90day is 'The number of BG checks successfully performed on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_bg_checked_7day is 'Percentage of BG checks successfully performed on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_bg_checked_30day is 'Percentage of BG checks successfully performed on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_bg_checked_90day is 'Percentage of BG checks successfully performed on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bg_check_count_7day is 'Average BG checks successfully performed on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bg_check_count_30day is 'Average BG checks successfully performed on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bg_check_count_90day is 'Average BG checks successfully performed on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_hyper_count_7day is 'Total Number of BG checks on a connected meter above 180.0 (or 130.0 fasting) in the 7 days ending on this date.';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_hyper_count_30day is 'Total Number of BG checks on a connected meter above 180.0 (or 130.0 fasting) in the 30 days ending on this date.';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_hyper_count_90day is 'Total Number of BG checks on a connected meter above 180.0 (or 130.0 fasting) in the 90 days ending on this date.';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_hypo_count_7day is 'Total Number of BG checks on a connected meter below 70.0 in the 7 days ending on this date.';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_hypo_count_30day is 'Total Number of BG checks on a connected meter below 70.0 in the 30 days ending on this date.';
comment on column data_sciences.br_aggregate_device_engagement.total_bg_hypo_count_90day is 'Total Number of BG checks on a connected meter below 70.0 in the 90 days ending on this date.';
comment on column data_sciences.br_aggregate_device_engagement.avg_bg_days_checked_frequency_90day is 'Average BG checks frequency in the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_readings_count_7day is 'The number of BP reading counts performed on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_readings_count_30day is 'The number of BP reading counts performed on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_readings_count_90day is 'The number of BP reading counts performed on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_checked_7day is 'The number of BP checks successfully performed on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_checked_30day is 'The number of BP checks successfully performed on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_checked_90day is 'The number of BP checks successfully performed on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_bp_checked_7day is  'Percentage of BP checks successfully performed on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_bp_checked_30day is  'Percentage of BP checks successfully performed on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_bp_checked_90day is  'Percentage of BP checks successfully performed on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_readings_count_7day is 'Average BP reading counts performed on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_readings_count_30day is 'Average BP reading counts performed on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_readings_count_90day is 'Average BP reading counts performed on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_diastolic_7day is 'Average BP diastolic recorded on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_diastolic_30day is 'Average BP diastolic recorded on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_diastolic_90day is  'Average BP diastolic recorded on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_systolic_7day is  'Average BP systolic recorded on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_systolic_30day is 'Average BP systolic recorded on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_systolic_90day is 'Average BP systolic recorded on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_readings_systolic_above_range_count_7day is 'Total count of BP systolic above range recorded on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_readings_systolic_above_range_count_30day is 'Total count of BP systolic above range recorded on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_readings_systolic_above_range_count_90day is 'Total count of BP systolic above range recorded on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_readings_systolic_in_range_count_7day is 'Total count of BP systolic in range recorded on a connected meter on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_readings_systolic_in_range_count_30day is 'Total count of BP systolic in range recorded on a connected meter on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_bp_readings_systolic_in_range_count_90day is 'Total count of BP systolic in range recorded on a connected meter on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_bp_days_checked_frequency_90day is 'Average BP days frequency checked in the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_weights_count_7day is 'Total weight count in the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_weights_count_30day is 'Total weight count in the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_weights_count_90day is 'Total weight count in the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_weights_checked_7day is 'Total weight checked recorded in the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_weights_checked_30day is 'Total weight checked recorded in the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_weights_checked_90day is 'Total weight checked recorded in the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_weight_checked_7day is 'Percentage weight recorded in the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_weight_checked_30day is 'Percentage weight recorded in the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_weight_checked_90day is 'Percentage weight recorded in the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_weight_7day is 'Average weight recorded in the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_weight_30day is 'Average weight recorded in the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_weight_90day is 'Average weight recorded in the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_weight_days_checked_frequency_90day is 'Average weight checked frequency in the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_all_device_activities_7day is 'Average of all device activities recorded on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_all_device_activities_30day is 'Average of all device activities recorded on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.avg_all_device_activities_90day is 'Average of all device activities recorded on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_device_activities_checked_7day is 'Total device activities recorded on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_device_activities_checked_30day is 'Total device activities recorded on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.total_device_activities_checked_90day is 'Total device activities recorded on the 90 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_device_activities_checked_7day is 'Percentage of device activities recorded on the 7 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_device_activities_checked_30day is 'Percentage of device activities recorded on the 30 days ending on this date';
comment on column data_sciences.br_aggregate_device_engagement.pct_device_activities_checked_90day is 'Percentage of device activities recorded on the 90 days ending on this date';