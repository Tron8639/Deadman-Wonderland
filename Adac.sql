ALTER TABLE  `players` ADD (
`adac_licenses` TEXT NULL 
);

ALTER TABLE  `players` ADD (
`adaclevel` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0'
);

CREATE DEFINER=`arma3`@`localhost` PROCEDURE `resetImpound`()
BEGIN
	UPDATE vehicles SET `active`= 0 WHERE `active`= 2;
END$$
