create table nonpii.member_program_daily_summary (
 date_utc date not null encode runlength,
 user_id bigint not null,
 program varchar(32) not null encode text255,
 client_code varchar(50) not null encode text32k,
 enrolled smallint not null encode mostly8,
 deactivated smallint not null encode mostly8,
 enrolled_not_deactivated smallint not null encode mostly8,
 lapsed smallint not null encode mostly8,
 enrolled_not_deactivated_not_lapsed smallint not null encode mostly8,
 billable smallint not null encode mostly8,
 billing_months_to_lapsed smallint encode mostly8,
 deactivated_billable_ptm smallint not null encode mostly8,
 lapsed_date date,
 deactivation_date date,
 solution_billable varchar(255) encode text255,
 pppm_billable smallint not null encode mostly8,
 solution_enrolled_not_deactivated_not_lapsed varchar(255) encode text255,
 in_low_acuity_mode boolean not null default false
)
diststyle key
distkey (user_id)
interleaved sortkey (date_utc, user_id, client_code, program);

alter table nonpii.member_program_daily_summary owner to etl;

comment on table nonpii.member_program_daily_summary
is 'Daily program metrics & summary evaluated for every member';

comment on column nonpii.member_program_daily_summary.date_utc
is 'The program metrics for each row are evaluated as of the end of this date in the UTC time zone.';

comment on column nonpii.member_program_daily_summary.user_id
is 'The Redshift-specific numeric ID for the member summarized here.';

comment on column nonpii.member_program_daily_summary.program
is 'Standard program names from SFDC:  "Diabetes", "Hypertension"';

comment on column nonpii.member_program_daily_summary.client_code
is 'The client code assigned to the member on this date to say which client they belonged to.';

comment on column nonpii.member_program_daily_summary.enrolled
is '1 if the member enrolled in this program at least once on or before this date, 0 otherwise.';

comment on column nonpii.member_program_daily_summary.deactivated
is '1 if the member was deactivated from this program on this date, 0 otherwise.';

comment on column nonpii.member_program_daily_summary.enrolled_not_deactivated
is '1 if the member was enrolled in this program and not deactivated on this date, 0 otherwise.';

comment on column nonpii.member_program_daily_summary.lapsed
is '1 if the member was lapsed into a non-billable state due to inactivity on this date, 0 otherwise.';

comment on column nonpii.member_program_daily_summary.enrolled_not_deactivated_not_lapsed
is '1 if the member was enrolled in this program before this date, and was neither deactivated nor lapsed on this date, 0 otherwise.';

comment on column nonpii.member_program_daily_summary.billable
is '1 if the member''s status would permit them to be billed at the end of the current month, 0 if they do not appear to be billable.';

comment on column nonpii.member_program_daily_summary.billing_months_to_lapsed
is 'If this member is capable of becoming lapsed from billing on this program due to their client and status, this will give the number of months from now when the member could become lapsed if they stop using the service. This number may be 0 if they became lapsed in the current month, or negative if they became lapsed in a previous month. This will be null if the member could never become lapsed.';

comment on column nonpii.member_program_daily_summary.deactivated_billable_ptm
is 'Will be 1 if the member is both deactivated and billable on this date, and the reason they are still billable is the client Participant Term Minimum clause.';

comment on column nonpii.member_program_daily_summary.lapsed_date
is 'If the member is "lapsed" from this program, this is the most recent date when they transitioned from "billable" to lapsed.';

comment on column nonpii.member_program_daily_summary.deactivation_date
is 'If the member has been deactivated from this program, this is the most recent date when they transitioned from active to deactivated.';

comment on column nonpii.member_program_daily_summary.solution_billable
is 'The name of the Whole Person solution to which the member is billable on this date.';

comment on column nonpii.member_program_daily_summary.pppm_billable
is '1 if the member''s status would permit them to be billed for this program''s PPPM fee (either as a Standalone program or as a Whole Person solution) at the end of the current month, 0 if they do not appear to be billable for a PPPM fee.';

comment on column nonpii.member_program_daily_summary.solution_enrolled_not_deactivated_not_lapsed
is 'The name of the Whole Person solution in which the member is enrolled';

comment on column nonpii.member_program_daily_summary.in_low_acuity_mode
is 'is true if a member is in low_acuity/maintenance mode, meaning they are managing their condition in accordance with a certain criteria';
