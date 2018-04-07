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
				
				
				