DELIMITER //

CREATE TRIGGER before_user_resource_insert
BEFORE INSERT ON user_resource
FOR EACH ROW
BEGIN
    DECLARE resource_available BOOLEAN;

    -- Get availability of the resource
    SELECT availability
    INTO resource_available
    FROM resources
    WHERE resource_id = NEW.resource_id;

    -- If resource is not available, block insert
    IF resource_available = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Resource is not available';
    END IF;
END//

DELIMITER ;

DELIMITER //

CREATE TRIGGER before_resource_update
BEFORE UPDATE ON resources
FOR EACH ROW
BEGIN
    DECLARE assigned_count INT;

    SELECT COUNT(*)
    INTO assigned_count
    FROM user_resource
    WHERE resource_id = OLD.resource_id;

    IF NEW.availability = FALSE AND assigned_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot mark resource unavailable: it is currently assigned';
    END IF;
END//

DELIMITER ;

DELIMITER //

CREATE TRIGGER before_resource_delete
BEFORE DELETE ON resources
FOR EACH ROW
BEGIN
    DECLARE assigned_count INT;

    SELECT COUNT(*)
    INTO assigned_count
    FROM user_resource
    WHERE resource_id = OLD.resource_id;


    IF assigned_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete resource: it is assigned to users';
    END IF;
END//

DELIMITER ;
