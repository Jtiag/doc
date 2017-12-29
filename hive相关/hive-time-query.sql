-------------------------------------------------------------------------------------------------------------------
// 按天实验
select to_date(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss')) from device_post;
select to_date(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss')) from device_opt;
// 按月实验
select month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd')) from device_opt;
// 表选择 
bluetooth_data_gome
c2c_post
device_fault
device_opt
device_post
door_lock_msg
haier_data_gome
value_data_gome
// 按天查询
select to_date(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss')),count(*) from device_opt group by to_date(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss'));

hive -S -e "use bigdata;select to_date(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss')),count(*) from device_post group by to_date(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss'));" > device_post_day.txt
------------------------------------------------------------------------------------------------------------------
// 按月查询
select month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss')),count(*) from c2c_post group by month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss'));

hive -S -e "use bigdata;select month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss')),count(*) from device_post group by month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss'));" > device_post_month1.txt








