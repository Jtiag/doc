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

hive -S -e 'use bigdata;select to_date(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss')),count(*) from device_post group by to_date(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss'));' > device_post_day.txt
------------------------------------------------------------------------------------------------------------------
// 按月查询
select month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss')),count(*) from c2c_post group by month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss'));

hive -S -e 'use bigdata;select month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss')),count(*) from device_post group by month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss'));' > device_post_month1.txt

// 查询海尔日志数据(c2c_post,device_post)
select month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss')),count(*) from device_post where gid='wbssoc' or gid='vvbvmu' or gid='wydtym' or gid='xdppxm' or gid='wegwlb' or gid='jngina' or gid='cpqipg' or gid='pjtvdt' or gid='rjnkyr' or gid='icnlcj' or gid='luuydv' or gid='kccrec' or gid='kmpmkb' or gid='jgowik' or gid='kkfrmv' or gid='azhihd' or gid='pmpses' or gid='fqfjfq' or gid='shvfng' or gid='imzagq' or gid='xtaate' or gid='eysbeq' or gid='dbvyyi' or gid='fktgfx' or gid='nmbhcu' or gid='pqgcde' or gid='npayew' or gid='rmvfdu' or gid='xftbds' or gid='erocgq' or gid='bdybku' or gid='pkiaiz' or gid='jggflp' or gid='dfdcmd' or gid='psbdja' or gid='rhkccw' or gid='ywxcju' or gid='xjhqxz' or gid='pvrpdh' or gid='fmyfgs' or gid='jaixgo' or gid='hjwhic' or gid='rqjqqq' or gid='jgcbel' or gid='seutrt' or gid='teqknt' or gid='sjeohj' or gid='iikoyw' or gid='tfpytu' or gid='xhhrer' or gid='jzzjji' or gid='ctqecs' or gid='hckhbv' or gid='bwgcvy' or gid='kejnni' or gid='ambvwj' or gid='icyjij' or gid='qfdikg' or gid='bccznd' or gid='vukzgz' or gid='lyfqih' or gid='kjpkbp' or gid='xhsapz' or gid='qnqozq' or gid='kqkdlm' or gid='daaedd' or gid='ddvkzn' or gid='gpbemy' or gid='qrpvzv' or gid='ltxxbl' or gid='yymnyk' or gid='ogaumz' or gid='gssigw' or gid='eawbjh' or gid='qqkdae' or gid='uhibyp' or gid='jrorin' or gid='mxicwl' or gid='awrlyt' or gid='gtgrfd' or gid='ouumus' or gid='aoaixr' or gid='vvyrkk' or gid='euezsp' or gid='xsixxv' or gid='zxnxzx' group by month(from_unixtime(cast(timestamp as bigint),'yyyy-MM-dd HH:mm:ss'));

hive -S -e "use bigdata;set mapreduce.job.reduces=3;select month(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss')),count(1) pv,count(distinct did) uv from c2c_post where gid in ('wbssoc','vvbvmu','wydtym','xdppxm','wegwlb','jngina','cpqipg','pjtvdt','rjnkyr','icnlcj','luuydv','kccrec','kmpmkb','jgowik','kkfrmv','azhihd','pmpses','fqfjfq','shvfng','imzagq','xtaate','eysbeq','dbvyyi','fktgfx','nmbhcu','pqgcde','npayew','rmvfdu','xftbds','erocgq','bdybku','pkiaiz','jggflp','dfdcmd','psbdja','rhkccw','ywxcju','xjhqxz','pvrpdh','fmyfgs','jaixgo','hjwhic','rqjqqq','jgcbel','seutrt','teqknt','sjeohj','iikoyw','tfpytu','xhhrer','jzzjji','ctqecs','hckhbv','bwgcvy','kejnni','ambvwj','icyjij','qfdikg','bccznd','vukzgz','lyfqih','kjpkbp','xhsapz','qnqozq','kqkdlm','daaedd','ddvkzn','gpbemy','qrpvzv','ltxxbl','yymnyk','ogaumz','gssigw','eawbjh','qqkdae','uhibyp','jrorin','mxicwl','awrlyt','gtgrfd','ouumus','aoaixr','vvyrkk','euezsp','xsixxv','zxnxzx','jwujdr','sewnec','rglvbn','tnssug','lyuayj','isqqsf','sxuudv','msiwie','cthlyh','wphpvw','qnhlhi','grvbjr','xxlmog','vpuapp','flwxrh','pynrhc','fddgqw','agkrxw','nmnzmp','woozhb') group by month(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss'));" > haier_result2.txt
--------result is:
c2c_post:269993
device_post:

hive -S -e 'use bigdata; set mapreduce.job.reduces=4; select month(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss')),count(1) pv, 
count(distinct did) uv from device_post where gid in('zzjzhz','yepjpv','usnswl','vvcaza','hfjzgf','hzyril','kdfcuq','fquvbl','sebesn','tnxffs','mxrtxu'
,'epbyxn','oausmz','gnnnuf','olirro','xxjjeu','vcagva','gfxgyg','gmhujq','rpzxpp','kprypj','zzfzlq','duyjvu','svvwcj'
,'xmikxx','nsphzj','mlaxff','hihtmh','lsqius','yhtmjs','dqkekd','lsbsjp','sijrfw','paqmvw','dastbb','rutlrl','sityoo'
,'tsyabk','ryzkmq','yqaqqt','cfrort','hhoowb','unxlfr','jjbqle','mzttms','gpwmbb','cuicpk','eupsdc','fehpfp','vurzzy'
,'fpigcb','radzdy','ldpzxz','wcwxwq','pfwchj','xkukmx','rrpdmx','mffztr','wdlkmc','vvsiuw','xxwhpa','ssdvqa','qgyzke'
,'xtxpua','qxcqsk','nbbmdp','otlvrs','vnnjgv','hnjgjm','pgxpey','wswwss','mhrrhn','snmlwt','uzoeey','zwxhvu','ohaeip'
,'yayafc','vocqha','psemfq','sqldlh','uovypr','mpxpka','llbaoc','ppswvd','tlpbor','sapdsm','zxcwbi','ipwyhh','opvcgr'
,'ezkede','qluxaf','ikmwzx','zdyhyc','wzaexz','xqufyq','iiueqi','djpsch','ihyujl','evxiqs','dmfwii','bhhbnw','isobts'
,'aizcbh','vmdqju','uqyglt','twxxiu','vodokk','xjbwba','okxfcg','ltjxkx','kgusxu','jqotfp','dmdkuu','skqvsi','buykud'
,'aumcaa','zsosst','ffvgjv','rxjjsg','ujzamv','vymaii','jjlpsh','rsbeaz','dmmdtl','ngveuw','kkdzwt','rqmkam','jeiauz'
,'unovvo','raweec','rvkrur','zfstbn','ozudbr','rspqsf','eyuofv','cllxsx','ofeyno','uvcdgd','ashfyu','hezekv','lpmibc'
,'dynqwj','mdsntk','wpbldw','kkjojr','fzgjle','rhjrfe','bawkdt','trwhmz','qkvhqj','gcwtmd','whuhhx','awckix','qbhqat'
,'rnmzdk','zkndnb','snnbgy','vbioet','jmwfib','fgbmzc','xcmjqh','rrtztd','brldch') 
group by month(from_unixtime(cast(substring(timestamp,1,10) as bigint),'yyyy-MM-dd HH:mm:ss'));'> /tmp/test_meidi_month_device.txt

// 使用spark engine
use bigdata;
set hive.execution.engine=spark;
set spark.executor.memory=1g;
set spark.executor.cores=48;
select count(*) from device_post;







