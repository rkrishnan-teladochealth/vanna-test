CREATE TABLE data_sciences.br_aggregate_self_guided_engagement (
date_utc date ENCODE az64 distkey,
aggregate_value character varying(2059) ENCODE raw,
type character varying(64) ENCODE raw,
program character varying(32) ENCODE raw,
total_enrolled_not_deactivated_not_lapsed bigint ENCODE az64,
total_email_opened_count_7day bigint ENCODE az64,
total_email_opened_count_30day bigint ENCODE az64,
total_email_opened_count_90day bigint ENCODE az64,
total_email_opened_checked_7day bigint ENCODE az64,
total_email_opened_checked_30day bigint ENCODE az64,
total_email_opened_checked_90day bigint ENCODE az64,
avg_email_opened_count_7day numeric(19,0) ENCODE az64,
avg_email_opened_count_30day numeric(19,0) ENCODE az64,
avg_email_opened_count_90day numeric(19,0) ENCODE az64,
pct_email_opened_checked_7day numeric(19,2) ENCODE az64,
pct_email_opened_checked_30day numeric(19,2) ENCODE az64,
pct_email_opened_checked_90day numeric(19,2) ENCODE az64,
total_foodlogs_count_7day bigint ENCODE az64,
total_foodlogs_count_30day bigint ENCODE az64,
total_foodlogs_count_90day bigint ENCODE az64,
total_foodlogs_checked_7day bigint ENCODE az64,
total_foodlogs_checked_30day bigint ENCODE az64,
total_foodlogs_checked_90day bigint ENCODE az64,
avg_foodlogs_count_7day numeric(19,0) ENCODE az64,
avg_foodlogs_count_30day numeric(19,0) ENCODE az64,
avg_foodlogs_count_90day numeric(19,0) ENCODE az64,
pct_foodlogs_checked_7day numeric(19,2) ENCODE az64,
pct_foodlogs_checked_30day numeric(19,2) ENCODE az64,
pct_foodlogs_checked_90day numeric(19,2) ENCODE az64,
total_lessons_count_7day bigint ENCODE az64,
total_lessons_count_30day bigint ENCODE az64,
total_lessons_count_90day bigint ENCODE az64,
total_lessons_checked_7day bigint ENCODE az64,
total_lessons_checked_30day bigint ENCODE az64,
total_lessons_checked_90day bigint ENCODE az64,
avg_lessons_count_7day numeric(19,0) ENCODE az64,
avg_lessons_count_30day numeric(19,0) ENCODE az64,
avg_lessons_count_90day numeric(19,0) ENCODE az64,
pct_lessons_checked_7day numeric(19,2) ENCODE az64,
pct_lessons_checked_30day numeric(19,2) ENCODE az64,
pct_lessons_checked_90day numeric(19,2) ENCODE az64,
total_bg_hsr_share_count_7day bigint ENCODE az64,
total_bg_hsr_share_count_30day bigint ENCODE az64,
total_bg_hsr_share_count_90day bigint ENCODE az64,
total_bg_hsr_checked_7day bigint ENCODE az64,
total_bg_hsr_checked_30day bigint ENCODE az64,
total_bg_hsr_checked_90day bigint ENCODE az64,
avg_bg_hsr_share_count_7day numeric(19,0) ENCODE az64,
avg_bg_hsr_share_count_30day numeric(19,0) ENCODE az64,
avg_bg_hsr_share_count_90day numeric(19,0) ENCODE az64,
pct_bg_hsr_checked_7day numeric(19,2) ENCODE az64,
pct_bg_hsr_checked_30day numeric(19,2) ENCODE az64,
pct_bg_hsr_checked_90day numeric(19,2) ENCODE az64,
total_bp_hsr_share_count_7day bigint ENCODE az64,
total_bp_hsr_share_count_30day bigint ENCODE az64,
total_bp_hsr_share_count_90day bigint ENCODE az64,
total_bp_hsr_checked_7day bigint ENCODE az64,
total_bp_hsr_checked_30day bigint ENCODE az64,
total_bp_hsr_checked_90day bigint ENCODE az64,
avg_bp_hsr_share_count_7day numeric(19,0) ENCODE az64,
avg_bp_hsr_share_count_30day numeric(19,0) ENCODE az64,
avg_bp_hsr_share_count_90day numeric(19,0) ENCODE az64,
pct_bp_hsr_checked_7day numeric(19,2) ENCODE az64,
pct_bp_hsr_checked_30day numeric(19,2) ENCODE az64,
pct_bp_hsr_checked_90day numeric(19,2) ENCODE az64,
total_multi_hsr_share_count_7day bigint ENCODE az64,
total_multi_hsr_share_count_30day bigint ENCODE az64,
total_multi_hsr_share_count_90day bigint ENCODE az64,
total_multi_hsr_checked_7day bigint ENCODE az64,
total_multi_hsr_checked_30day bigint ENCODE az64,
total_multi_hsr_checked_90day bigint ENCODE az64,
avg_multi_hsr_share_count_7day numeric(19,0) ENCODE az64,
avg_multi_hsr_share_count_30day numeric(19,0) ENCODE az64,
avg_multi_hsr_share_count_90day numeric(19,0) ENCODE az64,
pct_multi_hsr_checked_7day numeric(19,2) ENCODE az64,
pct_multi_hsr_checked_30day numeric(19,2) ENCODE az64,
pct_multi_hsr_checked_90day numeric(19,2) ENCODE az64,
total_login_count_7day bigint ENCODE az64,
total_login_count_30day bigint ENCODE az64,
total_login_count_90day bigint ENCODE az64,
total_login_checked_7day bigint ENCODE az64,
total_login_checked_30day bigint ENCODE az64,
total_login_checked_90day bigint ENCODE az64,
avg_login_count_7day numeric(19,0) ENCODE az64,
avg_login_count_30day numeric(19,0) ENCODE az64,
avg_login_count_90day numeric(19,0) ENCODE az64,
pct_login_checked_7day numeric(19,2) ENCODE az64,
pct_login_checked_30day numeric(19,2) ENCODE az64,
pct_login_checked_90day numeric(19,2) ENCODE az64,
total_mobile_logins_count_7day bigint ENCODE az64,
total_mobile_logins_count_30day bigint ENCODE az64,
total_mobile_logins_count_90day bigint ENCODE az64,
total_mobile_logins_checked_7day bigint ENCODE az64,
total_mobile_logins_checked_30day bigint ENCODE az64,
total_mobile_logins_checked_90day bigint ENCODE az64,
avg_mobile_logins_count_7day numeric(19,0) ENCODE az64,
avg_mobile_logins_count_30day numeric(19,0) ENCODE az64,
avg_mobile_logins_count_90day numeric(19,0) ENCODE az64,
pct_mobile_logins_checked_7day numeric(19,2) ENCODE az64,
pct_mobile_logins_checked_30day numeric(19,2) ENCODE az64,
pct_mobile_logins_checked_90day numeric(19,2) ENCODE az64,
avg_mobile_login_day_90day numeric(19,0) ENCODE az64,
total_web_logins_count_7day bigint ENCODE az64,
total_web_logins_count_30day bigint ENCODE az64,
total_web_logins_count_90day bigint ENCODE az64,
total_web_logins_checked_7day bigint ENCODE az64,
total_web_logins_checked_30day bigint ENCODE az64,
total_web_logins_checked_90day bigint ENCODE az64,
avg_web_logins_count_7day numeric(19,0) ENCODE az64,
avg_web_logins_count_30day numeric(19,0) ENCODE az64,
avg_web_logins_count_90day numeric(19,0) ENCODE az64,
pct_web_logins_checked_7day numeric(19,2) ENCODE az64,
pct_web_logins_checked_30day numeric(19,2) ENCODE az64,
pct_web_logins_checked_90day numeric(19,2) ENCODE az64,
avg_all_self_guided_activities_7day numeric(19,0) ENCODE az64,
avg_all_self_guided_activities_30day numeric(19,0) ENCODE az64,
avg_all_self_guided_activities_90day numeric(19,0) ENCODE az64,
total_self_guided_activities_count_7day bigint ENCODE az64,
total_self_guided_activities_count_30day bigint ENCODE az64,
total_self_guided_activities_count_90day bigint ENCODE az64,
total_self_guided_activities_checked_7day bigint ENCODE az64,
total_self_guided_activities_checked_30day bigint ENCODE az64,
total_self_guided_activities_checked_90day bigint ENCODE az64,
pct_self_guided_activities_checked_7day numeric(19,2) ENCODE az64,
pct_self_guided_activities_checked_30day numeric(19,2) ENCODE az64,
pct_self_guided_activities_checked_90day numeric(19,2) ENCODE az64
)
DISTSTYLE KEY
SORTKEY ( date_utc, type, aggregate_value, program );

