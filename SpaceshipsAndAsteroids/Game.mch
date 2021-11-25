/* Game
 * Author: ayesh
 * Creation date: 15/11/2021
 */
MACHINE
    Game

INCLUDES
    Spaceship

PROMOTES
    // Only the following operations found in Spaceship will be made visible to the user.
    MoveUp, MoveDown, MoveForward, MoveBackward, EngageWarpDrive
    
DEFINITIONS
    // The following definition is used to evaluate whether the ship is in the starbase position (6,4).
    isSpaceshipInStarbase == ((spaceshipXPosition |-> spaceshipYPosition) = starbaseLocation)
    
OPERATIONS
    
    /* The following operation reports the current status of the spaceship.
       (current location, remaining power and number of collisions) */
    location, power, collisions <-- MissionStatus = 
    BEGIN
        location := (spaceshipXPosition |-> spaceshipYPosition) ||
        power := remainingPower ||
        collisions := numberOfCollisions
    END;
    
    
    // The following operation that reports the regions of space that the spaceship has visited.
    route <-- RegionsVisited = 
    BEGIN
        route := spaceRegionsVisited
    END;
    
    
    // The following operation reports whether the Spaceship has docked in the starbase position.
    dockedStatus <-- DockedAtStarbase =  
    IF (isSpaceshipInStarbase)
    THEN
        dockedStatus := TRUE // TRUE if the spaceship has docked in the starbase position.
    ELSE
        dockedStatus := FALSE // FALSE if the spaceship has not docked in the starbase position.
    END;
    
    // The following operation is used to return the status of the game. 
    status <-- GameStatus =  
    BEGIN
        status := gameStatus
    END;

    // The following operation is used to reset the game. 
    status <-- NewGame(power) =  
    PRE 
        power : NAT1 
        
    THEN
        resetSpaceship(power)
        || status := gameStatus
    END
END
