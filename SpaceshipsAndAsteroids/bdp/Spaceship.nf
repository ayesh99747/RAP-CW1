Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Spaceship))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Spaceship))==(Machine(Spaceship));
  Level(Machine(Spaceship))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Spaceship)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Spaceship))==(Space,Asteroids)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Spaceship))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Spaceship))==(?);
  List_Includes(Machine(Spaceship))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Spaceship))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Spaceship))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Spaceship))==(?);
  Context_List_Variables(Machine(Spaceship))==(?);
  Abstract_List_Variables(Machine(Spaceship))==(?);
  Local_List_Variables(Machine(Spaceship))==(gameStatus,spaceRegionsVisited,numberOfCollisions,remainingPower,spaceshipYPosition,spaceshipXPosition);
  List_Variables(Machine(Spaceship))==(gameStatus,spaceRegionsVisited,numberOfCollisions,remainingPower,spaceshipYPosition,spaceshipXPosition);
  External_List_Variables(Machine(Spaceship))==(gameStatus,spaceRegionsVisited,numberOfCollisions,remainingPower,spaceshipYPosition,spaceshipXPosition)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Spaceship))==(?);
  Abstract_List_VisibleVariables(Machine(Spaceship))==(?);
  External_List_VisibleVariables(Machine(Spaceship))==(?);
  Expanded_List_VisibleVariables(Machine(Spaceship))==(?);
  List_VisibleVariables(Machine(Spaceship))==(?);
  Internal_List_VisibleVariables(Machine(Spaceship))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Spaceship))==(btrue);
  Gluing_List_Invariant(Machine(Spaceship))==(btrue);
  Expanded_List_Invariant(Machine(Spaceship))==(btrue);
  Abstract_List_Invariant(Machine(Spaceship))==(btrue);
  Context_List_Invariant(Machine(Spaceship))==(asteroids: XAxis <-> YAxis & card(asteroids) = 11);
  List_Invariant(Machine(Spaceship))==(spaceshipXPosition: XAxis & spaceshipYPosition: YAxis & remainingPower: NAT & remainingPower>=0 & numberOfCollisions: NAT & spaceRegionsVisited: seq(space) & gameStatus: STATUS)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Spaceship))==(btrue);
  Abstract_List_Assertions(Machine(Spaceship))==(btrue);
  Context_List_Assertions(Machine(Spaceship))==(btrue);
  List_Assertions(Machine(Spaceship))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Spaceship))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Spaceship))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Spaceship))==(spaceshipXPosition,spaceshipYPosition,remainingPower,numberOfCollisions,spaceRegionsVisited,gameStatus:=prj1(XAxis,YAxis)(homebaseLocation),prj2(XAxis,YAxis)(homebaseLocation),initialPower,0,[homebaseLocation],GameREADY);
  Context_List_Initialisation(Machine(Spaceship))==(skip);
  List_Initialisation(Machine(Spaceship))==(spaceshipXPosition:=prj1(XAxis,YAxis)(homebaseLocation) || spaceshipYPosition:=prj2(XAxis,YAxis)(homebaseLocation) || remainingPower:=initialPower || numberOfCollisions:=0 || spaceRegionsVisited:=[homebaseLocation] || gameStatus:=GameREADY)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Spaceship))==(initialPower)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Spaceship),Machine(Space))==(?);
  List_Instanciated_Parameters(Machine(Spaceship),Machine(Asteroids))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Spaceship))==(btrue);
  List_Constraints(Machine(Spaceship))==(initialPower: NAT1 & initialPower>=40)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Spaceship))==(MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,resetSpaceship);
  List_Operations(Machine(Spaceship))==(MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,resetSpaceship)
