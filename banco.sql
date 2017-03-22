--Criacao de todo Database



-- template

CREATE TABLE `sys`.`Template` (
  `idTemplate` INT NOT NULL,
  `idConta` INT NULL,
  `tipoTemplate` VARCHAR(55) NULL,
  `descricao` VARCHAR(55) NULL,
  PRIMARY KEY (`idTemplate`));

--alter table
ALTER TABLE `geracaoMassa`.`template` 
ADD COLUMN `owner` VARCHAR(45) NULL AFTER `descricao`;



--Account
CREATE TABLE `geracaoMassa`.`ACCOUNT` (
  `id` INT NOT NULL,
  `FaturaID` INT NOT NULL,
  `categoria` INT NULL,
  `VipCode` INT NULL,
  `ParentFaturaId` INT NULL,
  `ActiveDate` DATETIME NULL,
  `CeaseDate` DATETIME NULL,
  `MessageGroup` INT NULL,
  `ServiceCenter` INT NULL,
  `TaxExempt` VARCHAR(5) NULL,
  `BillPeriod` VARCHAR(3) NULL,
  `BillFormat` INT NULL,
  `marketCode` INT NULL,
  `RateClass` INT NULL,
  `PaymentMethod` INT NULL,
  `NomeSite` VARCHAR(55) NULL,
  `CidadeCliente` VARCHAR(60) NULL,
  `EstadoCliente` VARCHAR(60) NULL,
  `CEPCliente` VARCHAR(12) NULL,
  `EnderecoPagamento` VARCHAR(60) NULL,
  `CidadePagamento` VARCHAR(60) NULL,
  `EstadoPagamento` VARCHAR(60) NULL,
  `CEPPagamento` VARCHAR(12) NULL,
  PRIMARY KEY (`id`));


--SI
CREATE TABLE `geracaoMassa`.`SI` (
  `FaturaId` VARCHAR(50) NOT NULL,
  `SIfaturaID` VARCHAR(50) NULL,
  `StartDate` DATETIME NULL,
  `RateClass` INT NULL,
  `EnderecoSI` VARCHAR(55) NULL,
  `EstadoSI` VARCHAR(55) NULL,
  `CEPSI` VARCHAR(12) NULL,
  `Equip_config_code` INT NULL,
  `idTrail` INT NULL,
  PRIMARY KEY (`FaturaId`));


--TRAIL
CREATE TABLE `geracaoMassa`.`TRAIL` (
  `Trail_ID` INT NOT NULL,
  `PONTA_A` VARCHAR(45) NULL,
  `PONTA_B` VARCHAR(45) NULL,
  `NUM_CONTRATO` VARCHAR(45) NULL,
  `TRAIL_ID_BDCONFIG` VARCHAR(55) NULL,
  PRIMARY KEY (`Trail_ID`));


--External ID
CREATE TABLE `geracaoMassa`.`External_ID` (
  `id` INT NOT NULL,
  `Numtelefone` VARCHAR(45) NULL,
  `dataAtivacao` DATETIME NULL,
  `DataDesativacao` DATETIME NULL,
  `externalIdType` INT NULL,
  PRIMARY KEY (`id`));


ALTER TABLE `geracaoMassa`.`template` 
CHANGE COLUMN `idtemplate` `idtemplate` INT(11) NOT NULL AUTO_INCREMENT ;


ALTER TABLE `geracaoMassa`.`SI` 
CHANGE COLUMN `FaturaId` `FaturaId` VARCHAR(50) NULL ,
ADD COLUMN `idSI` INT NOT NULL AUTO_INCREMENT AFTER `idTrail`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`idSI`);


ALTER TABLE `geracaoMassa`.`ACCOUNT` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT ;





