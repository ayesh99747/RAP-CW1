/* Asteroids
 * Author: ayesh
 * Creation date: 15/11/2021
 */
MACHINE
    Asteroids

SEES
    Space

ABSTRACT_VARIABLES
    asteroids // This variable will store the set containing the maplets which indicate the position of the asteroids. 

INVARIANT
    // An asteroid is an element of the relation between the set representing the X axis and Y axis. 
    asteroids : XAxis <-> YAxis &
    // There are 11 Asteroids within the given space.
    card ( asteroids ) = 11

INITIALISATION
    // The following statement initialises the set of asteroids. 
    asteroids := { ( 3 |-> 2 ) , ( 3 |-> 5 ) , ( 5 |-> 4 ) , ( 6 |-> 7 ) , ( 7 |-> 1 ) , ( 7 |-> 5 ) , ( 7 |-> 7 ) , ( 8 |-> 3 ) , ( 10 |-> 6 ) ,
                    ( 11 |-> 2 ) , ( 12 |-> 5 ) }

DEFINITIONS
    /* The following definition is used to check whether there is an asteroid in the given coordinate. 
       It is performed by the domain restriction of the asteroids relation to the set of x, which is the x
       coordinate that was provided. Then we evaluate if y is an element in the range of that domain restriction. */
    hasAsteroid ( x , y ) == ( y : ran ( { x } <| asteroids ) )
    // Alternative : hasAsteroid(x,y) == ( ( x |-> y ) : asteroids )

END
