CREATE SCHEMA `winterproject2020`;
CREATE TABLE `winterproject2020`.`rsc` (
  `Name` VARCHAR(30) NOT NULL,
  `ExpectedYield` INT NULL,
  `MinYield` INT NULL,
  `RunSize` INT NULL,
  PRIMARY KEY (`Name`));
CREATE TABLE `winterproject2020`.`product` (
  `Name` VARCHAR(30) NOT NULL,
  `ExpectedYield` INT NULL,
  `MinYield` INT NULL,
  `TTL` INT NULL,
  PRIMARY KEY (`Name`));
CREATE TABLE `winterproject2020`.`lossreason` (
  `Name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Name`));
CREATE TABLE `winterproject2020`.`employee` (
  `Name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Employee`));
CREATE TABLE `winterproject2020`.`trackedobject` (
  `Name` VARCHAR(30) NOT NULL,
  `Product` VARCHAR(30) NULL,
  `Qty` INT NULL,
  `MinYield` INT NULL,
  `StartQty` INT NULL,
  PRIMARY KEY (`Name`));
CREATE TABLE `winterproject2020`.`txndata` (
  `TrackedObject` VARCHAR(30) NOT NULL,
  `Timestamp` TIMESTAMP NULL,
  `Rsc` VARCHAR(30) NULL,
  `QtyIn` INT NULL,
  `QtyOut` INT NULL,
  `LossReason` VARCHAR(30) NULL,
  `Employee` VARCHAR(30) NULL,
  `TxnType` VARCHAR(30) NULL,
  PRIMARY KEY (`TrackedObject`));