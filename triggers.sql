-- Drop the triggers if they exist
DROP TRIGGER IF EXISTS tr_ins_actor;
DROP TRIGGER IF EXISTS tr_ins_dir;
DROP TRIGGER IF EXISTS after_delete;

-- Create the tr_ins_actor trigger
DELIMITER $$
CREATE TRIGGER tr_ins_actor
BEFORE INSERT ON actors
FOR EACH ROW
BEGIN
    SET NEW.actor_first_name = UPPER(NEW.actor_first_name);
    SET NEW.actor_last_name = UPPER(NEW.actor_last_name);
END$$
DELIMITER ;

-- Create the tr_ins_dir trigger
DELIMITER $$
CREATE TRIGGER tr_ins_dir
BEFORE INSERT ON directors
FOR EACH ROW
BEGIN
    SET NEW.dir_first_name = UPPER(NEW.dir_first_name);
    SET NEW.dir_last_name = UPPER(NEW.dir_last_name);
END$$
DELIMITER ;

-- Create the after_delete trigger
DELIMITER $$
CREATE TRIGGER after_delete
AFTER DELETE ON actors, movies, directors, genres, movie_cast, movie_directors, movie_genres 
FOR EACH ROW
BEGIN
    DECLARE db_user VARCHAR(50);
    SELECT USER() INTO db_user;
    INSERT INTO audit (
        contact_id,
        deleted_date,
        deleted_by
    )
    VALUES (
        OLD.contact_id,
        SYSDATE(),
        db_user
    );
END$$
DELIMITER ;
