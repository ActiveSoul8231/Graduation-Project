-- m_id, m_type, m_article_type_id, m_post_status, m_area_id, m_area_detail, m_launch_date, m_u_id, m_del_status, m_title, m_article_time, m_image

-- t3.m_id, t3.m_type, t4.res_name, t3.m_post_status, t3.area_name, t3.m_area_detail, t3.m_launch_date, t3.m_u_id, t3.m_del_status, t3.m_title, t3.m_article_time, t3.m_image

select * from website.tb_find_or_discover where m_type = 1

-- 两表联查
SELECT t1.m_id, t1.m_type, t1.m_article_type_id, t1.m_post_status, t2.area_name, t1.m_area_detail, t1.m_launch_date, t1.m_u_id, t1.m_del_status, t1.m_title, t1.m_article_time, t1.m_image FROM (

select * from tb_find_or_discover where m_type = 1

) t1 LEFT JOIN tb_area_dictionary t2 ON t1.m_area_id=t2.area_id


select t3.m_id, t3.m_type, t4.res_name as t3.m_article_type_id, t3.m_post_status, t3.area_name as t3.m_area_id, t3.m_area_detail, t3.m_launch_date, t3.m_u_id, t3.m_del_status, t3.m_title, t3.m_article_time, t3.m_image from (

	SELECT t1.m_id, t1.m_type, t1.m_article_type_id, t1.m_post_status, t2.area_name, t1.m_area_detail, t1.m_launch_date, t1.m_u_id, t1.m_del_status, t1.m_title, t1.m_article_time, t1.m_image FROM (

select * from tb_find_or_discover

) t1 LEFT JOIN tb_area_dictionary t2 ON t1.m_area_id=t2.area_id

) t3 LEFT JOIN tb_article_dictionary t4 ON t3.m_article_type_id=t4.res_id





select t3.m_id, t3.m_type, t4.res_name as m_article_type_id, t3.m_post_status, t3.area_name as m_area_id, t3.m_area_detail, t3.m_launch_date, t3.m_u_id, t3.m_del_status, t3.m_title, t3.m_article_time, t3.m_image from (

SELECT t1.m_id, t1.m_type, t1.m_article_type_id, t1.m_post_status, t2.area_name, t1.m_area_detail, t1.m_launch_date, t1.m_u_id, t1.m_del_status, t1.m_title, t1.m_article_time, t1.m_image FROM (

select * from tb_find_or_discover

) t1 LEFT JOIN tb_area_dictionary t2 ON t1.m_area_id=t2.area_id

) t3 LEFT JOIN tb_article_dictionary t4 ON t3.m_article_type_id=t4.res_id ORDER BY t3.m_id desc


-- 后台加载查所有
select t5.m_id, t5.m_type, t5.m_article_type_id, t5.m_post_status, t5.m_area_id, t5.m_area_detail, t5.m_launch_date, t6.u_name AS m_u_id, t5.m_del_status, t5.m_title, t5.m_article_time, t5.m_image from(

select t3.m_id, t3.m_type, t4.res_name as m_article_type_id, t3.m_post_status, t3.area_name as m_area_id, t3.m_area_detail, t3.m_launch_date, t3.m_u_id, t3.m_del_status, t3.m_title, t3.m_article_time, t3.m_image from (

SELECT t1.m_id, t1.m_type, t1.m_article_type_id, t1.m_post_status, t2.area_name, t1.m_area_detail, t1.m_launch_date, t1.m_u_id, t1.m_del_status, t1.m_title, t1.m_article_time, t1.m_image FROM (

select * from tb_find_or_discover

) t1 LEFT JOIN tb_area_dictionary t2 ON t1.m_area_id=t2.area_id

) t3 LEFT JOIN tb_article_dictionary t4 ON t3.m_article_type_id=t4.res_id 

)t5 LEFT JOIN tb_user t6 ON t5.m_u_id=t6.u_id ORDER BY t5.m_id desc


