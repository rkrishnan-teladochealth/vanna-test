create table nonpii.sfdc_client_contract_program_monthly_history (
month_start_utc date not null encode runlength,
month_end_utc date not null encode runlength,
client_code varchar(50) not null,
client_status varchar(64) encode text255,
contract_number varchar(32),
prorated_enrollment boolean not null,
pricing_model varchar(128),
partner_billing varchar(256),
partner_contract_path varchar(256),
sfdc_client_id varchar(32),
sfdc_contract_id varchar(32),
sfdc_program_id varchar(32),
program varchar(32) not null encode text255,
solution_name varchar(255) encode text255,
solution_program_type varchar(255) not null encode text255,
incentive_criteria varchar(256),
incentive_language varchar(10240),
launch_date date,
member_recruitment_began date,
outreach_stratification varchar(16) encode text255,
recruitable_population int,
registration_status varchar(32) encode text255,
billing_partner_admin_fee numeric(10, 2),
consecutive_inactive_months_to_lapsed numeric(10, 2),
enrollment_cap int,
lapsed_criteria varchar(64) encode text255,
participant_term_minimum_months int,
partner_pass_through_price numeric(10, 2),
replacement_fee numeric(10, 2),
up_front_per_member numeric(10, 2),
product_name varchar(128) encode text255,
pmpm numeric(10, 2),
condition varchar(32) encode text255,
began_as_pilot boolean,
cross_sell_recruitment_began date,
ready_for_automation boolean,
incentive_for_automation varchar(256),
use_contract_path_for_marketing boolean,
automated_enrollment_injection boolean,
incentives_for_usage boolean,
exclude_incentive_type varchar(256),
hold_member_marketing boolean,
member_comms_need_client_approval boolean,
cobranding_preferences varchar(256),
cobranding_channels varchar(256),
u18_marketing boolean,
enrollment_marketing_blocked boolean,
initial_targeted_marketing date,
multi_program_discount_price numeric(5,2),
participants decimal(11,2),
pepm decimal(10,2),
member_eligibility_criteria varchar(256),
health_plan_customizations varchar(256),
partner_fee_type varchar(32),
tier_two_partner_fee_start_month int,
tier_two_partner_fee numeric(10,2),
tier_two_pppm_start_month int,
tier_two_pppm numeric(10,2),
livongo_led boolean,
targeted_recruitable_data boolean,
disable_bh_coaching boolean,
billing_method varchar(128),
disable_bh_teletherapy boolean default false,
claims_configuration varchar(256),
program_platform varchar(256) default 'Livongo',
lost_damaged_device_1 varchar(256),
lost_damaged_device_2 varchar(256),
lost_damaged_device_price_2 numeric(10, 2),
bill_early_terminated_claims boolean default false,
invoice_prefix varchar(255),
lowercase_registration_code boolean default false,
remove_unlimited boolean default false,
x100_percent_paid_for_by varchar(255),
custom_campaign varchar(255) default null,
phone_campaign varchar(255) default null,
campaign_lifecycle_participation varchar(255) default null,
campaign_type varchar(255) default null,
enrollment_on_autopilot boolean default false,
tier_three_pppm_start_month int,
tier_three_pppm numeric(16,2),
low_acuity_price numeric(10,2),
provider_based_care boolean
)
diststyle key
distkey (client_code)
interleaved sortkey (month_start_utc, client_code, program);

alter table nonpii.sfdc_client_contract_program_monthly_history owner to etl;

comment on table nonpii.sfdc_client_contract_program_monthly_history
is 'Historical record or log of client configurations, contracts and programs within a Salesforce (SFDC) system';

comment on column nonpii.sfdc_client_contract_program_monthly_history.month_start_utc
is 'The first day of the month for the preserved client configuration. Days are cut off on the UTC time zone.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.month_end_utc
is 'The last day of the month for the preserved client configuration. Data in this table represents the truth as of the end of this (UTC) date.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.client_code
is 'The client code whose program information is preserved in this row for this month.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.client_status
is 'The client account "status" for the client associated with this code at the end of this month, from nonpii.sfdc_clients.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.contract_number
is 'The contract number associated with this client code at the end of this month, from nonpii.sfdc_client_contracts.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.prorated_enrollment
is 'True if the contract associated with this client code at the end of the month requires "prorated billing" logic. From nonpii.sfdc_client_contracts.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.pricing_model
is 'The basis for pricing the programs under this contract. From nonpii.sfdc_client_contracts';

