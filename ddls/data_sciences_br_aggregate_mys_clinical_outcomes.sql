CREATE TABLE data_sciences.br_aggregate_mys_clinical_outcomes (
date_utc date ENCODE az64,
aggregate_value character varying(500) ENCODE lzo,
type character varying(64) ENCODE lzo,
program character varying(64) ENCODE lzo,
total_activated integer ENCODE az64,
avg_gad7_baseline numeric(19,2) ENCODE az64,
avg_gad7_latest numeric(19,2) ENCODE az64,
avg_gad7_diff numeric(19,2) ENCODE az64,
n_gad7_subclinical integer ENCODE az64,
gad7_reportable integer ENCODE az64,
gad7_reportable_gap integer ENCODE az64,
n_gad7_improved_maintained integer ENCODE az64,
pct_gad7_improved_maintained numeric(19,2) ENCODE az64,
n_gad7_clinically_improved integer ENCODE az64,
n_gad7_clinical integer ENCODE az64,
pct_gad7_clinically_improved numeric(19,2) ENCODE az64,
avg_phq9_baseline numeric(19,2) ENCODE az64,
avg_phq9_latest numeric(19,2) ENCODE az64,
avg_phq9_diff numeric(19,2) ENCODE az64,
n_phq9_subclinical integer ENCODE az64,
phq9_reportable integer ENCODE az64,
phq9_reportable_gap integer ENCODE az64,
n_phq9_improved_maintained integer ENCODE az64,
pct_phq9_improved_maintained numeric(19,2) ENCODE az64,
n_phq9_clinically_improved integer ENCODE az64,
n_phq9_clinical integer ENCODE az64,
pct_phq9_clinically_improved numeric(19,2) ENCODE az64,
avg_who5_baseline numeric(19,2) ENCODE az64,
avg_who5_latest numeric(19,2) ENCODE az64,
avg_who5_diff numeric(19,2) ENCODE az64,
n_who5_member integer ENCODE az64,
who5_reportable integer ENCODE az64,
who5_reportable_gap integer ENCODE az64,
n_who5_10pct_improvement integer ENCODE az64,
pct_who5_10pct_improved numeric(19,2) ENCODE az64
)
DISTSTYLE AUTO;

commont on table data_sciences.br_aggregate_mys_clinical_outcomes is 'Data aggregation related to clinical outcomes on Mental/Behavioral Health';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.date_utc is 'The UTC date for the device engagement aggregates being summarized for each solution';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.aggregate_value is 'Derived client name computed using taglist';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.type is 'Type of client populated such as Billing Partner,DownMarket Client etc';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.program is 'The name for the solution Standard solution names from SFDC:  "DM_SOLUTION", "DPP_SOLUTION", "CV_SOLUTION"';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.total_activated is 'Total number of individuals who are enrolled into CCM Programs and are having active accounts';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.avg_gad7_baseline is 'Average (mean) score on the GAD7 scale at the beginning or baseline of a study or intervention.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.avg_gad7_latest is 'Average (mean) score on the GAD7 scale at latest of a study or intervention.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.avg_gad7_diff is 'Average change or difference in GAD7 scores from a baseline measurement to a follow-up measurement after some intervention or treatment';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_gad7_subclinical is 'Number of participants who scored within the subclinical range on the GAD-7 scale';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.gad7_reportable is 'Reported presence of clinically significant levels of GAD7 symptoms.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.gad7_reportable_gap is 'Reported gaps for clinically significant levels of GAD7 symptoms.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_gad7_improved_maintained is 'The number of participants who both showed improvement in their scores on the GAD-7 scale and maintained that improvement over a certain period of time';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.pct_gad7_improved_maintained is 'Percentage of participants who both showed improvement in their scores on the GAD-7 scale and maintained that improvement over a certain period of time';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_gad7_clinically_improved is 'Number of individuals in a study or program who demonstrated clinically significant improvement as measured by the GAD-7 scale';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_gad7_clinical is 'The number of individuals in a study or dataset who meet clinical criteria for generalized anxiety disorder (GAD) based on their scores on the GAD-7 scale';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.pct_gad7_clinically_improved is 'Percentage of participants who both showed improvement in their scores on the GAD-7 scale';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.avg_phq9_baseline is 'Average (mean) score on the PHQ-9 scale at the beginning or baseline of a study or intervention.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.avg_phq9_latest is 'Average (mean) score on the PHQ-9 scale at latest of a study or intervention.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.avg_phq9_diff is 'Average change or difference in PHQ-9 scores from a baseline measurement to a follow-up measurement after some intervention or treatment';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_phq9_subclinical is 'Number of participants who scored within the subclinical range on the PHQ-9 scale';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.phq9_reportable is 'Reported presence of clinically significant levels of PHQ-9 symptoms.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.phq9_reportable_gap is 'Reported gaps for clinically significant levels of PHQ-9 symptoms.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_phq9_improved_maintained is 'The number of participants who both showed improvement in their scores on the PHQ-9 scale and maintained that improvement over a certain period of time';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.pct_phq9_improved_maintained is 'Percentage of participants who both showed improvement in their scores on the PHQ-9 scale and maintained that improvement over a certain period of time';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_phq9_clinically_improved is 'Number of individuals in a study or program who demonstrated clinically significant improvement as measured by the PHQ-9 scale';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_phq9_clinical is 'The number of individuals in a study or dataset who meet clinical criteria for PHQ based on their scores on the PHQ-9 scale';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.pct_phq9_clinically_improved is 'Number of individuals in a study or program who demonstrated clinically significant improvement as measured by the PHQ-9 scale';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.avg_who5_baseline is 'Average (mean) score on the WHO5 scale at the beginning or baseline of a study or intervention.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.avg_who5_latest is 'Average (mean) score on the WHO5 scale at latest of a study or intervention.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.avg_who5_diff is 'Average change or difference in WHO5 scores from a baseline measurement to a follow-up measurement after some intervention or treatment';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_who5_member is 'Number of members who took WHO5 survey';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.who5_reportable is 'Reported presence of clinically significant levels of WHO5 symptoms';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.who5_reportable_gap is 'Reported gaps for clinically significant levels of WHO5 symptoms.';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.n_who5_10pct_improvement is 'The number of participants who demonstrated a 10 percent or greater improvement in their WHO-5 scores over a certain period of time or intervention';
comment on column data_sciences.br_aggregate_mys_clinical_outcomes.pct_who5_10pct_improved is 'Percentage of participants who demonstrated a 10 percent or greater improvement in their WHO-5 scores over a certain period of time or intervention';