select t5.m_id, t5.m_type, t5.m_article_type_id, t5.m_post_status, t5.m_area_id, t5.m_area_detail, t5.m_launch_date, t6.u_name AS m_u_id, t5.m_del_status, t5.m_title, t5.m_article_time, t5.m_image from(select t3.m_id, t3.m_type, t4.res_name as m_article_type_id, t3.m_post_status, t3.area_name as m_area_id, t3.m_area_detail, t3.m_launch_date, t3.m_u_id, t3.m_del_status, t3.m_title, t3.m_article_time, t3.m_image from (SELECT t1.m_id, t1.m_type, t1.m_article_type_id, t1.m_post_status, t2.area_name, t1.m_area_detail, t1.m_launch_date, t1.m_u_id, t1.m_del_status, t1.m_title, t1.m_article_time, t1.m_image FROM (select * from tb_find_or_discover) t1 LEFT JOIN tb_area_dictionary t2 ON t1.m_area_id=t2.area_id) t3 LEFT JOIN tb_article_dictionary t4 ON t3.m_article_type_id=t4.res_id )t5 LEFT JOIN tb_user t6 ON t5.m_u_id=t6.u_id ORDER BY t5.m_id desc


-- ********测试*******************************************************

select t5.m_id, t5.m_type, t5.m_article_type_id, t5.m_post_status, t5.m_area_id, t5.m_area_detail, t5.m_launch_date, t6.u_name, t5.m_del_status, t5.m_title, t5.m_article_time, t5.m_image from(

select t3.m_id, t3.m_type, t4.res_name as m_article_type_id, t3.m_post_status, t3.area_name as m_area_id, t3.m_area_detail, t3.m_launch_date, t3.m_u_id, t3.m_del_status, t3.m_title, t3.m_article_time, t3.m_image from (

SELECT t1.m_id, t1.m_type, t1.m_article_type_id, t1.m_post_status, t2.area_name, t1.m_area_detail, t1.m_launch_date, t1.m_u_id, t1.m_del_status, t1.m_title, t1.m_article_time, t1.m_image FROM (

select * from tb_find_or_discover

) t1 LEFT JOIN tb_area_dictionary t2 ON t1.m_area_id=t2.area_id

) t3 LEFT JOIN tb_article_dictionary t4 ON t3.m_article_type_id=t4.res_id 

)t5 LEFT JOIN (select u_Id,u_name,u_telephone,u_email FROM tb_user GROUP BY u_id) t6 ON t5.m_u_id=t6.u_id where t5.m_title like'%在%'  ORDER BY t5.m_id desc




select t5.m_id, t5.m_type, t5.m_article_type_id, t5.m_post_status, t5.m_area_id, t5.m_area_detail, t5.m_launch_date, t6.u_name, t5.m_del_status, t5.m_title, t5.m_article_time, t5.m_image from(select t3.m_id, t3.m_type, t4.res_name as m_article_type_id, t3.m_post_status, t3.area_name as m_area_id, t3.m_area_detail, t3.m_launch_date, t3.m_u_id, t3.m_del_status, t3.m_title, t3.m_article_time, t3.m_image from (SELECT t1.m_id, t1.m_type, t1.m_article_type_id, t1.m_post_status, t2.area_name, t1.m_area_detail, t1.m_launch_date, t1.m_u_id, t1.m_del_status, t1.m_title, t1.m_article_time, t1.m_image FROM (select * from tb_find_or_discover) t1 LEFT JOIN tb_area_dictionary t2 ON t1.m_area_id=t2.area_id) t3 LEFT JOIN tb_article_dictionary t4 ON t3.m_article_type_id=t4.res_id )t5 LEFT JOIN (select u_Id,u_name,u_telephone,u_email FROM tb_user GROUP BY u_id) t6 ON t5.m_u_id=t6.u_id ORDER BY t5.m_id desc



select count(m_id) from tb_find_or_discover


-- 用户发布信息条数
SELECT t1.u_id,t1.u_name,t1.u_telephone,t1.u_email,(select count(m_id) from tb_find_or_discover WHERE m_u_id=t1.u_id) as u_password,u_level,u_recovery_status FROM tb_user t1 where u_level in (1,2)



-- 查询失物招领且没被删除的信息   limit 0,2     ORDER BY m_launch_date DESC    GROUP BY m_launch_date
SELECT m_type ,COUNT(m_id) as m_id,m_launch_date from tb_find_or_discover WHERE m_type in (0,1) GROUP BY m_launch_date,m_type ORDER BY m_launch_date DESC limit 0,7


select m_id,m_type,m_launch_date from tb_find_or_discover t WHERE t.m_type IN(select m_type from tb_find_or_discover group by m_type) ORDER BY t.m_launch_date DESC;









