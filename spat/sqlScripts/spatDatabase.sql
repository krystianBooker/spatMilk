USE [master]
GO
CREATE DATABASE [spatLight]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyQuestions](
	QuestionId int IDENTITY(1,1),
	QuestionText varchar(max) NOT NULL,
	QuestionDescription varchar(max) NOT NULL,
	QuestionType int NOT NULL,
	PRIMARY KEY (QuestionId)
);

CREATE TABLE Answers (
    AnswerId int IDENTITY(1,1),
    QuestionId int NOT NULL,
    AnswerText varchar(max),
	AnswerDescription varchar(max),
	AnswerWeight varchar(max),
	AnswerImagePath varchar(max),
	stats int,
    PRIMARY KEY (AnswerId),
    FOREIGN KEY (QuestionId) REFERENCES SurveyQuestions(QuestionId)
);

CREATE TABLE Admin(
	AdminId int IDENTITY(1,1),
	Password varchar(max) NOT NULL,
	PRIMARY KEY (AdminId)
);