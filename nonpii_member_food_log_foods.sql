create table nonpii.member_food_log_foods (
user_id         BIGINT NOT NULL,
user_pid        VARCHAR(16),
user_uuid       CHAR(36) NOT NULL,
food_log_id     INT,
food_id         INT
)
distkey (user_id)
compound sortkey (user_id, food_log_id);

comment on table nonpii.member_food_log_foods is 'User interactions with logging food';
comment on column nonpii.member_food_log_foods.user_id is 'user_id from nonpii.members';
comment on column nonpii.member_food_log_foods.user_pid is 'user_pid from nonpii.members shared with clients and partners';
comment on column nonpii.member_food_log_foods.user_uuid is 'user_uuid from nonpii.members used internally within CCM/Livongo';
comment on column nonpii.member_food_log_foods.food_log_id is 'id of food log from food.food_logs';
comment on column nonpii.member_food_log_foods.food_id is 'id of foods from food.foods';

alter table nonpii.member_food_log_foods owner to etl;