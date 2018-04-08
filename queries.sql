-- 1

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_allownedmovies` AS
    SELECT 
        `movie`.`id` AS `id`,
        `movie`.`title` AS `title`,
        `movie`.`genre` AS `genre`,
        `movie`.`actor` AS `actor`,
        `movie`.`director` AS `director`,
        `movie`.`releaseYear` AS `releaseYear`,
        `movie`.`isLeased` AS `isLeased`
    FROM
        `movie`;


select * from v_allownedmovies;


-- 2

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_allhorrormovies` AS
    SELECT 
        `movie`.`title` AS `title`
    FROM
        `movie`
    WHERE
        (`movie`.`genre` = 'Skräck');
				
select * from v_allhorrormovies;
				
				
-- 3	

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_allrentedmovies` AS
    SELECT 
        CONCAT(`c`.`firstName`, ' ', `c`.`lastName`) AS `customer`,
        CONCAT(`e`.`firstName`, ' ', `e`.`lastName`) AS `employee`,
        `m`.`title` AS `movieTitle`
    FROM
        (((`rentinfo` `ri`
        JOIN `customer` `c` ON ((`ri`.`customerId` = `c`.`id`)))
        JOIN `employee` `e` ON ((`ri`.`employeeId` = `e`.`id`)))
        JOIN `movie` `m` ON ((`ri`.`movieId` = `m`.`id`)))
    WHERE
        ((`m`.`isLeased` = 1)
            AND ISNULL(`ri`.`endDate`));	
						
select * from v_allrentedmovies;


-- 4

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_delayedreturn` AS
    SELECT 
        `m`.`title` AS `movieTitle`,
        CONCAT(`c`.`firstName`, ' ', `c`.`lastName`) AS `customer`
    FROM
        ((`rentinfo` `ri`
        JOIN `customer` `c` ON ((`ri`.`customerId` = `c`.`id`)))
        JOIN `movie` `m` ON ((`ri`.`movieId` = `m`.`id`)))
    WHERE
        (((CURDATE() - `ri`.`startDate`) >= 4)
            AND ISNULL(`ri`.`endDate`));
						
select * from v_delayedreturn;


-- 5

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_norentedmoviesperemployee` AS
    SELECT 
        CONCAT(`e`.`firstName`, ' ', `e`.`lastName`) AS `employee`,
        COUNT(`ri`.`employeeId`) AS `totalLeasedMovies`
    FROM
        (`employee` `e`
        LEFT JOIN `rentinfo` `ri` ON ((`ri`.`employeeId` = `e`.`id`)))
    GROUP BY `ri`.`employeeId`;
		
select * from v_norentedmoviesperemployee;


-- 6

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `v_statisticsoflastmonthtop5rentedmovies` AS
    SELECT 
        COUNT(`statistics`.`movieTitle`) AS `noOfRentals`,
        `statistics`.`movieTitle` AS `movieTitle`
    FROM
        `statistics`
    WHERE
        ((YEAR(`statistics`.`rentalDate`) = YEAR((CURDATE() - INTERVAL 1 MONTH)))
            AND (MONTH(`statistics`.`rentalDate`) = MONTH((CURDATE() - INTERVAL 1 MONTH))))
    GROUP BY `statistics`.`movieTitle`
    ORDER BY COUNT(`statistics`.`movieTitle`) DESC
    LIMIT 5;
		
select * from v_statisticsoflastmonthtop5rentedmovies;
		

						