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


				