comment on column nonpii.sfdc_client_contract_program_monthly_history.partner_billing
is 'The name of the "Billing Partner" covering this client code.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.partner_contract_path
is 'The name of the "Contract Path" partner covering this client code.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.sfdc_client_id
is 'Unique ID of the client offering this program, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.sfdc_contract_id
is 'Unique ID of the contract under which the client offers this program, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.sfdc_program_id
is 'Unique ID of the program record in Salesforce, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.program
is 'Name of the Livongo program, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.solution_name
is 'The Whole Person solution that is anchored by this program (if any).';

comment on column nonpii.sfdc_client_contract_program_monthly_history.solution_program_type
is 'The type of Whole Person program: one of ''Standalone'', ''WP Anchor'', ''WP Non-Anchor'', or ''WP Non-Anchor + Standalone''.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.incentive_criteria
is 'Description of the incentive criteria, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.incentive_language
is 'Language to describe the program''s incentives, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.launch_date
is 'Actual launch date of the client program under this contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.member_recruitment_began
is 'Date when recruitment began for this program under the client contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.outreach_stratification
is 'Letter grade assigned to this program under the client contract, from nonpii.sfdc_client_contracts.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.recruitable_population
is 'Number of people recruitable into this program under this client contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.registration_status
is 'Identifies whether new members may currently enroll into this program under this client contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.billing_partner_admin_fee
is 'Fee paid to the billing partner under this client contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.consecutive_inactive_months_to_lapsed
is 'If the client has a Lapsed Criteria, this is the number of months of inactivity on the program that causes the member to become unbillable, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.enrollment_cap
is 'Maximum number of members that can be billed under this program contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.lapsed_criteria
is 'The conditions under which enrolled members stop being "billable" under the terms of this program contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.participant_term_minimum_months
is 'Minimum number of months we may bill for members on this program, regardless whether they deactivate, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.partner_pass_through_price
is 'Pricing detail for this program, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.replacement_fee
is 'Device replacement fee for members under this client contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.up_front_per_member
is 'Up front cost for the program under this client contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.product_name
is 'Name of the program "product" variant offered under this contract, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.pmpm
is 'The monthly fee per member on the program, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.condition
is 'Name of the medical condition addressed by this program, from nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.began_as_pilot
is 'True iff this program started as a limited pilot for the client. From nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.cross_sell_recruitment_began
is 'If this program was promoted as a cross-sell to members on another program, this is the date when the cross-sell began. From nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.ready_for_automation
is 'True iff recruitment refreshes can be automated for members covered under this contract. From nonpii.sfdc_client_contracts.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.incentive_for_automation
is 'If automated recruitment refreshes are enabled, this is the type of incentive that may be offered. From nonpii.sfdc_client_contracts.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.use_contract_path_for_marketing
is 'True iff the partner identified as the ''Contract Path'' can be used for enrollment marketing. From nonpii.sfdc_client_contracts.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.automated_enrollment_injection
is 'True iff this program permits new recruitables to be automatically injected into enrollment campaigns. From nonpii.sfdc_client_contract_programs.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.incentives_for_usage
is 'True iff we may use incentives to promote program usage. From nonpii.sfdc_client_contracts';

comment on column nonpii.sfdc_client_contract_program_monthly_history.exclude_incentive_type
is 'If set, this type of incentive should not be used for any members for any programs under this contract. From nonpii.sfdc_client_contracts';

comment on column nonpii.sfdc_client_contract_program_monthly_history.hold_member_marketing
is 'True iff we should not do any member marketing under all programs under this contract. From nonpii.sfdc_client_contracts';

comment on column nonpii.sfdc_client_contract_program_monthly_history.member_comms_need_client_approval
is 'True if the client requires approval of member communications. From nonpii.sfdc_client_contracts';

comment on column nonpii.sfdc_client_contract_program_monthly_history.cobranding_preferences
is 'Shows whether cobranding is based on the Client, Partner, or both. From nonpii.sfdc_client_contracts';

comment on column nonpii.sfdc_client_contract_program_monthly_history.cobranding_channels
is 'Contains a semicolon-separated list of channels that require cobrandinng. From nonpii.sfdc_client_contracts';

comment on column nonpii.sfdc_client_contract_program_monthly_history.u18_marketing
is 'True iff we may market to eligible recruitables under age 18. From nonpii.sfdc_client_contracts';

comment on column nonpii.sfdc_client_contract_program_monthly_history.enrollment_marketing_blocked
is 'True iff all enrollment marketing is blocked for this contract. From nonpii.sfdc_client_contracts';

