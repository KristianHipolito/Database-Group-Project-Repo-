-- The trigger checks every insertion in the user_resource table
-- The user resource relation will only be allowed if
    -- The resource is available based on its availability status
DELIMITER //

CREATE TRIGGER before_user_resource_insert
BEFORE INSERT ON user_resource
FOR EACH ROW
BEGIN
    DECLARE resource_available BOOLEAN;

    SELECT availability
    INTO resource_available -- Get availability of the resource
    FROM resources
    WHERE resource_id = NEW.resource_id;

    IF resource_available = FALSE THEN     -- If resource is not available, block insert
        SIGNAL SQLSTATE '45000' -- returns error
        SET MESSAGE_TEXT = 'Resource is not available';
            -- error message
    END IF;
END//

DELIMITER ;


-- The trigger checks every update on the resources table's attribute "availability"
    -- only checks if the update is to change the availability to "false"
    -- if there is assigned users to the resource, the trigger will prevent update
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

    -- checks if false
    -- checks if there are assigned users
    IF NEW.availability = FALSE AND assigned_count > 0 THEN
        SIGNAL SQLSTATE '45000' -- returns error
        SET MESSAGE_TEXT = 'Cannot mark resource unavailable: it is currently assigned';
            -- error message
    END IF;
END//

DELIMITER ;


-- this third trigger checks every attempt to delte a resource
-- before a resource can be deleted, the trigger checks if it is assigned to a user
DELIMITER //
CREATE TRIGGER before_resource_delete
BEFORE DELETE ON resources
FOR EACH ROW
BEGIN
    DECLARE assigned_count INT;

    SELECT COUNT(*)
    INTO assigned_count -- determines if a user is assigned to a resource
    FROM user_resource
    WHERE resource_id = OLD.resource_id;

    IF assigned_count > 0 THEN -- the condition that will check the variable for any assignments
        SIGNAL SQLSTATE '45000' -- returns error
        SET MESSAGE_TEXT = 'Cannot delete resource: it is assigned to users'; -- error message
    END IF;
END//
DELIMITER ;


-- 4
-- this trigger checks every insertion on user_resource
    -- if the user handicap status does not align with resource handicap status
    -- the trigger returns error text
DELIMITER //
CREATE TRIGGER check_user_resource_handicap
BEFORE INSERT ON user_resource
FOR EACH ROW
BEGIN
    DECLARE user_handicap BOOLEAN;
    DECLARE resource_handicap BOOLEAN;

    SELECT handicap INTO user_handicap
    FROM users
    WHERE user_id = NEW.user_id;

    SELECT handicap INTO resource_handicap
    FROM resources
    WHERE resource_id = NEW.resource_id;

    IF user_handicap = TRUE AND resource_handicap = FALSE THEN
        SIGNAL SQLSTATE '45000' -- returns error
        SET MESSAGE_TEXT = 'Handicap user cannot be assigned to non-accessible resource';
            -- error message
    END IF;
END//
DELIMITER ;

-- ----------------------------------
-- FUNCTION
DELIMITER //

CREATE FUNCTION UserResourceCount(p_user_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM user_resource
    WHERE user_id = p_user_id;
    RETURN total;
END //

DELIMITER ;



-- Running the function checking the resource count for 

SELECT 
    u.user_id,
    CONCAT(u.user_first_name, ' ', u.user_last_name) AS full_name,
    UserResourceCount(u.user_id) AS resource_count
FROM users u;


-- ----------------------------------
-- STORED PROCEDURE

DELIMITER //
CREATE PROCEDURE procedure_name (param_user_id INT, param_handicap BOOLEAN) 
BEGIN 
    UPDATE users
    SET handicap = param_handicap
    WHERE user_id = param_user_id;
END // 
DELIMITER ;