commont on table data_sciences.br_aggregate_self_guided_engagement is 'Measure of how many people are self engaging with CCM products, service, or content on their own, without prompting or direction from others';
comment on column data_sciences.br_aggregate_self_guided_engagement.date_utc is 'The program metrics for each row are evaluated as of the end of this date in the UTC time zone.';
comment on column data_sciences.br_aggregate_self_guided_engagement.aggregate_value is 'Unique aggregation';
comment on column data_sciences.br_aggregate_self_guided_engagement.type is 'Account type associated with the Program - Client Account/Industry/Billing Partner';
comment on column data_sciences.br_aggregate_self_guided_engagement.program is 'Standard program names from SFDC:  "Diabetes", "Hypertension"';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_enrolled_not_deactivated_not_lapsed is 'Total number of individuals who are enrolled into CCM Programs and are active(not having deactivated account nor lapsed)';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_email_opened_count_7day is 'Total number of emails that have been opened within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_email_opened_count_30day is 'Total number of emails that have been opened within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_email_opened_count_90day is 'Total number of emails that have been opened within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_email_opened_checked_7day is 'Total number of emails that have been opened and checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_email_opened_checked_30day is 'Total number of emails that have been opened and checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_email_opened_checked_90day is 'Total number of emails that have been opened and checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_email_opened_count_7day is 'Average number of emails that have been opened within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_email_opened_count_30day is 'Average number of emails that have been opened within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_email_opened_count_90day is 'Average number of emails that have been opened within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_email_opened_checked_7day is 'Percentage of emails that have been opened and checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_email_opened_checked_30day is 'Percentage of emails that have been opened and checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_email_opened_checked_90day is 'Percentage of emails that have been opened and checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_foodlogs_count_7day is 'Total number of food logs recorded or submitted within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_foodlogs_count_30day is 'Total number of food logs recorded or submitted within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_foodlogs_count_90day is 'Total number of food logs recorded or submitted within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_foodlogs_checked_7day is 'Total number of food logs recorded or checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_foodlogs_checked_30day is 'Total number of food logs recorded or checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_foodlogs_checked_90day is 'Total number of food logs recorded or checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_foodlogs_count_7day is 'Average of food logs recorded or submitted within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_foodlogs_count_30day is 'Average of food logs recorded or submitted within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_foodlogs_count_90day is 'Average of food logs recorded or submitted within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_foodlogs_checked_7day is 'Percentage of food logs that have been checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_foodlogs_checked_30day is 'Percentage of food logs that have been checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_foodlogs_checked_90day is 'Percentage of food logs that have been checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_lessons_count_7day is 'Total number of lessons completed or accessed within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_lessons_count_30day is 'Total number of lessons completed or accessed within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_lessons_count_90day is 'Total number of lessons completed or accessed within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_lessons_checked_7day is 'Total number of lessons completed or checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_lessons_checked_30day is 'Total number of lessons completed or checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_lessons_checked_90day is 'Total number of lessons completed or checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_lessons_count_7day is 'Average number of lessons completed or accessed within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_lessons_count_30day is 'Average number of lessons completed or accessed within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_lessons_count_90day is 'Average number of lessons completed or accessed within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_lessons_checked_7day is 'Average number of lessons completed or checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_lessons_checked_30day is 'Average number of lessons completed or checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_lessons_checked_90day is 'Average number of lessons completed or checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bg_hsr_share_count_7day is 'Total count of Blood Glucose Health Summary Reports Shared within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bg_hsr_share_count_30day is 'Total count of Blood Glucose Health Summary Reports Shared within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bg_hsr_share_count_90day is 'Total count of Blood Glucose Health Summary Reports Shared within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bg_hsr_checked_7day is 'Total number of Blood Glucose Health Summary Reports checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bg_hsr_checked_30day is 'Total number of Blood Glucose Health Summary Reports checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bg_hsr_checked_90day is 'Total number of Blood Glucose Health Summary Reports checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_bg_hsr_share_count_7day is 'Average of Blood Glucose Health Summary Reports Shared within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_bg_hsr_share_count_30day is 'Average of Blood Glucose Health Summary Reports Shared within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_bg_hsr_share_count_90day is 'Average of Blood Glucose Health Summary Reports Shared within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_bg_hsr_checked_7day is 'Percentage of Blood Glucose Health Summary Reports checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_bg_hsr_checked_30day is 'Percentage of Blood Glucose Health Summary Reports checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_bg_hsr_checked_90day is 'Percentage of Blood Glucose Health Summary Reports checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bp_hsr_share_count_7day is 'Total number of Blood Glucose Health Summary Reports shared within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bp_hsr_share_count_30day is 'Total number of Blood Glucose Health Summary Reports shared within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bp_hsr_share_count_90day is 'Total number of Blood Glucose Health Summary Reports shared within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bp_hsr_checked_7day is 'Total number of Blood Glucose Health Summary Reports checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bp_hsr_checked_30day is 'Total number of Blood Glucose Health Summary Reports checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_bp_hsr_checked_90day is 'Total number of Blood Glucose Health Summary Reports checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_bp_hsr_share_count_7day is 'Average of Blood Glucose Health Summary Reports Shared within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_bp_hsr_share_count_30day is 'Average of Blood Glucose Health Summary Reports Shared within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_bp_hsr_share_count_90day is 'Average of Blood Glucose Health Summary Reports Shared within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_bp_hsr_checked_7day is 'Percentage of Blood Glucose Health Summary Reports checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_bp_hsr_checked_30day is 'Percentage of Blood Glucose Health Summary Reports checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_bp_hsr_checked_90day is 'Percentage of Blood Glucose Health Summary Reports checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_multi_hsr_share_count_7day is 'Total count of Multi condition Health summary reports shared within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_multi_hsr_share_count_30day is 'Total count of Multi condition Health summary reports shared within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_multi_hsr_share_count_90day is 'Total count of Multi condition Health summary reports shared within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_multi_hsr_checked_7day is 'Total count of Multi condition Health summary reports checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_multi_hsr_checked_30day is 'Total count of Multi condition Health summary reports checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_multi_hsr_checked_90day is 'Total count of Multi condition Health summary reports checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_multi_hsr_share_count_7day is 'Average of Multi condition Health summary reports shared within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_multi_hsr_share_count_30day is 'Average of Multi condition Health summary reports shared within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_multi_hsr_share_count_90day is 'Average of Multi condition Health summary reports shared within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_multi_hsr_checked_7day is 'Percentage of Multi condition Health summary reports checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_multi_hsr_checked_30day is 'Percentage of Multi condition Health summary reports checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_multi_hsr_checked_90day is 'Percentage of Multi condition Health summary reports checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_login_count_7day is 'Total number of user logins within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_login_count_30day is 'Total number of user logins within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_login_count_90day is 'Total number of user logins within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_login_checked_7day is 'Total number of user logins checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_login_checked_30day is 'Total number of user logins checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_login_checked_90day is 'Total number of user logins checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_login_count_7day is 'Average number of user logins within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_login_count_30day is 'Average number of user logins within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_login_count_90day is 'Average number of user logins within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_login_checked_7day is 'Percentage of user logins checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_login_checked_30day is 'Percentage of user logins checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_login_checked_90day is 'Percentage of user logins checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_mobile_logins_count_7day is 'Total number of logins from mobile devices within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_mobile_logins_count_30day is 'Total number of logins from mobile devices within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_mobile_logins_count_90day is 'Total number of logins from mobile devices within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_mobile_logins_checked_7day is 'Total number of logins from mobile devices checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_mobile_logins_checked_30day is 'Total number of logins from mobile devices checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_mobile_logins_checked_90day is 'Total number of logins from mobile devices checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_mobile_logins_count_7day is 'Average number of logins from mobile devices within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_mobile_logins_count_30day is 'Average number of logins from mobile devices within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_mobile_logins_count_90day is 'Average number of logins from mobile devices within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_mobile_logins_checked_7day is 'Percentage of logins from mobile devices checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_mobile_logins_checked_30day is 'Percentage of logins from mobile devices checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_mobile_logins_checked_90day is 'Percentage of logins from mobile devices checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_mobile_login_day_90day is 'Average number of logins from mobile devices within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_web_logins_count_7day is 'Total number of logins from web login within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_web_logins_count_30day is 'Total number of logins from web login within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_web_logins_count_90day is 'Total number of logins from web login within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_web_logins_checked_7day is 'Total number of logins from web login checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_web_logins_checked_30day is 'Total number of logins from web login checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_web_logins_checked_90day is 'Total number of logins from web login checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_web_logins_count_7day is 'Average number of logins from web login within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_web_logins_count_30day is 'Average number of logins from web login within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_web_logins_count_90day is 'Average number of logins from web login within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_web_logins_checked_7day is 'Percentage of logins from web login checked within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_web_logins_checked_30day is 'Percentage of logins from web login checked within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_web_logins_checked_90day is 'Percentage of logins from web login checked within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_all_self_guided_activities_7day is 'Average number of self-guided activities completed per user within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_all_self_guided_activities_30day is 'Average number of self-guided activities completed per user within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.avg_all_self_guided_activities_90day is 'Average number of self-guided activities completed per user within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_self_guided_activities_count_7day is 'Total number of self-guided activities completed per user within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_self_guided_activities_count_30day is 'Total number of self-guided activities completed per user within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_self_guided_activities_count_90day is 'Total number of self-guided activities completed per user within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_self_guided_activities_checked_7day is 'Total number of self-guided activities checked per user within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_self_guided_activities_checked_30day is 'Total number of self-guided activities checked per user within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.total_self_guided_activities_checked_90day is 'Total number of self-guided activities checked per user within 90 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_self_guided_activities_checked_7day is 'Percentage of self-guided activities checked per user within 7 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_self_guided_activities_checked_30day is 'Percentage of self-guided activities checked per user within 30 days ending on this date';
comment on column data_sciences.br_aggregate_self_guided_engagement.pct_self_guided_activities_checked_90day is 'Percentage of self-guided activities checked per user within 90 days ending on this date';