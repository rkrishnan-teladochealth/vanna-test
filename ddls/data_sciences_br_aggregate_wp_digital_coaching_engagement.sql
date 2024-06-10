CREATE TABLE data_sciences.br_aggregate_wp_digital_coaching_engagement (
date_utc date ENCODE az64 distkey,
aggregate_value character varying(2059) ENCODE raw,
type character varying(64) ENCODE raw,
solution_name character varying(64) ENCODE raw,
total_activated bigint ENCODE az64,
diabetes_activated bigint ENCODE az64,
prediabetes_activated bigint ENCODE az64,
hypertension_activated bigint ENCODE az64,
weight_management_activated bigint ENCODE az64,
behavioral_health_activated bigint ENCODE az64,
total_nudge_sent_count_7day bigint ENCODE az64,
total_nudge_sent_count_30day bigint ENCODE az64,
total_nudge_sent_count_90day bigint ENCODE az64,
total_nudge_sent_checked_7day bigint ENCODE az64,
total_nudge_sent_checked_30day bigint ENCODE az64,
total_nudge_sent_checked_90day bigint ENCODE az64,
avg_nudge_sent_count_7day numeric(19,0) ENCODE az64,
avg_nudge_sent_count_30day numeric(19,0) ENCODE az64,
avg_nudge_sent_count_90day numeric(19,0) ENCODE az64,
pct_nudge_sent_checked_7day numeric(19,2) ENCODE az64,
pct_nudge_sent_checked_30day numeric(19,2) ENCODE az64,
pct_nudge_sent_checked_90day numeric(19,2) ENCODE az64,
total_nudge_responded_count_7day bigint ENCODE az64,
total_nudge_responded_count_30day bigint ENCODE az64,
total_nudge_responded_count_90day bigint ENCODE az64,
total_nudge_responded_checked_7day bigint ENCODE az64,
total_nudge_responded_checked_30day bigint ENCODE az64,
total_nudge_responded_checked_90day bigint ENCODE az64,
avg_nudge_responded_count_7day numeric(19,0) ENCODE az64,
avg_nudge_responded_count_30day numeric(19,0) ENCODE az64,
avg_nudge_responded_count_90day numeric(19,0) ENCODE az64,
pct_nudge_responded_checked_7day numeric(19,2) ENCODE az64,
pct_nudge_responded_checked_30day numeric(19,2) ENCODE az64,
pct_nudge_responded_checked_90day numeric(19,2) ENCODE az64,
nudge_responded_rate_7day numeric(19,2) ENCODE az64,
nudge_responded_rate_30day numeric(19,2) ENCODE az64,
nudge_responded_rate_90day numeric(19,2) ENCODE az64,
total_nudge_yes_responded_count_7day bigint ENCODE az64,
total_nudge_yes_responded_count_30day bigint ENCODE az64,
total_nudge_yes_responded_count_90day bigint ENCODE az64,
total_nudge_yes_responded_checked_7day bigint ENCODE az64,
total_nudge_yes_responded_checked_30day bigint ENCODE az64,
total_nudge_yes_responded_checked_90day bigint ENCODE az64,
avg_nudge_yes_responded_count_7day numeric(19,0) ENCODE az64,
avg_nudge_yes_responded_count_30day numeric(19,0) ENCODE az64,
avg_nudge_yes_responded_count_90day numeric(19,0) ENCODE az64,
pct_nudge_yes_responded_checked_7day numeric(19,2) ENCODE az64,
pct_nudge_yes_responded_checked_30day numeric(19,2) ENCODE az64,
pct_nudge_yes_responded_checked_90day numeric(19,2) ENCODE az64,
nudge_yes_responded_rate_7day numeric(19,2) ENCODE az64,
nudge_yes_responded_rate_30day numeric(19,2) ENCODE az64,
nudge_yes_responded_rate_90day numeric(19,2) ENCODE az64,
total_challenges_completed_count_7day bigint ENCODE az64,
total_challenges_completed_count_30day bigint ENCODE az64,
total_challenges_completed_count_90day bigint ENCODE az64,
total_challenges_completed_checked_7day bigint ENCODE az64,
total_challenges_completed_checked_30day bigint ENCODE az64,
total_challenges_completed_checked_90day bigint ENCODE az64,
avg_challenges_completed_count_7day numeric(19,0) ENCODE az64,
avg_challenges_completed_count_30day numeric(19,0) ENCODE az64,
avg_challenges_completed_count_90day numeric(19,0) ENCODE az64,
pct_challenges_completed_checked_7day numeric(19,2) ENCODE az64,
pct_challenges_completed_checked_30day numeric(19,2) ENCODE az64,
pct_challenges_completed_checked_90day numeric(19,2) ENCODE az64,
total_bh_activities_completed_count_7day bigint ENCODE az64,
total_bh_activities_completed_count_30day bigint ENCODE az64,
total_bh_activities_completed_count_90day bigint ENCODE az64,
total_bh_activities_completed_checked_7day bigint ENCODE az64,
total_bh_activities_completed_checked_30day bigint ENCODE az64,
total_bh_activities_completed_checked_90day bigint ENCODE az64,
avg_bh_activities_completed_count_7day numeric(19,0) ENCODE az64,
avg_bh_activities_completed_count_30day numeric(19,0) ENCODE az64,
avg_bh_activities_completed_count_90day numeric(19,0) ENCODE az64,
pct_bh_activities_completed_checked_7day numeric(19,2) ENCODE az64,
pct_bh_activities_completed_checked_30day numeric(19,2) ENCODE az64,
pct_bh_activities_completed_checked_90day numeric(19,2) ENCODE az64,
total_action_plan_goals_count_7day bigint ENCODE az64,
total_action_plan_goals_count_30day bigint ENCODE az64,
total_action_plan_goals_count_90day bigint ENCODE az64,
total_action_plan_goals_checked_7day bigint ENCODE az64,
total_action_plan_goals_checked_30day bigint ENCODE az64,
total_action_plan_goals_checked_90day bigint ENCODE az64,
avg_action_plan_goals_count_7day numeric(19,2) ENCODE az64,
avg_action_plan_goals_count_30day numeric(19,2) ENCODE az64,
avg_action_plan_goals_count_90day numeric(19,2) ENCODE az64,
pct_action_plan_goals_count_7day numeric(19,2) ENCODE az64,
pct_action_plan_goals_count_30day numeric(19,2) ENCODE az64,
pct_action_plan_goals_count_90day numeric(19,2) ENCODE az64,
total_action_plan_activities_count_7day bigint ENCODE az64,
total_action_plan_activities_count_30day bigint ENCODE az64,
total_action_plan_activities_count_90day bigint ENCODE az64,
total_action_plan_activities_checked_7day bigint ENCODE az64,
total_action_plan_activities_checked_30day bigint ENCODE az64,
total_action_plan_activities_checked_90day bigint ENCODE az64,
avg_action_plan_activities_count_7day numeric(19,2) ENCODE az64,
avg_action_plan_activities_count_30day numeric(19,2) ENCODE az64,
avg_action_plan_activities_count_90day numeric(19,2) ENCODE az64,
pct_action_plan_activities_count_7day numeric(19,2) ENCODE az64,
pct_action_plan_activities_count_30day numeric(19,2) ENCODE az64,
pct_action_plan_activities_count_90day numeric(19,2) ENCODE az64,
total_action_plan_tasks_count_7day bigint ENCODE az64,
total_action_plan_tasks_count_30day bigint ENCODE az64,
total_action_plan_tasks_count_90day bigint ENCODE az64,
total_action_plan_tasks_checked_7day bigint ENCODE az64,
total_action_plan_tasks_checked_30day bigint ENCODE az64,
total_action_plan_tasks_checked_90day bigint ENCODE az64,
avg_action_plan_tasks_count_7day numeric(19,2) ENCODE az64,
avg_action_plan_tasks_count_30day numeric(19,2) ENCODE az64,
avg_action_plan_tasks_count_90day numeric(19,2) ENCODE az64,
pct_action_plan_tasks_count_7day numeric(19,2) ENCODE az64,
pct_action_plan_tasks_count_30day numeric(19,2) ENCODE az64,
pct_action_plan_tasks_count_90day numeric(19,2) ENCODE az64,
avg_all_digital_activities_7day numeric(19,0) ENCODE az64,
avg_all_digital_activities_30day numeric(19,0) ENCODE az64,
avg_all_digital_activities_90day numeric(19,0) ENCODE az64,
total_digital_activities_count_7day bigint ENCODE az64,
total_digital_activities_count_30day bigint ENCODE az64,
total_digital_activities_count_90day bigint ENCODE az64,
total_digital_activities_checked_7day bigint ENCODE az64,
total_digital_activities_checked_30day bigint ENCODE az64,
total_digital_activities_checked_90day bigint ENCODE az64,
pct_digital_activities_checked_7day numeric(19,2) ENCODE az64,
pct_digital_activities_checked_30day numeric(19,2) ENCODE az64,
pct_digital_activities_checked_90day numeric(19,2) ENCODE az64
)
DISTSTYLE KEY
SORTKEY ( date_utc, type, aggregate_value, solution_name );

