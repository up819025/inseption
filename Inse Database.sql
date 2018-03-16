CREATE DATABASE Inse_Database;

CREATE TABLE Users(
 UserID int not null AUTO_INCREMENT,
 LastName char(255) not null,
 FirstName char(255) not null,
 Username char(30) not null,
 Email varchar(50) not null,
 Password varchar(50) not null,
 PRIMARY KEY (UserID),
 UNIQUE (Username)
 );

CREATE TABLE LoginTracking(
  UserID int,
  LoginID int not null AUTO_INCREMENT,
  LoginDateTime datetime not null,S
  PRIMARY KEY (LoginID)
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
)

CREATE TABLE Events(
  EventID int not null AUTO_INCREMENT,
  UserID int,
  EvCreationDateTime datetime not null,
  EvDeadline datetime not null,
  EventInformation text not null,
  EventCompleted char(1) NOT NULL DEFAULT "N";
  PRIMARY KEY (EventID)
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
)

CREATE TABLE Notes(
  NoteID int not null AUTO_INCREMENT,
  UserID int,
  NtCreationDateTime datetime not null,
  NtDeadline datetime not null,
  NoteInformation text not null,
  NoteCompleted char(1) NOT NULL DEFAULT "N";
  PRIMARY KEY (NoteID)
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
)
