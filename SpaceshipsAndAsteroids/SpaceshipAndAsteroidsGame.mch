/* SpaceshipAndAsteroidsGame
 * Author: ayesh
 * Creation date: 15/11/2021
 */
MACHINE
    SpaceshipAndAsteroidsGame
    
INCLUDES
    Spaceship(40) // 40 - initial power for the spaceship.

PROMOTES
    // Only the following operations found in Spaceship will be made visible to the user.
    MoveUp, MoveDown, MoveForward, MoveBackward, EngageWarpDrive
    
DEFINITIONS
    // The following definition is used to evaluate whether the ship is in the starbase position (6,4).
    isSpaceshipInStarbase == ((spaceshipXPosition |-> spaceshipYPosition) = starbaseLocation);
    
    /* 
    The below function is used to animate the game.
    Note : The animation function displays from top to bottom, and left to right, 
           hence the y axis coordinates need to be taken as 8 - coordinate. 
    */
    ANIMATION_FUNCTION == (
            {
                xx, yy, image | xx : XAxis & yy : YAxis &             
                (IF (xx = prj1(XAxis, YAxis)(starbaseLocation) & yy = prj2(XAxis, YAxis)(starbaseLocation))
                    THEN
                        // If the location is the starbase we will display the starbase image.
                        image = 3
                    ELSE
                        IF (xx |-> (8 - yy) : Asteroids.asteroids) 
                        THEN
                            // If the location is an element of the asteroids set, we will display an asteroid.
                            image = 1
                        ELSE
                            IF (xx = spaceshipXPosition & yy = (8 - spaceshipYPosition))
                            THEN
                                // If the location is equal to the current location of the spaceship, we will display the spaceship.
                                image = 2
                            ELSE
                                // If there is nothing in that space, an empty space will be displayed.
                                image = 0
                            END
                        END
                    END
                )
            });
    // Below are the images used to create the images. The individual images are found in the images folder.
    ANIMATION_IMG0 == "images/empty.gif";
    ANIMATION_IMG1 == "images/asteroid.gif";
    ANIMATION_IMG2 == "images/spaceship.gif";
    ANIMATION_IMG3 == "images/starbase.gif";
    
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
        power : NAT1 & power >= 40
        
    THEN
        resetSpaceship(power) // Calling the reset function in Spaceship.
        || status := GameREADY // Setting the status to GameReady.
    END
END
