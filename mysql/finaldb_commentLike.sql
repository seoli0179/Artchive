CREATE TABLE `commentLike` (
   `commentId` int NOT NULL AUTO_INCREMENT,
   `userId` varchar(50) NOT NULL,
   FOREIGN KEY (`commentId`) REFERENCES `comment` (`commentId`),
   FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
);