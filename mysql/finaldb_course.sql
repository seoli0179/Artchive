CREATE TABLE course (
	courseId	INT NOT NULL AUTO_INCREMENT ,
	userId	varchar(20)	NOT NULL,
	exhbnId	varchar(50)	NOT NULL,
	courseTitle	varchar(50)	NULL,
	courseTag	varchar(50)	NULL,
	courseView	int	default 1,
	courseLike	int	default 0,
	courseComment	int	default 0,
	courseState	int	default 1,
	createdAt	datetime default now(),
	updatedAt	datetime default now(),
	courseSitesArr	varchar(2000)	NULL,
	courseAddressArr	varchar(100)	NULL,
    primary key (courseId)
);

 INSERT INTO course (courseId, userId, exhbnId, courseTitle, courseTag, courseView, courseLike, courseComment, courseState, createdAt, updatedAt, courseSitesArr, courseAddressArr) 
   VALUES (1,"user",205263, "테스트 코스", "테스트코스;;테스트태그;;",5,3,0,1,default,default,"박물관;;카페;;식당","박물관주소;;카페주소;;식당주소"),
		(2,"user", 205263, "테스트 코스22", "테스트코스;;테스트태그;;",5,3,0,1,default,default,"박물관;;카페;;식당","박물관주소;;카페주소;;식당주소");

select * from course;

select * from course inner join exhbn on course.exhbnId = exhbn.exhbnId;

 select * from course inner join exhbn on course.exhbnId = exhbn.exhbnId inner join user on course.userId = user.userId;
 
select * from course inner join exhbn on course.exhbnId = exhbn.exhbnId inner join user on course.userId = user.userId
        WHERE courseId=1;