comment on column nonpii.sfdc_client_contract_program_monthly_history.initial_targeted_marketing
is 'Date of our first targeted marketing, or null if that isn''t available for this program. (From SFDC Contract.Initial_Targeted_Marketing__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.multi_program_discount_price
is 'Discount price of a program if member enrolled more than one programs . (From SFDC Contract.Multiprogram_Discount__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.participants
is 'Number of participant for the contract';

comment on column nonpii.sfdc_client_contract_program_monthly_history.pepm
is 'The monthly fee per employee on the program.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.member_eligibility_criteria
is 'Types of eligibility scopes allowed by this client. From nonpii.sfdc_client_contracts.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.health_plan_customizations
is 'If the program is offered through a health plan that has significantly changed the program mechanics, this describes that program customization. (From SFDC Contract.Partner_Customizations__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.partner_fee_type
is 'The type of billing partner fee, ADMIN_FEE applies to active members while REFERRAL_FEE applies to both active members and PTM members(early termination).';

comment on column nonpii.sfdc_client_contract_program_monthly_history.tier_two_partner_fee_start_month
is 'How many months after member first became billable should we use tier two partner fee.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.tier_two_partner_fee
is 'The partner fee we use after user has been billed for certain number of months.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.tier_two_pppm_start_month
is 'How many months after member first became billable should we use tier two pppm fee.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.tier_two_pppm
is 'The pppm fee we use after user has been billed for certain number of months.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.tier_three_pppm_start_month
is 'How many months after member first became billable should we use tier three pppm fee.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.tier_three_pppm
is 'The pppm fee we use after user has been billed for certain number of months.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.livongo_led
is 'Will be true if the client permits Livongo-led marketing under this contract. (From SFDC Contract.Livongo_Led__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.targeted_recruitable_data
is 'Flag for whether recruitable data is enabled ( From SFDC Contract.Targeted_Recruitable_Data__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.disable_bh_coaching
is 'Flag for whether BH coaching is disabled';

comment on column nonpii.sfdc_client_contract_program_monthly_history.billing_method
is 'The means by which Livongo bills the client under this contract. (From SFDC Contract.Billing_Method__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.disable_bh_teletherapy
is 'Flag for whether Disable Teletherapy flag is enabled ( From SFDC Contract.Disable_Teletherapy__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.claims_configuration
is 'Flag for claims configuration per program ( From SFDC Contract.Claims_Configuration__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.program_platform
is 'If the program is offered on more than one platform managed by Livongo, this will identify which platform is being used in this contract, example myStrength. (From SFDC Contract.Program_Platform_Version__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.lost_damaged_device_1
is 'name, model of the first device damaged or lost';

comment on column nonpii.sfdc_client_contract_program_monthly_history.lost_damaged_device_2
is 'name, model of the second device damaged or lost';

comment on column nonpii.sfdc_client_contract_program_monthly_history.lost_damaged_device_price_2
is 'price of the second device damaged or lost';

comment on column nonpii.sfdc_client_contract_program_monthly_history.bill_early_terminated_claims
is 'A boolean flag that determines whether we have to calculate early termed claims as bulk for terminated members, this config comes from SFDC.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.invoice_prefix
is 'Invoice prefix used for the client.';

comment on column nonpii.sfdc_client_contract_program_monthly_history.lowercase_registration_code
is 'Client requires their registration code to be lowercase. (From SFDC Contract.Lowercase_Registration_Code__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.remove_unlimited
is 'True if unlimited should be removed from assets. (From SFDC Contract.Remove_Unlimited__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.x100_percent_paid_for_by
is 'Help Text from SF: Client preferred alternative to mention of 100% paid. (From SFDC Contract.X100_paid_for_by__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.custom_campaign
is 'Type of custom campaign that the client require, possible multiple selection values separated by semicolons (From SFDC Contract.Custom_Campaign__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.phone_campaign
is 'Type of phone campaign that the client require (From SFDC Contract.Phone_Campaign__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.campaign_lifecycle_participation
is 'Ongoing campaigns that the client allows us to send (From SFDC Contract.Campaign_Lifecycle_Participation__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.campaign_type
is 'The client allows our optimized enrollment plan, or requires custom accommodation (From SFDC Contract.Campaign_Type__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.enrollment_on_autopilot
is 'Denotes if we are allowed to send out enrollment communications without client approval (From SFDC Contract.Enrollment_on_Autopilot__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.low_acuity_price
is 'The pppm fee we use for members in maintenance mode, which is different from the regular pricing (From SFDC Contract.Low_Acuity_Price__c)';

comment on column nonpii.sfdc_client_contract_program_monthly_history.provider_based_care
is 'Provider Based Care (PBC, aka Chronic Care Completion) is enabled (From SFDC Contract.provider_based_care__c)';
