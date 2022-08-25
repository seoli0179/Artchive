CREATE TABLE `noteLike` (
    `noteId` int NOT NULL AUTO_INCREMENT,
    `userId` varchar(50) NOT NULL,
    FOREIGN KEY (`noteId`) REFERENCES `note` (`noteId`),
    FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
);