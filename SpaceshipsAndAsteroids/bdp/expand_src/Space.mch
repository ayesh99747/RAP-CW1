/* Space
 * Author: ayesh
 * Creation date: 15/11/2021
 */
MACHINE
    Space

CONCRETE_CONSTANTS
    xMax , // This constant will hold the maximum value of the x axis 12. 
    yMax , // This constant will hold the maximum value of the y axis 7.       
    XAxis , // This constant will hold the set of x axis values (1 to 12). 
    YAxis , // This constant will hold the set of y axis values (1 to 7). 
    space // The following constant holds all the possible coordinates in Space.

PROPERTIES
    xMax : NAT1 & xMax = 12 & // The following line initializes the value for the constant xMax 
    yMax : NAT1 & yMax = 7 & // The following line initializes the value for the constant yMax 
    XAxis <: NAT1 & XAxis =  1 .. xMax  & // The following line assigns all the values for the X axis to the XAxis constant. 
    YAxis <: NAT1 & YAxis =  1 .. yMax  & // The following line assigns all the values for the Y axis to the YAxis constant. 
    space : SPACE & space = XAxis * YAxis // The following line assigns all the possible coordinates to the Space constant.

DEFINITIONS
    /* The following definition will return true or false depending on whether 
       or not the given point in Space is out of the boundary. */
    isOutOfBoundary ( x , y ) == ( x /: XAxis or y /: YAxis ) ;

    /* The following defines the greater Space represented by the power set of the Cartesian product of the natural number sets.
       This gives us a relation between the two natural number sets. We are only looking at a particular section of Space which 
       is denoted by Space constant set. */
    SPACE == POW ( NAT1 * NAT1 )

END