END
&
THEORY ListInputX IS
  List_Input(Machine(Spaceship),MoveUp)==(?);
  List_Input(Machine(Spaceship),MoveDown)==(?);
  List_Input(Machine(Spaceship),MoveForward)==(?);
  List_Input(Machine(Spaceship),MoveBackward)==(?);
  List_Input(Machine(Spaceship),EngageWarpDrive)==(newSpaceshipXPosition,newSpaceshipYPosition);
  List_Input(Machine(Spaceship),resetSpaceship)==(newpower)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Spaceship),MoveUp)==(message);
  List_Output(Machine(Spaceship),MoveDown)==(message);
  List_Output(Machine(Spaceship),MoveForward)==(message);
  List_Output(Machine(Spaceship),MoveBackward)==(message);
  List_Output(Machine(Spaceship),EngageWarpDrive)==(message);
  List_Output(Machine(Spaceship),resetSpaceship)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Spaceship),MoveUp)==(message <-- MoveUp);
  List_Header(Machine(Spaceship),MoveDown)==(message <-- MoveDown);
  List_Header(Machine(Spaceship),MoveForward)==(message <-- MoveForward);
  List_Header(Machine(Spaceship),MoveBackward)==(message <-- MoveBackward);
  List_Header(Machine(Spaceship),EngageWarpDrive)==(message <-- EngageWarpDrive(newSpaceshipXPosition,newSpaceshipYPosition));
  List_Header(Machine(Spaceship),resetSpaceship)==(resetSpaceship(newpower))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Spaceship),MoveUp)==(gameStatus/=GameWON);
  List_Precondition(Machine(Spaceship),MoveDown)==(gameStatus/=GameWON);
  List_Precondition(Machine(Spaceship),MoveForward)==(gameStatus/=GameWON);
  List_Precondition(Machine(Spaceship),MoveBackward)==(gameStatus/=GameWON);
  List_Precondition(Machine(Spaceship),EngageWarpDrive)==(newSpaceshipXPosition: NAT1 & newSpaceshipYPosition: NAT1 & newSpaceshipXPosition: XAxis & newSpaceshipYPosition: YAxis & newSpaceshipXPosition|->newSpaceshipYPosition/=(spaceshipXPosition|->spaceshipYPosition) & gameStatus/=GameWON);
  List_Precondition(Machine(Spaceship),resetSpaceship)==(newpower: NAT1 & newpower>=40)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Spaceship),resetSpaceship)==(newpower: NAT1 & newpower>=40 | spaceshipXPosition,spaceshipYPosition,remainingPower,numberOfCollisions,spaceRegionsVisited,gameStatus:=1,1,newpower,0,[homebaseLocation],GameREADY);
  Expanded_List_Substitution(Machine(Spaceship),EngageWarpDrive)==(newSpaceshipXPosition: NAT1 & newSpaceshipYPosition: NAT1 & newSpaceshipXPosition: XAxis & newSpaceshipYPosition: YAxis & newSpaceshipXPosition|->newSpaceshipYPosition/=(spaceshipXPosition|->spaceshipYPosition) & gameStatus/=GameWON | remainingPower-warpMovePower>=0 ==> (newSpaceshipXPosition/:XAxis or newSpaceshipYPosition/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(newSpaceshipXPosition/:XAxis or newSpaceshipYPosition/:YAxis) ==> (newSpaceshipYPosition: ran({newSpaceshipXPosition}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(newSpaceshipYPosition: ran({newSpaceshipXPosition}<|asteroids)) ==> (spaceshipXPosition,spaceshipYPosition,remainingPower,message,spaceRegionsVisited:=newSpaceshipXPosition,newSpaceshipYPosition,remainingPower-warpMovePower,SpaceshipWarped,spaceRegionsVisited<-(newSpaceshipXPosition|->newSpaceshipYPosition) || (newSpaceshipXPosition|->newSpaceshipYPosition = starbaseLocation ==> gameStatus:=GameWON [] not(newSpaceshipXPosition|->newSpaceshipYPosition = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-warpMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameNotOver);
  Expanded_List_Substitution(Machine(Spaceship),MoveBackward)==(gameStatus/=GameWON | remainingPower-normalMovePower>=0 ==> (spaceshipXPosition-1/:XAxis or spaceshipYPosition/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(spaceshipXPosition-1/:XAxis or spaceshipYPosition/:YAxis) ==> (spaceshipYPosition: ran({spaceshipXPosition-1}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(spaceshipYPosition: ran({spaceshipXPosition-1}<|asteroids)) ==> (spaceshipXPosition,remainingPower,message,spaceRegionsVisited:=spaceshipXPosition-1,remainingPower-normalMovePower,SpaceshipMovedLeft,spaceRegionsVisited<-(spaceshipXPosition-1|->spaceshipYPosition) || (spaceshipXPosition-1|->spaceshipYPosition = starbaseLocation ==> gameStatus:=GameWON [] not(spaceshipXPosition-1|->spaceshipYPosition = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-normalMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameLOST);
  Expanded_List_Substitution(Machine(Spaceship),MoveForward)==(gameStatus/=GameWON | remainingPower-normalMovePower>=0 ==> (spaceshipXPosition+1/:XAxis or spaceshipYPosition/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(spaceshipXPosition+1/:XAxis or spaceshipYPosition/:YAxis) ==> (spaceshipYPosition: ran({spaceshipXPosition+1}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(spaceshipYPosition: ran({spaceshipXPosition+1}<|asteroids)) ==> (spaceshipXPosition,remainingPower,message,spaceRegionsVisited:=spaceshipXPosition+1,remainingPower-normalMovePower,SpaceshipMovedRight,spaceRegionsVisited<-(spaceshipXPosition+1|->spaceshipYPosition) || (spaceshipXPosition+1|->spaceshipYPosition = starbaseLocation ==> gameStatus:=GameWON [] not(spaceshipXPosition+1|->spaceshipYPosition = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-normalMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameLOST);
  Expanded_List_Substitution(Machine(Spaceship),MoveDown)==(gameStatus/=GameWON | remainingPower-normalMovePower>=0 ==> (spaceshipXPosition/:XAxis or spaceshipYPosition-1/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(spaceshipXPosition/:XAxis or spaceshipYPosition-1/:YAxis) ==> (spaceshipYPosition-1: ran({spaceshipXPosition}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(spaceshipYPosition-1: ran({spaceshipXPosition}<|asteroids)) ==> (spaceshipYPosition,remainingPower,message,spaceRegionsVisited:=spaceshipYPosition-1,remainingPower-normalMovePower,SpaceshipMovedDown,spaceRegionsVisited<-(spaceshipXPosition|->spaceshipYPosition-1) || (spaceshipXPosition|->spaceshipYPosition-1 = starbaseLocation ==> gameStatus:=GameWON [] not(spaceshipXPosition|->spaceshipYPosition-1 = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-normalMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameLOST);
  Expanded_List_Substitution(Machine(Spaceship),MoveUp)==(gameStatus/=GameWON | remainingPower-normalMovePower>=0 ==> (spaceshipXPosition/:XAxis or spaceshipYPosition+1/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(spaceshipXPosition/:XAxis or spaceshipYPosition+1/:YAxis) ==> (spaceshipYPosition+1: ran({spaceshipXPosition}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(spaceshipYPosition+1: ran({spaceshipXPosition}<|asteroids)) ==> (spaceshipYPosition,remainingPower,message,spaceRegionsVisited:=spaceshipYPosition+1,remainingPower-normalMovePower,SpaceshipMovedUp,spaceRegionsVisited<-(spaceshipXPosition|->spaceshipYPosition+1) || (spaceshipXPosition|->spaceshipYPosition+1 = starbaseLocation ==> gameStatus:=GameWON [] not(spaceshipXPosition|->spaceshipYPosition+1 = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-normalMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameLOST);
  List_Substitution(Machine(Spaceship),MoveUp)==(IF remainingPower-normalMovePower>=0 THEN IF spaceshipXPosition/:XAxis or spaceshipYPosition+1/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF spaceshipYPosition+1: ran({spaceshipXPosition}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipYPosition:=spaceshipYPosition+1 || remainingPower:=remainingPower-normalMovePower || message:=SpaceshipMovedUp || spaceRegionsVisited:=spaceRegionsVisited<-(spaceshipXPosition|->spaceshipYPosition+1) || IF spaceshipXPosition|->spaceshipYPosition+1 = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameLOST END);
  List_Substitution(Machine(Spaceship),MoveDown)==(IF remainingPower-normalMovePower>=0 THEN IF spaceshipXPosition/:XAxis or spaceshipYPosition-1/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF spaceshipYPosition-1: ran({spaceshipXPosition}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipYPosition:=spaceshipYPosition-1 || remainingPower:=remainingPower-normalMovePower || message:=SpaceshipMovedDown || spaceRegionsVisited:=spaceRegionsVisited<-(spaceshipXPosition|->spaceshipYPosition-1) || IF spaceshipXPosition|->spaceshipYPosition-1 = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameLOST END);
  List_Substitution(Machine(Spaceship),MoveForward)==(IF remainingPower-normalMovePower>=0 THEN IF spaceshipXPosition+1/:XAxis or spaceshipYPosition/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF spaceshipYPosition: ran({spaceshipXPosition+1}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipXPosition:=spaceshipXPosition+1 || remainingPower:=remainingPower-normalMovePower || message:=SpaceshipMovedRight || spaceRegionsVisited:=spaceRegionsVisited<-(spaceshipXPosition+1|->spaceshipYPosition) || IF spaceshipXPosition+1|->spaceshipYPosition = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameLOST END);
  List_Substitution(Machine(Spaceship),MoveBackward)==(IF remainingPower-normalMovePower>=0 THEN IF spaceshipXPosition-1/:XAxis or spaceshipYPosition/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF spaceshipYPosition: ran({spaceshipXPosition-1}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipXPosition:=spaceshipXPosition-1 || remainingPower:=remainingPower-normalMovePower || message:=SpaceshipMovedLeft || spaceRegionsVisited:=spaceRegionsVisited<-(spaceshipXPosition-1|->spaceshipYPosition) || IF spaceshipXPosition-1|->spaceshipYPosition = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameLOST END);
  List_Substitution(Machine(Spaceship),EngageWarpDrive)==(IF remainingPower-warpMovePower>=0 THEN IF newSpaceshipXPosition/:XAxis or newSpaceshipYPosition/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF newSpaceshipYPosition: ran({newSpaceshipXPosition}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipXPosition:=newSpaceshipXPosition || spaceshipYPosition:=newSpaceshipYPosition || remainingPower:=remainingPower-warpMovePower || message:=SpaceshipWarped || spaceRegionsVisited:=spaceRegionsVisited<-(newSpaceshipXPosition|->newSpaceshipYPosition) || IF newSpaceshipXPosition|->newSpaceshipYPosition = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameNotOver END);
  List_Substitution(Machine(Spaceship),resetSpaceship)==(spaceshipXPosition:=1 || spaceshipYPosition:=1 || remainingPower:=newpower || numberOfCollisions:=0 || spaceRegionsVisited:=[homebaseLocation] || gameStatus:=GameREADY)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Spaceship))==(normalMovePower,warpMovePower,crashReducePower,homebaseLocation,starbaseLocation);
  Inherited_List_Constants(Machine(Spaceship))==(?);
  List_Constants(Machine(Spaceship))==(normalMovePower,warpMovePower,crashReducePower,homebaseLocation,starbaseLocation)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Spaceship),MESSAGE)==({SpaceshipMovedUp,SpaceshipMovedDown,SpaceshipMovedRight,SpaceshipMovedLeft,SpaceshipWarped,SpaceshipReady,SpaceshipHasExceededSpaceBoundaries,SpaceshipHasCrashedWitAnAsteroid,InsufficientPowerAvailableToPerformOperation});
  Context_List_Enumerated(Machine(Spaceship))==(?);
  Context_List_Defered(Machine(Spaceship))==(?);
  Context_List_Sets(Machine(Spaceship))==(?);
  List_Valuable_Sets(Machine(Spaceship))==(?);
  Inherited_List_Enumerated(Machine(Spaceship))==(?);
  Inherited_List_Defered(Machine(Spaceship))==(?);
  Inherited_List_Sets(Machine(Spaceship))==(?);
  List_Enumerated(Machine(Spaceship))==(MESSAGE,STATUS);
  List_Defered(Machine(Spaceship))==(?);
  List_Sets(Machine(Spaceship))==(MESSAGE,STATUS);
  Set_Definition(Machine(Spaceship),STATUS)==({GameREADY,GameNotOver,GameWON,GameLOST})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Spaceship))==(?);
  Expanded_List_HiddenConstants(Machine(Spaceship))==(?);
  List_HiddenConstants(Machine(Spaceship))==(?);
  External_List_HiddenConstants(Machine(Spaceship))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Spaceship))==(btrue);
  Context_List_Properties(Machine(Spaceship))==(xMax: NAT1 & xMax = 12 & yMax: NAT1 & yMax = 7 & XAxis <: NAT1 & XAxis = 1..xMax & YAxis <: NAT1 & YAxis = 1..yMax & space: POW(NAT1*NAT1) & space = XAxis*YAxis);
  Inherited_List_Properties(Machine(Spaceship))==(btrue);
  List_Properties(Machine(Spaceship))==(normalMovePower: NAT1 & normalMovePower = 5 & warpMovePower: NAT1 & warpMovePower = 20 & crashReducePower: NAT1 & crashReducePower = 10 & homebaseLocation: space & homebaseLocation = 1|->1 & starbaseLocation: space & starbaseLocation = 6|->4 & MESSAGE: FIN(INTEGER) & not(MESSAGE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Spaceship),Machine(Asteroids))==(?);
  Seen_Context_List_Enumerated(Machine(Spaceship))==(?);
  Seen_Context_List_Invariant(Machine(Spaceship))==(btrue);
  Seen_Context_List_Assertions(Machine(Spaceship))==(btrue);
  Seen_Context_List_Properties(Machine(Spaceship))==(xMax: NAT1 & xMax = 12 & yMax: NAT1 & yMax = 7 & XAxis <: NAT1 & XAxis = 1..xMax & YAxis <: NAT1 & YAxis = 1..yMax & space: POW(NAT1*NAT1) & space = XAxis*YAxis);
  Seen_List_Constraints(Machine(Spaceship))==(btrue);
  Seen_List_Operations(Machine(Spaceship),Machine(Asteroids))==(?);
  Seen_Expanded_List_Invariant(Machine(Spaceship),Machine(Asteroids))==(btrue);
  Seen_Internal_List_Operations(Machine(Spaceship),Machine(Space))==(?);
  Seen_List_Operations(Machine(Spaceship),Machine(Space))==(?);
  Seen_Expanded_List_Invariant(Machine(Spaceship),Machine(Space))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Spaceship),MoveUp)==(?);
  List_ANY_Var(Machine(Spaceship),MoveDown)==(?);
  List_ANY_Var(Machine(Spaceship),MoveForward)==(?);
  List_ANY_Var(Machine(Spaceship),MoveBackward)==(?);
  List_ANY_Var(Machine(Spaceship),EngageWarpDrive)==(?);
  List_ANY_Var(Machine(Spaceship),resetSpaceship)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Spaceship)) == (normalMovePower,warpMovePower,crashReducePower,homebaseLocation,starbaseLocation,MESSAGE,STATUS,SpaceshipMovedUp,SpaceshipMovedDown,SpaceshipMovedRight,SpaceshipMovedLeft,SpaceshipWarped,SpaceshipReady,SpaceshipHasExceededSpaceBoundaries,SpaceshipHasCrashedWitAnAsteroid,InsufficientPowerAvailableToPerformOperation,GameREADY,GameNotOver,GameWON,GameLOST | ? | gameStatus,spaceRegionsVisited,numberOfCollisions,remainingPower,spaceshipYPosition,spaceshipXPosition | ? | MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,resetSpaceship | ? | seen(Machine(Space)),seen(Machine(Asteroids)) | initialPower | Spaceship);
  List_Of_HiddenCst_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Spaceship)) == (normalMovePower,warpMovePower,crashReducePower,homebaseLocation,starbaseLocation);
  List_Of_VisibleVar_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Spaceship)) == (?: ?);
  List_Of_Ids(Machine(Asteroids)) == (? | ? | asteroids | ? | ? | ? | seen(Machine(Space)) | ? | Asteroids);
  List_Of_HiddenCst_Ids(Machine(Asteroids)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Asteroids)) == (?);
  List_Of_VisibleVar_Ids(Machine(Asteroids)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Asteroids)) == (?: ?);
  List_Of_Ids(Machine(Space)) == (xMax,yMax,XAxis,YAxis,space | ? | ? | ? | ? | ? | ? | ? | Space);
  List_Of_HiddenCst_Ids(Machine(Space)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Space)) == (xMax,yMax,XAxis,YAxis,space);
  List_Of_VisibleVar_Ids(Machine(Space)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Space)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Spaceship)) == (Type(initialPower) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Machine(Spaceship)) == (Type(MESSAGE) == Cst(SetOf(etype(MESSAGE,0,8)));Type(STATUS) == Cst(SetOf(etype(STATUS,0,3))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Spaceship)) == (Type(SpaceshipMovedUp) == Cst(etype(MESSAGE,0,8));Type(SpaceshipMovedDown) == Cst(etype(MESSAGE,0,8));Type(SpaceshipMovedRight) == Cst(etype(MESSAGE,0,8));Type(SpaceshipMovedLeft) == Cst(etype(MESSAGE,0,8));Type(SpaceshipWarped) == Cst(etype(MESSAGE,0,8));Type(SpaceshipReady) == Cst(etype(MESSAGE,0,8));Type(SpaceshipHasExceededSpaceBoundaries) == Cst(etype(MESSAGE,0,8));Type(SpaceshipHasCrashedWitAnAsteroid) == Cst(etype(MESSAGE,0,8));Type(InsufficientPowerAvailableToPerformOperation) == Cst(etype(MESSAGE,0,8));Type(GameREADY) == Cst(etype(STATUS,0,3));Type(GameNotOver) == Cst(etype(STATUS,0,3));Type(GameWON) == Cst(etype(STATUS,0,3));Type(GameLOST) == Cst(etype(STATUS,0,3));Type(normalMovePower) == Cst(btype(INTEGER,?,?));Type(warpMovePower) == Cst(btype(INTEGER,?,?));Type(crashReducePower) == Cst(btype(INTEGER,?,?));Type(homebaseLocation) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(starbaseLocation) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Spaceship)) == (Type(gameStatus) == Mvl(etype(STATUS,?,?));Type(spaceRegionsVisited) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(numberOfCollisions) == Mvl(btype(INTEGER,?,?));Type(remainingPower) == Mvl(btype(INTEGER,?,?));Type(spaceshipYPosition) == Mvl(btype(INTEGER,?,?));Type(spaceshipXPosition) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Spaceship)) == (Type(resetSpaceship) == Cst(No_type,btype(INTEGER,?,?));Type(EngageWarpDrive) == Cst(etype(MESSAGE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveBackward) == Cst(etype(MESSAGE,?,?),No_type);Type(MoveForward) == Cst(etype(MESSAGE,?,?),No_type);Type(MoveDown) == Cst(etype(MESSAGE,?,?),No_type);Type(MoveUp) == Cst(etype(MESSAGE,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
