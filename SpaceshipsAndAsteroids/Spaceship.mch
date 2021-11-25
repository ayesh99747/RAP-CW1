/* Spaceship
 * Author: ayesh
 * Creation date: 15/11/2021
 */
MACHINE
    Spaceship

SEES
    Space, Asteroids
    
SETS 
    // The following set is used to store all the possible messages that the system can output.           
    MESSAGE = { SpaceshipMovedUp, SpaceshipMovedDown, SpaceshipMovedRight, SpaceshipMovedLeft, SpaceshipWarped, 
                SpaceshipReady, SpaceshipHasExceededSpaceBoundaries, SpaceshipHasCrashedWitAnAsteroid, InsufficientPowerAvailableToPerformOperation } ;
    //The following set is used to store all the possible game statuses. 
    STATUS = { GameREADY, GameNotOver, GameWON, GameLOST }
    
CONSTANTS       
    normalMovePower, // The following constant is used to store the power reduced when a normal move is performed.   
    warpMovePower, // The following constant is used to store the power reduced when a warp drive move is performed.
    crashReducePower, // The following constant is used to store the power reduced when the spaceship crashes with an asteroid.
    totalPower, // The following constant is used to store the total initial power.
    homebaseLocation, // The following constant is used to store the location of the homebase. Which is its initial position.
    starbaseLocation // The following constant is used to store the location of the starbase. Which is the goal.
    
PROPERTIES     
    // The following line sets the value of normalMovePower to 5.
    normalMovePower : NAT1 & normalMovePower = 5 & 
    // The following line sets the value of warpMovePower to 20.
    warpMovePower : NAT1 & warpMovePower = 20  & 
    // The following line sets the value of crashReducePower to 10. 
    crashReducePower : NAT1 & crashReducePower = 10 & 
    // The following line sets the value of totalPower to 150.
    totalPower : NAT1 & totalPower = 150 &
    // The following line sets the value of the homebase location to (1, 1).
    homebaseLocation : space &  homebaseLocation = (1 |-> 1) &
    // The following line sets the value of the starbase location to (6, 4).
    starbaseLocation : space &  starbaseLocation = (6 |-> 4)
    
DEFINITIONS
    // The following definition is used to check if the spaceship has enough power to perform a normal move.     
    hasPowerForNormalMove == ((remainingPower - normalMovePower) >= 0);
    // The following definition is used to check if the spaceship has enough power to perform a warp drive move. 
    hasPowerForWarpDrive == ((remainingPower - warpMovePower) >= 0);
    // The following definition is used to check if the spaceship is not within the grid.
    isSpaceshipOutOfBounds(x, y) == (x /: XAxis or y /: YAxis);
    // The following definition is used to check if the spaceship has hit an asteroid.    
    hasSpaceshipHitAsteroid(x, y) == (y : ran({x} <| asteroids));
    // The following definition is used to check if the spaceship has reaches the starbase location. 
    isSpaceshipInStarbaseLocation(x, y) == ((x |-> y) = starbaseLocation)
    
VARIABLES       
    spaceshipXPosition, // This variable stores the x coordinate of the position of the spaceship on the grid.
    spaceshipYPosition, // This variable stores the y coordinate of the position of the spaceship on the grid.
    remainingPower, // This variable stores the power remaining in the spaceship.
    numberOfCollisions, // This variable stores the total number of collisions.
    spaceRegionsVisited, // This variable stores the sequence of the regions of space visited.
    gameStatus // This variable stores the current status of the game.
    
INVARIANT       
    spaceshipXPosition : XAxis & // The spaceshipXPosition variable is an element of the XAxis set.
    spaceshipYPosition : YAxis & // The spaceshipYPosition variable is an element of the YAxis set.
    remainingPower : NAT & // The remainingPower variable is an element of the natural number set starting from 0.
    numberOfCollisions : NAT & // The numberOfCollisions variable is an element of the natural number set starting from 0.
    spaceRegionsVisited : seq(space) & // The spaceRegionsVisited variable is a sequence of elements from the space set.
    gameStatus : STATUS // The gameStatus variable is an element of the STATUS set.
    
    
