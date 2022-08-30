DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `course` (
	courseId	INT NOT NULL AUTO_INCREMENT,
	`userId`	varchar(20) NOT NULL,
	`exhbnId`	int not null,
	courseTitle	varchar(50)	NULL,
	courseTag	varchar(50)	NULL,
	courseView	int	default 1,
	courseLike	int	default 0,
	courseComment	int	default 0,
	courseState	int	default 1,
	createdAt	datetime default now(),
	updatedAt	datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	courseSitesArr	varchar(2000)	NULL,
	courseAddressArr	varchar(2000)	NULL,
    courseMemoArr varchar(2000) null,
    primary key (courseId),
    CONSTRAINT `FK_course_userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
    CONSTRAINT `FK_course_exhbnId` FOREIGN KEY (`exhbnId`) REFERENCES `exhbn` (`exhbnId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

 INSERT INTO course (courseId, userId, exhbnId, courseTitle, courseTag, courseView, courseLike, courseComment, courseState, createdAt, updatedAt, courseSitesArr, courseAddressArr, courseMemoArr) 
   VALUES (1,"user",205263, "테스트 코스", "테스트코스;;테스트태그;;",5,3,0,1,default,default,"박물관;;카페;;식당","박물관주소;;카페주소;;식당주소","박물관 메모사항;;카페 메모사항;;식당 메모사항"),
		(2,"user", 205263, "테스트 코스22", "테스트코스;;테스트태그;;",5,3,0,1,default,default,"박물관;;카페;;식당","박물관주소;;카페주소;;식당주소","박물관 메모사항2;;카페 메모사항2;;식당 메모사항2");

select * from course;

select * from course inner join exhbn on course.exhbnId = exhbn.exhbnId;

 select * from course inner join exhbn on course.exhbnId = exhbn.exhbnId inner join user on course.userId = user.userId;
 
select * from course inner join exhbn on course.exhbnId = exhbn.exhbnId inner join user on course.userId = user.userId
        WHERE courseId=1;
