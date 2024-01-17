/* Create a procedure to insert new participants how have started the hike but not registered in the app in the database */

DROP PROCEDURE IF EXISTS InsertParticipantWithOngoingHike;

DELIMITER //

CREATE PROCEDURE InsertParticipantWithOngoingHike (
	IN p_Participant_id INT(11),
    IN p_Participant_Name VARCHAR(45),
    IN p_Participant_Email VARCHAR(45),
    IN p_Participant_Ph_no VARCHAR(10),
    IN p_Participant_Address VARCHAR(45),
    IN p_Participant_Postal_Code VARCHAR(10),
    IN p_Participant_Start_Date DATETIME
)
BEGIN
	
 IF NOW() >= p_Participant_Start_Date THEN
            -- Insert the participant
            INSERT INTO participant (
                Participant_id,
                Participant_Name,
                Participant_Email,
                Participant_Ph_no,
                Participant_Address,
                Participant_Postal_Code
            )
            VALUES (
                p_Participant_id,
                p_Participant_Name,
                p_Participant_Email,
                p_Participant_Ph_no,
                p_Participant_Address,
                p_Participant_Postal_Code
            );
        ELSE
            SELECT 'Hike has not started yet'AS Message;
		END IF;
END //

DELIMITER ;

-- Call the procedure
CALL InsertParticipantWithOngoingHike(6,'Gurleen', 'gurleen@example.com', '123456789', '123 Main St', 'ABC123','2023-12-20');

CALL InsertParticipantWithOngoingHike(7,'Sonam', 'sonam@example.com', '123456789', '123 Main St', 'ABC123','2023-12-11');

/* In average how much time people take to finish each hike  */

SELECT
    a.Hike_id,
    a.Hike_Name,
    SEC_TO_TIME(AVG(TIMESTAMPDIFF(SECOND, b.Start_Date_Time, b.End_Date_Time))) AS Average_Time
FROM
    Hikes a
JOIN
    Participant_has_Hikes b ON a.Hike_id = b.Hike_Id
GROUP BY
    a.Hike_id, a.Hike_Name;