INITIALISATION  
    // The spaceshipXPosition is initialised to the x value of the homebaseLocation coordinates which is 1.
    spaceshipXPosition := prj1(XAxis, YAxis)(homebaseLocation)  || 
    // The spaceshipYPosition is initialised to the y value of the homebaseLocation coordinates which is 1.
    spaceshipYPosition := prj2(XAxis, YAxis)(homebaseLocation) || 
    // The remainingPower is initialised to the total power available.
    remainingPower := totalPower ||
    // The number of collisions is initialised to 0.
    numberOfCollisions := 0 ||
    // The sequence regions of space visited is initialised to only the homebaseLocation which is the starting point.
    spaceRegionsVisited := [homebaseLocation] ||
    // The gameStatus is initialised to ready.
    gameStatus := GameREADY
    
OPERATIONS
    
    // The following is the operation to move the spaceship up.
    message <--  MoveUp =
    PRE
        gameStatus /= GameWON // The gameStatus should not be WON.
    THEN
        IF (hasPowerForNormalMove) // Evaluates if power is available for normal move
        THEN
            // Evaluates if the MoveUp command would send the spaceship out of the boundary.          
            IF (isSpaceshipOutOfBounds(spaceshipXPosition, spaceshipYPosition + 1))
            THEN
                message := SpaceshipHasExceededSpaceBoundaries // If spaceship will exceeded the boundary.
            ELSE
                // If spaceship is within the boundary.
                // Evaluates if spaceship hits an asteroid.
                IF (hasSpaceshipHitAsteroid(spaceshipXPosition, spaceshipYPosition + 1)) 
                THEN
                    // If spaceship hits an asteroid.
                    remainingPower :=  remainingPower - crashReducePower || // Reduce 10 from remainingpPower due to the crash.
                    message := SpaceshipHasCrashedWitAnAsteroid || // Display the crash message.
                    numberOfCollisions := numberOfCollisions + 1 // Increment the number of collisions by 1.
                ELSE
                    // If spaceship doesn't hit an asteroid.
                    spaceshipYPosition := spaceshipYPosition + 1 // Increment y axis position by 1
                    || remainingPower :=  remainingPower - normalMovePower // Reduce 5 from the remaining power.
                    || message := SpaceshipMovedUp  // Display success message.
                    // Add the maplet of the new coordinates to the spaceRegionsVisited sequence.
                    || spaceRegionsVisited := (spaceRegionsVisited <- (spaceshipXPosition |->  spaceshipYPosition + 1))

                     
                    || IF (isSpaceshipInStarbaseLocation(spaceshipXPosition, spaceshipYPosition + 1))
                        THEN
                            gameStatus:= GameWON // If the spaceship has reached the starbase location.
                        ELSE
                            gameStatus := GameNotOver // If the spaceship has not reached the starbase location.
                        END           
                END
            END
        ELSE
            // If remaining power is not enough to make the move.
            message := InsufficientPowerAvailableToPerformOperation ||
            gameStatus := GameLOST 
        END
    END;
    
    
    // The following is the operation to move the spaceship down.
    message <--  MoveDown =
    PRE
        gameStatus /= GameWON // The gameStatus should not be WON.
    THEN
        IF (hasPowerForNormalMove) // Evaluates if power is available for normal move
        THEN
            // Evaluates if the MoveDown command would send the spaceship out of the boundary.
            IF (isSpaceshipOutOfBounds(spaceshipXPosition, spaceshipYPosition - 1))
            THEN
                message := SpaceshipHasExceededSpaceBoundaries // If spaceship will exceeded the boundary.
            ELSE
                // If spaceship is within the boundary.
                // Evaluates if spaceship hits an asteroid.
                IF (hasSpaceshipHitAsteroid(spaceshipXPosition, spaceshipYPosition - 1))
                THEN
                    // If spaceship hits an asteroid.
                    remainingPower :=  remainingPower - crashReducePower || // Reduce 10 from remainingpPower due to the crash.
                    message := SpaceshipHasCrashedWitAnAsteroid || // Display the crash message.
                    numberOfCollisions := numberOfCollisions + 1 // Increment the number of collisions by 1.
                ELSE
                    // If spaceship doesn't hit an asteroid.
                    spaceshipYPosition := spaceshipYPosition - 1 // Reduce y axis position by 1
                    || remainingPower :=  remainingPower - normalMovePower // Reduce 5 from the remaining power.
                    || message := SpaceshipMovedDown // Display success message.
                    // Add the maplet of the new coordinates to the spaceRegionsVisited sequence.
                    || spaceRegionsVisited := (spaceRegionsVisited <- (spaceshipXPosition |->  spaceshipYPosition - 1))
                    
                    || IF (isSpaceshipInStarbaseLocation(spaceshipXPosition, spaceshipYPosition - 1))
                        THEN
                            gameStatus:= GameWON // If the spaceship has reached the starbase location.
                        ELSE
                            gameStatus := GameNotOver // If the spaceship has not reached the starbase location.
                        END             
                END
            END
        ELSE
            // If remaining power is not enough to make the move.
            message := InsufficientPowerAvailableToPerformOperation ||
            gameStatus := GameLOST 
        END
    END;
    
    
    // The following is the operation to move the spaceship forward (right).
    message <--  MoveForward =
    PRE
        gameStatus /= GameWON // The gameStatus should not be WON.
    THEN
        IF (hasPowerForNormalMove) // Evaluates if power is available for normal move
        THEN
            // Evaluates if the MoveForward command would send the spaceship out of the boundary.
            IF (isSpaceshipOutOfBounds(spaceshipXPosition + 1, spaceshipYPosition))
            THEN
                message := SpaceshipHasExceededSpaceBoundaries // If spaceship will exceeded the boundary.
            ELSE
                // If spaceship is within the boundary.
                // Evaluates if spaceship hits an asteroid.
                IF ( hasSpaceshipHitAsteroid(spaceshipXPosition + 1, spaceshipYPosition))
                THEN
                    // If spaceship hits an asteroid.
                    remainingPower :=  remainingPower - crashReducePower || // Reduce 10 from remainingpPower due to the crash.
                    message := SpaceshipHasCrashedWitAnAsteroid || // Display the crash message.
                    numberOfCollisions := numberOfCollisions + 1 // Increment the number of collisions by 1.
                ELSE
                    // If spaceship doesn't hit an asteroid.
                    spaceshipXPosition := spaceshipXPosition + 1 // Increment x axis position by 1
                    || remainingPower :=  remainingPower - normalMovePower // Reduce 5 from the remaining power.
                    || message := SpaceshipMovedRight // Display success message.
                    // Add the maplet of the new coordinates to the spaceRegionsVisited sequence.
                    || spaceRegionsVisited := (spaceRegionsVisited <- (spaceshipXPosition + 1 |->  spaceshipYPosition)) 
                    
                    ||IF (isSpaceshipInStarbaseLocation(spaceshipXPosition + 1, spaceshipYPosition))
                        THEN
                            gameStatus:= GameWON // If the spaceship has reached the starbase location.
                        ELSE
                            gameStatus := GameNotOver // If the spaceship has not reached the starbase location.
                        END            
                END
            END
        ELSE
            // If remaining power is not enough to make the move.
            message := InsufficientPowerAvailableToPerformOperation ||
            gameStatus := GameLOST 
        END
    END;
    
    
    // The following is the operation to move the spaceship left.
    message <-- MoveBackward =
    PRE
        gameStatus /= GameWON // The gameStatus should not be WON.
    THEN
        IF (hasPowerForNormalMove) // Evaluates if power is available for normal move
        THEN
            // Evaluates if the MoveUp command would send the spaceship out of the boundary.
            IF (isSpaceshipOutOfBounds(spaceshipXPosition - 1, spaceshipYPosition))
            THEN
                message := SpaceshipHasExceededSpaceBoundaries // If spaceship will exceeded the boundary.
            ELSE
                // If spaceship is within the boundary.
                // Evaluates if spaceship hits an asteroid.
                IF (hasSpaceshipHitAsteroid(spaceshipXPosition - 1, spaceshipYPosition))
                THEN
                    // If spaceship hits an asteroid.
                    remainingPower :=  remainingPower - crashReducePower || // Reduce 10 from remainingpPower due to the crash.
                    message := SpaceshipHasCrashedWitAnAsteroid || // Display the crash message.
                    numberOfCollisions := numberOfCollisions + 1 // Increment the number of collisions by 1.
                ELSE
                    // If spaceship doesn't hit an asteroid.
                    spaceshipXPosition := spaceshipXPosition - 1 // Reduce y axis position by 1
                    || remainingPower :=  remainingPower - normalMovePower // Reduce 5 from the remaining power.
                    || message := SpaceshipMovedLeft // Display success message.
                    // Add the maplet of the new coordinates to the spaceRegionsVisited sequence.
                    || spaceRegionsVisited := (spaceRegionsVisited <- (spaceshipXPosition - 1 |->  spaceshipYPosition)) 
                    
                    || IF (isSpaceshipInStarbaseLocation(spaceshipXPosition - 1, spaceshipYPosition))
                        THEN
                            gameStatus:= GameWON // If the spaceship has reached the starbase location.
                        ELSE
                            gameStatus := GameNotOver // If the spaceship has not reached the starbase location.
                        END
                END
            END
        ELSE
            // If remaining power is not enough to make the move.
            message := InsufficientPowerAvailableToPerformOperation ||
            gameStatus := GameLOST 
        END
    END;
    
    
    // The following is to engage the warp drive function on the spaceship.
    message <-- EngageWarpDrive(newSpaceshipXPosition, newSpaceshipYPosition) =
    PRE 
        // The x and y coordinates should be elements of the natural numbers set.
        newSpaceshipXPosition : NAT1 & newSpaceshipYPosition : NAT1 & 
        // The x and y coordinates should be elements of the XAxis and YAxis set respectively.
        newSpaceshipXPosition : XAxis & newSpaceshipYPosition : YAxis & 
        // The x and y coordinates should not be equal to the existing coordinates that the spaceship is in.
        (newSpaceshipXPosition |->  newSpaceshipYPosition) /= (spaceshipXPosition |->  spaceshipYPosition)  &
        // The gameStatus should not be WON.
        gameStatus /= GameWON 
    THEN
        IF (hasPowerForWarpDrive) // Evaluates if power is available for warp drive.
        THEN
            // Evaluates if the MoveUp command would send the spaceship out of the boundary.
            IF (isSpaceshipOutOfBounds(newSpaceshipXPosition, newSpaceshipYPosition))
            THEN
                message := SpaceshipHasExceededSpaceBoundaries // If spaceship will exceeded the boundary.
            ELSE
                // If spaceship is within the boundary.
                // Evaluates if spaceship hits an asteroid.
                IF ( hasSpaceshipHitAsteroid(newSpaceshipXPosition, newSpaceshipYPosition))
                THEN
                    // If spaceship hits an asteroid.
                    remainingPower :=  remainingPower - crashReducePower || // Reduce 10 from remainingpPower due to the crash.
                    message := SpaceshipHasCrashedWitAnAsteroid || // Display the crash message.
                    numberOfCollisions := numberOfCollisions + 1 // Increment the number of collisions by 1.
                ELSE
                    // If spaceship doesn't hit an asteroid.
                    // Assign the x and y coordinates to the spaceship coordinates
                    spaceshipXPosition := newSpaceshipXPosition 
                    || spaceshipYPosition := newSpaceshipYPosition
                    || remainingPower :=  remainingPower - warpMovePower // Reduce 20 from remaining power.
                    || message := SpaceshipWarped  // Output spaceship warped success message.
                    // Add the maplet of the new coordinates to the spaceRegionsVisited sequence.
                    || spaceRegionsVisited := (spaceRegionsVisited <- (newSpaceshipXPosition |->  newSpaceshipYPosition)) 
                    || IF (isSpaceshipInStarbaseLocation(newSpaceshipXPosition, newSpaceshipYPosition))
                        THEN
                            gameStatus:= GameWON // If the spaceship has reached the starbase location.
                        ELSE
                            gameStatus := GameNotOver // If the spaceship has not reached the starbase location.
                        END
                END
            END
        ELSE
            // If remaining power is not enough to use warp drive.
            message := InsufficientPowerAvailableToPerformOperation ||
            gameStatus := GameNotOver // There may be power to use normal moves. So gameStatus is not LOST.
        END
    END;
    
    resetSpaceship(newpower) =  
    PRE 
        newpower : NAT1 
    THEN
        spaceshipXPosition := 1
        || spaceshipYPosition := 1
        || remainingPower := newpower
        || numberOfCollisions := 0
        || spaceRegionsVisited := [homebaseLocation]
        || gameStatus := GameREADY
    END
    
END
