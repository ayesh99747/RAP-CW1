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
            {yy,xx,image | yy:YAxis & xx:XAxis &            
                (
                    // If the spaceship has docked at starbase(Game Won) an empty screen will be shown with the spaceship docked in the centre.
                    IF (spaceshipXPosition = prj1(XAxis, YAxis)(starbaseLocation) & spaceshipYPosition = prj2(XAxis, YAxis)(starbaseLocation))
                        THEN
                            IF (xx = prj1(XAxis, YAxis)(starbaseLocation) & yy = prj2(XAxis, YAxis)(starbaseLocation))
                            THEN
                                // Showing the starbase docked image.
                                image = 3
                            ELSE
                                // All other cells will be empty cells.
                                image = 0
                            END
                    ELSE
                        // If the game is still being played and the spaceship has not yet docked, the normal grid will be shown.
                        IF (xx = prj1(XAxis, YAxis)(starbaseLocation) & yy = prj2(XAxis, YAxis)(starbaseLocation))
                            THEN
                                // Displaying the starbase in the starbase location cell.
                                image = 4
                            ELSE
                                IF (xx |-> (8 - yy) : Asteroids.asteroids)
                                    THEN
                                        // Displaying asteroids in the relevant cells.
                                        image = 1
                                    ELSE
                                        IF (xx = spaceshipXPosition & yy = (8 - spaceshipYPosition))
                                        THEN
                                            // Displaying the spaceship in the current location.
                                            image = 2
                                        ELSE
                                            // Displaying an empty cell in the relevant location.
                                            image = 0
                                        END
                                    END
                            END
                    END

                )
            });
    // Below are the images used to create the images. The individual images are found in the images folder.
    ANIMATION_IMG0 == "images/empty_cell.gif";
    ANIMATION_IMG1 == "images/asteroid_cell.gif";
    ANIMATION_IMG2 == "images/spaceship_cell.gif";
    ANIMATION_IMG3 == "images/spaceship-docked_cell.gif";
    ANIMATION_IMG4 == "images/starbase_cell.gif";
    
    
OPERATIONS
    
    /* The following operation reports the cuyyent status of the spaceship.
       (cuyyent location, remaining power and number of collisions) */
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