comment on table data_sciences.br_aggregate_wp_digital_coaching_engagement is 'Aggregate table for Digital coaching Engagements';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.date_utc is 'The UTC date for the device engagement aggregates being summarized for each solution';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.aggregate_value is 'Derived client name computed using taglist';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.type is 'Type of client populated such as Billing Partner,DownMarket Client etc';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.solution_name is 'The name for the solution Standard solution names from SFDC:  "DM_SOLUTION", "DPP_SOLUTION", "CV_SOLUTION"';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_activated is 'Total number of individuals who are enrolled into CCM Programs and are having active accounts';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.diabetes_activated is 'Number of individuals who have activated diabetes program';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.prediabetes_activated is 'Number of individuals who have activated pre-diabetes program';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.hypertension_activated is 'Number of individuals who have activated hypertension program';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.weight_management_activated is 'Number of individuals who have activated weight management program';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.behavioral_health_activated is 'Number of individuals who have activated behavioral health program';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_sent_count_7day is 'Total number of Nudges sent in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_sent_count_30day is 'Total number of Nudges sent in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_sent_count_90day is 'Total number of Nudges sent in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_sent_checked_7day is 'Total number of Nudges sent were checked by members in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_sent_checked_30day is 'Total number of Nudges sent were checked by members in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_sent_checked_90day is 'Total number of Nudges sent were checked by members in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_nudge_sent_count_7day is 'Average number of Nudges sent were checked by members in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_nudge_sent_count_30day is 'Average number of Nudges sent were checked by members in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_nudge_sent_count_90day is 'Average number of Nudges sent were checked by members in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_nudge_sent_checked_7day is 'Percentage of Nudges sent were checked by members in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_nudge_sent_checked_30day is 'Percentage of Nudges sent were checked by members in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_nudge_sent_checked_90day is 'Percentage of Nudges sent were checked by members in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_responded_count_7day is 'Total number of Nudges responded in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_responded_count_30day is 'Total number of Nudges responded in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_responded_count_90day is 'Total number of Nudges responded in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_responded_checked_7day is 'Total number of Nudges responded and were checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_responded_checked_30day is 'Total number of Nudges responded and were checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_responded_checked_90day is 'Total number of Nudges responded and were checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_nudge_responded_count_7day is 'Average Nudges responded in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_nudge_responded_count_30day is 'Average Nudges responded in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_nudge_responded_count_90day is 'Average Nudges responded in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_nudge_responded_checked_7day is 'Percentage Nudges checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_nudge_responded_checked_30day is 'Percentage Nudges checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_nudge_responded_checked_90day is 'Percentage Nudges checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.nudge_responded_rate_7day is 'Nudges response rate in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.nudge_responded_rate_30day is 'Nudges response rate in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.nudge_responded_rate_90day is 'Nudges response rate in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_yes_responded_count_7day is 'Total Nudges responded in YES in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_yes_responded_count_30day is 'Total Nudges responded in YES in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_yes_responded_count_90day is 'Total Nudges responded in YES in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_yes_responded_checked_7day is 'Total Nudges responded in YES has checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_yes_responded_checked_30day is 'Total Nudges responded in YES has checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_nudge_yes_responded_checked_90day is 'Total Nudges responded in YES has checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_nudge_yes_responded_count_7day is 'Average Nudges responded in  YES in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_nudge_yes_responded_count_30day is 'Average Nudges responded in  YES in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_nudge_yes_responded_count_90day is 'Average Nudges responded in  YES in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_nudge_yes_responded_checked_7day is 'Percentage of Nudges responded in YES in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_nudge_yes_responded_checked_30day is 'Percentage of Nudges responded in YES in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_nudge_yes_responded_checked_90day is 'Percentage of Nudges responded in YES in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.nudge_yes_responded_rate_7day is 'Rate of response with YES for Nudges in YES in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.nudge_yes_responded_rate_30day is 'Rate of response with YES for Nudges in YES in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.nudge_yes_responded_rate_90day is 'Rate of response with YES for Nudges in YES in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_challenges_completed_count_7day is 'Total challenges completed in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_challenges_completed_count_30day is 'Total challenges completed in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_challenges_completed_count_90day is 'Total challenges completed in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_challenges_completed_checked_7day is 'Total challenges completed and checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_challenges_completed_checked_30day is 'Total challenges completed and checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_challenges_completed_checked_90day is 'Total challenges completed and checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_challenges_completed_count_7day is 'Average challenges completed in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_challenges_completed_count_30day is 'Average challenges completed in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_challenges_completed_count_90day is 'Average challenges completed in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_challenges_completed_checked_7day is 'Percentage challenges completed and checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_challenges_completed_checked_30day is 'Percentage challenges completed and checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_challenges_completed_checked_90day is 'Percentage challenges completed and checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_bh_activities_completed_count_7day is 'Total behavioural health activities completed in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_bh_activities_completed_count_30day is 'Total behavioural health activities completed in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_bh_activities_completed_count_90day is 'Total behavioural health activities completed in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_bh_activities_completed_checked_7day is 'Total behavioural health activities completed and checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_bh_activities_completed_checked_30day is 'Total behavioural health activities completed and checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_bh_activities_completed_checked_90day is 'Total behavioural health activities completed and checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_bh_activities_completed_count_7day is 'Average behavioural health activities completed in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_bh_activities_completed_count_30day is 'Average behavioural health activities completed in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_bh_activities_completed_count_90day is 'Average behavioural health activities completed in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_bh_activities_completed_checked_7day is 'Percentage behavioural health activities completed and checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_bh_activities_completed_checked_30day is 'Percentage behavioural health activities completed and checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_bh_activities_completed_checked_90day is 'Percentage behavioural health activities completed and checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_goals_count_7day is 'Total action plan goals in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_goals_count_30day is 'Total action plan goals in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_goals_count_90day is 'Total action plan goals in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_goals_checked_7day is 'Total action plan goals checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_goals_checked_30day is 'Total action plan goals checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_goals_checked_90day is 'Total action plan goals checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_action_plan_goals_count_7day is 'Average action plan goals count in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_action_plan_goals_count_30day is 'Average action plan goals count in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_action_plan_goals_count_90day is 'Average action plan goals count in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_action_plan_goals_count_7day is 'Percentage action plan goals count in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_action_plan_goals_count_30day is 'Percentage action plan goals count in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_action_plan_goals_count_90day is 'Percentage action plan goals count in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_activities_count_7day is 'Total action plan activities count in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_activities_count_30day is 'Total action plan activities count in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_activities_count_90day is 'Total action plan activities count in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_activities_checked_7day is 'Total action plan activities checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_activities_checked_30day is 'Total action plan activities checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_activities_checked_90day is 'Total action plan activities checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_action_plan_activities_count_7day is 'Average action plan activities count in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_action_plan_activities_count_30day is 'Average action plan activities count in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_action_plan_activities_count_90day is 'Average action plan activities count in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_action_plan_activities_count_7day is 'Percentage of action plan activities count in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_action_plan_activities_count_30day is 'Percentage of action plan activities count in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_action_plan_activities_count_90day is 'Percentage of action plan activities count in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_tasks_count_7day is 'Total action plan tasks count in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_tasks_count_30day is 'Total action plan tasks count in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_tasks_count_90day is 'Total action plan tasks count in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_tasks_checked_7day is 'Total action plan tasks checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_tasks_checked_30day is 'Total action plan tasks checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_action_plan_tasks_checked_90day is 'Total action plan tasks checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_action_plan_tasks_count_7day is 'Average action plan tasks counts in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_action_plan_tasks_count_30day is 'Average action plan tasks counts in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_action_plan_tasks_count_90day is 'Average action plan tasks counts in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_action_plan_tasks_count_7day is 'Percentage of action plan tasks counts in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_action_plan_tasks_count_30day is 'Percentage of action plan tasks counts in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_action_plan_tasks_count_90day is 'Percentage of action plan tasks counts in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_all_digital_activities_7day is 'Average of all digital activities in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_all_digital_activities_30day is 'Average of all digital activities in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.avg_all_digital_activities_90day is 'Average of all digital activities in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_digital_activities_count_7day is 'Total digital activities count in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_digital_activities_count_30day is 'Total digital activities count in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_digital_activities_count_90day is 'Total digital activities count in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_digital_activities_checked_7day is 'Total digital activities checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_digital_activities_checked_30day is 'Total digital activities checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.total_digital_activities_checked_90day is 'Total digital activities checked in last 90 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_digital_activities_checked_7day is 'Percentage of digital activities checked in last 7 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_digital_activities_checked_30day is 'Percentage of digital activities checked in last 30 days';
comment on column data_sciences.br_aggregate_wp_digital_coaching_engagement.pct_digital_activities_checked_90day is 'Percentage of digital activities checked in last 90 days';