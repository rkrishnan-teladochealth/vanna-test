create table nonpii.client_code_solution_recruitable_daily_summary (
date_utc date not null encode runlength,
client_code varchar(50) not null encode text32k,
anchor_program varchar(32) not null encode text255,
solution_name varchar(255) not null encode text255,

sfdc_client_id varchar(32),
sfdc_contract_number varchar(32),
sfdc_launch_date date,
sfdc_recruitment_began date,
sfdc_recruitable_population int,
sfdc_enrollment_cap int,

prereg_payment_eligibility int not null,
prereg_condition_evidence int not null,
prereg_terminated int not null,

prereg_recruitables int not null,
prereg_recruitables_with_email int not null,
prereg_recruitables_with_address int not null,
prereg_recruitables_with_payer int not null,
prereg_recruitables_with_group_id int not null,
prereg_recruitables_with_member_id int not null,
prereg_recruitables_relation_self int not null,
prereg_recruitables_relation_spouse int not null,
prereg_recruitables_relation_dependent int not null,
prereg_recruitables_not_registered int not null,

members_enrolled int not null,
members_enrolled_not_deactivated int not null,
members_enrolled_not_deactivated_not_lapsed int not null,

--   Added as part of DATAENG-373
members_upsell_eligible int not null,
members_upsell_self_report int not null,
members_upsell_surescripts int not null,
sfdc_covered_lives int,
sfdc_prevalence_count int
)
diststyle key
distkey (client_code)
interleaved sortkey (date_utc, client_code, anchor_program, solution_name);

alter table nonpii.client_code_solution_recruitable_daily_summary owner to etl;

comment on table nonpii.client_code_solution_recruitable_daily_summary is 'Daily summary related to recruitment activities within a CCM solutions for a client''s code or identifier';

comment on column nonpii.client_code_solution_recruitable_daily_summary.date_utc
    is 'The date (in the UTC time zone) when the data for this row was preserved in the last Equalizer run of that day.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.client_code
    is 'The client_code identifying a specific pool of recruitable people and members.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.anchor_program
    is 'The anchor program for the solution. Standard anchor program names from SFDC:  "Diabetes", "Hypertension"';

comment on column nonpii.client_code_solution_recruitable_daily_summary.solution_name
    is 'The name for the solution Standard solution names from SFDC:  "DM_SOLUTION", "DPP_SOLUTION", "CV_SOLUTION"';

comment on column nonpii.client_code_solution_recruitable_daily_summary.sfdc_client_id
    is 'The SFDC Id of the client Account object associated with this client code';

comment on column nonpii.client_code_solution_recruitable_daily_summary.sfdc_contract_number
    is 'The Contract Number in SFDC for the contract corresponding to this client''s solution';

comment on column nonpii.client_code_solution_recruitable_daily_summary.sfdc_launch_date
    is 'The "actual launch date" for the client''s solution in SFDC';

comment on column nonpii.client_code_solution_recruitable_daily_summary.sfdc_recruitment_began
    is 'The "Member recruitment began" date for the client''s solution in SFDC';

comment on column nonpii.client_code_solution_recruitable_daily_summary.sfdc_recruitable_population
    is 'The "recruitable population" for the "program launch" covering this client''s solution. Intended to override any data-driven calculations. If the client has multiple client member codes on the same contract, this value witll *not* be code-specific, and will be copied to both codes.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.sfdc_enrollment_cap
    is 'The "enrollment cap" for the "program launch" covering this client''s solution. If the client has multiple client member codes on the same contract, this value witll *not* be code-specific, and will be copied to both codes.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_payment_eligibility
    is 'Number of unique people (distinct name+DoB) identified across all prereg data files for whom we know the client will pay for this solution.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_condition_evidence
    is 'Number of unique people identified across all prereg data files for whom we have proof of clinical qualification for this solution, e.g. due to medical claims.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_terminated
    is 'Number of unique people identified across all prereg data files for whom eligibility was terminated on or before this date.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables
    is 'Number of people identified across all prereg data sources that appear to be eligible for this solution. That means we have both payment eligibility and condition evidence for them. This includes people who have already registered for the solution.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables_with_email
    is 'Number of "prereg recruitables" for this solution, with an email address';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables_with_address
    is 'Number of "prereg recruitables" for this solution, with a direct mailing address';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables_with_payer
    is 'Number of "prereg recruitables" for this solution, with payer ID';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables_with_group_id
    is 'Number of "prereg recruitables" for this solution, with an insurance Group ID';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables_with_member_id
    is 'Number of "prereg recruitables" for this solution, with an insurance Member ID';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables_relation_self
    is 'Number of "prereg recruitables" for this solution, where the recruitable is the policyholder';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables_relation_spouse
    is 'Number of "prereg recruitables" for this solution, where the recruitable is the policyholder''s spouse';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables_relation_dependent
    is 'Number of "prereg recruitables" for this solution, where the recruitable is the policyholder''s dependent';

comment on column nonpii.client_code_solution_recruitable_daily_summary.prereg_recruitables_not_registered
    is 'Number of "prereg recruitables" for this solution who have never registered for a Livongo account';

comment on column nonpii.client_code_solution_recruitable_daily_summary.members_enrolled
    is 'Number of members ever enrolled for this solution. (I.e. sum of user_daily_summary.nontest_enrolled for this client code.)';

comment on column nonpii.client_code_solution_recruitable_daily_summary.members_enrolled_not_deactivated
    is 'Number of members currently enrolled and not deactivated for this solution. (I.e. sum of user_daily_summary.enrolled_not_deactivated for this client code.)';

comment on column nonpii.client_code_solution_recruitable_daily_summary.members_enrolled_not_deactivated_not_lapsed
    is 'Number of members currently enrolled and not deactivated or lapsed for this solution. (I.e. sum of user_daily_summary.enrolled_not_deactivated_not_lapsed for this client code.)';

comment on column nonpii.client_code_solution_recruitable_daily_summary.members_upsell_eligible
  is 'Number of members currently enrolled-not-deactivated in at least one other program, who have never enrolled in this program, for whom we have evidence of any sort that they have this program''s related medical condition.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.members_upsell_self_report
  is 'Number of members currently enrolled-not-deactivated in at least one other program, who have never enrolled in this program, who we think are eligible for this program based on a self-report of the required condition (e.g. on a health questionnaire).';

comment on column nonpii.client_code_solution_recruitable_daily_summary.members_upsell_surescripts
  is 'Number of members currently enrolled-not-deactivated in at least one other program, who have never enrolled in this program, who we think are eligible for this program based on Surescripts medication data.';

comment on column nonpii.client_code_solution_recruitable_daily_summary.sfdc_covered_lives
    is 'If set, this is the number of people who would be covered for our programs under this client. (From nonpii.sfdc_clients)';

comment on column nonpii.client_code_solution_recruitable_daily_summary.sfdc_prevalence_count
    is 'sfdc_covered_lives multiplied by nonpii.condition_prevalence_rate prevalence field, if set for the program';
