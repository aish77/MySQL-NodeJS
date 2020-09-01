DELIMITER $$

CREATE TRIGGER must_be_adult
BEFORE INSERT ON users FOR EACH ROW 
BEGIN
 IF NEW.age < 18
 THEN
 SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'Must be adult! ';
  END IF;
  END;

  $$

  DELIMITER ;   


--   on delete triggers we have access to old 
DELIMITER $$

CREATE TRIGGER create_unfollow
    AFTER DELETE ON follows FOR EACH ROW 
BEGIN
    INSERT INTO unfollows
    SET follower_id = OLD.follower_id,
        followee_id = OLD.followee_id;
END$$

DELIMITER ;


-- Preventing seft followers trigger
DELIMITER $$

CREATE TRIGGER example_cannot_follow_self
     BEFORE INSERT ON follows FOR EACH ROW
     BEGIN
          IF NEW.follower_id = NEW.following_id
          THEN
               SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Cannot follow yourself, silly';
          END IF;
     END;
$$

DELIMITER ;


