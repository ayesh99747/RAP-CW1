Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SpaceshipAndAsteroidsGame))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SpaceshipAndAsteroidsGame))==(Machine(SpaceshipAndAsteroidsGame));
  Level(Machine(SpaceshipAndAsteroidsGame))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SpaceshipAndAsteroidsGame)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SpaceshipAndAsteroidsGame))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SpaceshipAndAsteroidsGame))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SpaceshipAndAsteroidsGame))==(Spaceship);
  List_Includes(Machine(SpaceshipAndAsteroidsGame))==(Spaceship)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SpaceshipAndAsteroidsGame))==(MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SpaceshipAndAsteroidsGame))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SpaceshipAndAsteroidsGame))==(?);
  Context_List_Variables(Machine(SpaceshipAndAsteroidsGame))==(?);
  Abstract_List_Variables(Machine(SpaceshipAndAsteroidsGame))==(?);
  Local_List_Variables(Machine(SpaceshipAndAsteroidsGame))==(?);
  List_Variables(Machine(SpaceshipAndAsteroidsGame))==(gameStatus,spaceRegionsVisited,numberOfCollisions,remainingPower,spaceshipYPosition,spaceshipXPosition);
  External_List_Variables(Machine(SpaceshipAndAsteroidsGame))==(gameStatus,spaceRegionsVisited,numberOfCollisions,remainingPower,spaceshipYPosition,spaceshipXPosition)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SpaceshipAndAsteroidsGame))==(?);
  Abstract_List_VisibleVariables(Machine(SpaceshipAndAsteroidsGame))==(?);
  External_List_VisibleVariables(Machine(SpaceshipAndAsteroidsGame))==(?);
  Expanded_List_VisibleVariables(Machine(SpaceshipAndAsteroidsGame))==(?);
  List_VisibleVariables(Machine(SpaceshipAndAsteroidsGame))==(?);
  Internal_List_VisibleVariables(Machine(SpaceshipAndAsteroidsGame))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  Gluing_List_Invariant(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  Abstract_List_Invariant(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  Expanded_List_Invariant(Machine(SpaceshipAndAsteroidsGame))==(spaceshipXPosition: XAxis & spaceshipYPosition: YAxis & remainingPower: NAT & remainingPower>=0 & numberOfCollisions: NAT & spaceRegionsVisited: seq(space) & gameStatus: STATUS);
  Context_List_Invariant(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  List_Invariant(Machine(SpaceshipAndAsteroidsGame))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  Expanded_List_Assertions(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  Context_List_Assertions(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  List_Assertions(Machine(SpaceshipAndAsteroidsGame))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(SpaceshipAndAsteroidsGame))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(SpaceshipAndAsteroidsGame))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SpaceshipAndAsteroidsGame))==(spaceshipXPosition,spaceshipYPosition,remainingPower,numberOfCollisions,spaceRegionsVisited,gameStatus:=prj1(XAxis,YAxis)(homebaseLocation),prj2(XAxis,YAxis)(homebaseLocation),40,0,[homebaseLocation],GameREADY);
  Context_List_Initialisation(Machine(SpaceshipAndAsteroidsGame))==(skip);
  List_Initialisation(Machine(SpaceshipAndAsteroidsGame))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SpaceshipAndAsteroidsGame))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(SpaceshipAndAsteroidsGame),Machine(Spaceship))==(40)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(SpaceshipAndAsteroidsGame),Machine(Spaceship))==(40: NAT1 & 40>=40);
  List_Context_Constraints(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  List_Constraints(Machine(SpaceshipAndAsteroidsGame))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SpaceshipAndAsteroidsGame))==(MissionStatus,RegionsVisited,DockedAtStarbase,GameStatus,NewGame,MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive);
  List_Operations(Machine(SpaceshipAndAsteroidsGame))==(MissionStatus,RegionsVisited,DockedAtStarbase,GameStatus,NewGame,MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive)
END
&
THEORY ListInputX IS
  List_Input(Machine(SpaceshipAndAsteroidsGame),EngageWarpDrive)==(newSpaceshipXPosition,newSpaceshipYPosition);
  List_Input(Machine(SpaceshipAndAsteroidsGame),MoveBackward)==(?);
  List_Input(Machine(SpaceshipAndAsteroidsGame),MoveForward)==(?);
  List_Input(Machine(SpaceshipAndAsteroidsGame),MoveDown)==(?);
  List_Input(Machine(SpaceshipAndAsteroidsGame),MoveUp)==(?);
  List_Input(Machine(SpaceshipAndAsteroidsGame),MissionStatus)==(?);
  List_Input(Machine(SpaceshipAndAsteroidsGame),RegionsVisited)==(?);
  List_Input(Machine(SpaceshipAndAsteroidsGame),DockedAtStarbase)==(?);
  List_Input(Machine(SpaceshipAndAsteroidsGame),GameStatus)==(?);
  List_Input(Machine(SpaceshipAndAsteroidsGame),NewGame)==(power)
END
&
THEORY ListOutputX IS
  List_Output(Machine(SpaceshipAndAsteroidsGame),EngageWarpDrive)==(message);
  List_Output(Machine(SpaceshipAndAsteroidsGame),MoveBackward)==(message);
  List_Output(Machine(SpaceshipAndAsteroidsGame),MoveForward)==(message);
  List_Output(Machine(SpaceshipAndAsteroidsGame),MoveDown)==(message);
  List_Output(Machine(SpaceshipAndAsteroidsGame),MoveUp)==(message);
  List_Output(Machine(SpaceshipAndAsteroidsGame),MissionStatus)==(location,power,collisions);
  List_Output(Machine(SpaceshipAndAsteroidsGame),RegionsVisited)==(route);
  List_Output(Machine(SpaceshipAndAsteroidsGame),DockedAtStarbase)==(dockedStatus);
  List_Output(Machine(SpaceshipAndAsteroidsGame),GameStatus)==(status);
  List_Output(Machine(SpaceshipAndAsteroidsGame),NewGame)==(status)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(SpaceshipAndAsteroidsGame),EngageWarpDrive)==(message <-- EngageWarpDrive(newSpaceshipXPosition,newSpaceshipYPosition));
  List_Header(Machine(SpaceshipAndAsteroidsGame),MoveBackward)==(message <-- MoveBackward);
  List_Header(Machine(SpaceshipAndAsteroidsGame),MoveForward)==(message <-- MoveForward);
  List_Header(Machine(SpaceshipAndAsteroidsGame),MoveDown)==(message <-- MoveDown);
  List_Header(Machine(SpaceshipAndAsteroidsGame),MoveUp)==(message <-- MoveUp);
  List_Header(Machine(SpaceshipAndAsteroidsGame),MissionStatus)==(location,power,collisions <-- MissionStatus);
  List_Header(Machine(SpaceshipAndAsteroidsGame),RegionsVisited)==(route <-- RegionsVisited);
  List_Header(Machine(SpaceshipAndAsteroidsGame),DockedAtStarbase)==(dockedStatus <-- DockedAtStarbase);
  List_Header(Machine(SpaceshipAndAsteroidsGame),GameStatus)==(status <-- GameStatus);
  List_Header(Machine(SpaceshipAndAsteroidsGame),NewGame)==(status <-- NewGame(power))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(SpaceshipAndAsteroidsGame),EngageWarpDrive)==(newSpaceshipXPosition: NAT1 & newSpaceshipYPosition: NAT1 & newSpaceshipXPosition: XAxis & newSpaceshipYPosition: YAxis & newSpaceshipXPosition|->newSpaceshipYPosition/=(spaceshipXPosition|->spaceshipYPosition) & gameStatus/=GameWON);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),EngageWarpDrive)==(newSpaceshipXPosition: NAT1 & newSpaceshipYPosition: NAT1 & newSpaceshipXPosition: XAxis & newSpaceshipYPosition: YAxis & newSpaceshipXPosition|->newSpaceshipYPosition/=(spaceshipXPosition|->spaceshipYPosition) & gameStatus/=GameWON);
  Own_Precondition(Machine(SpaceshipAndAsteroidsGame),MoveBackward)==(gameStatus/=GameWON);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),MoveBackward)==(gameStatus/=GameWON);
  Own_Precondition(Machine(SpaceshipAndAsteroidsGame),MoveForward)==(gameStatus/=GameWON);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),MoveForward)==(gameStatus/=GameWON);
  Own_Precondition(Machine(SpaceshipAndAsteroidsGame),MoveDown)==(gameStatus/=GameWON);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),MoveDown)==(gameStatus/=GameWON);
  Own_Precondition(Machine(SpaceshipAndAsteroidsGame),MoveUp)==(gameStatus/=GameWON);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),MoveUp)==(gameStatus/=GameWON);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),MissionStatus)==(btrue);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),RegionsVisited)==(btrue);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),DockedAtStarbase)==(btrue);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),GameStatus)==(btrue);
  List_Precondition(Machine(SpaceshipAndAsteroidsGame),NewGame)==(power: NAT1 & power>=40)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),NewGame)==(power: NAT1 & power>=40 | spaceshipXPosition,spaceshipYPosition,remainingPower,numberOfCollisions,spaceRegionsVisited,gameStatus:=1,1,power,0,[homebaseLocation],GameREADY || status:=GameREADY);
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),GameStatus)==(btrue | status:=gameStatus);
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),DockedAtStarbase)==(btrue | spaceshipXPosition|->spaceshipYPosition = starbaseLocation ==> dockedStatus:=TRUE [] not(spaceshipXPosition|->spaceshipYPosition = starbaseLocation) ==> dockedStatus:=FALSE);
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),RegionsVisited)==(btrue | route:=spaceRegionsVisited);
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),MissionStatus)==(btrue | location,power,collisions:=spaceshipXPosition|->spaceshipYPosition,remainingPower,numberOfCollisions);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),EngageWarpDrive)==(IF remainingPower-warpMovePower>=0 THEN IF newSpaceshipXPosition/:XAxis or newSpaceshipYPosition/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF newSpaceshipYPosition: ran({newSpaceshipXPosition}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipXPosition:=newSpaceshipXPosition || spaceshipYPosition:=newSpaceshipYPosition || remainingPower:=remainingPower-warpMovePower || message:=SpaceshipWarped || spaceRegionsVisited:=spaceRegionsVisited<-(newSpaceshipXPosition|->newSpaceshipYPosition) || IF newSpaceshipXPosition|->newSpaceshipYPosition = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameNotOver END);
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),EngageWarpDrive)==(newSpaceshipXPosition: NAT1 & newSpaceshipYPosition: NAT1 & newSpaceshipXPosition: XAxis & newSpaceshipYPosition: YAxis & newSpaceshipXPosition|->newSpaceshipYPosition/=(spaceshipXPosition|->spaceshipYPosition) & gameStatus/=GameWON | remainingPower-warpMovePower>=0 ==> (newSpaceshipXPosition/:XAxis or newSpaceshipYPosition/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(newSpaceshipXPosition/:XAxis or newSpaceshipYPosition/:YAxis) ==> (newSpaceshipYPosition: ran({newSpaceshipXPosition}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(newSpaceshipYPosition: ran({newSpaceshipXPosition}<|asteroids)) ==> (spaceshipXPosition,spaceshipYPosition,remainingPower,message,spaceRegionsVisited:=newSpaceshipXPosition,newSpaceshipYPosition,remainingPower-warpMovePower,SpaceshipWarped,spaceRegionsVisited<-(newSpaceshipXPosition|->newSpaceshipYPosition) || (newSpaceshipXPosition|->newSpaceshipYPosition = starbaseLocation ==> gameStatus:=GameWON [] not(newSpaceshipXPosition|->newSpaceshipYPosition = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-warpMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameNotOver);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),MoveBackward)==(IF remainingPower-normalMovePower>=0 THEN IF spaceshipXPosition-1/:XAxis or spaceshipYPosition/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF spaceshipYPosition: ran({spaceshipXPosition-1}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipXPosition:=spaceshipXPosition-1 || remainingPower:=remainingPower-normalMovePower || message:=SpaceshipMovedLeft || spaceRegionsVisited:=spaceRegionsVisited<-(spaceshipXPosition-1|->spaceshipYPosition) || IF spaceshipXPosition-1|->spaceshipYPosition = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameLOST END);
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),MoveBackward)==(gameStatus/=GameWON | remainingPower-normalMovePower>=0 ==> (spaceshipXPosition-1/:XAxis or spaceshipYPosition/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(spaceshipXPosition-1/:XAxis or spaceshipYPosition/:YAxis) ==> (spaceshipYPosition: ran({spaceshipXPosition-1}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(spaceshipYPosition: ran({spaceshipXPosition-1}<|asteroids)) ==> (spaceshipXPosition,remainingPower,message,spaceRegionsVisited:=spaceshipXPosition-1,remainingPower-normalMovePower,SpaceshipMovedLeft,spaceRegionsVisited<-(spaceshipXPosition-1|->spaceshipYPosition) || (spaceshipXPosition-1|->spaceshipYPosition = starbaseLocation ==> gameStatus:=GameWON [] not(spaceshipXPosition-1|->spaceshipYPosition = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-normalMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameLOST);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),MoveForward)==(IF remainingPower-normalMovePower>=0 THEN IF spaceshipXPosition+1/:XAxis or spaceshipYPosition/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF spaceshipYPosition: ran({spaceshipXPosition+1}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipXPosition:=spaceshipXPosition+1 || remainingPower:=remainingPower-normalMovePower || message:=SpaceshipMovedRight || spaceRegionsVisited:=spaceRegionsVisited<-(spaceshipXPosition+1|->spaceshipYPosition) || IF spaceshipXPosition+1|->spaceshipYPosition = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameLOST END);
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),MoveForward)==(gameStatus/=GameWON | remainingPower-normalMovePower>=0 ==> (spaceshipXPosition+1/:XAxis or spaceshipYPosition/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(spaceshipXPosition+1/:XAxis or spaceshipYPosition/:YAxis) ==> (spaceshipYPosition: ran({spaceshipXPosition+1}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(spaceshipYPosition: ran({spaceshipXPosition+1}<|asteroids)) ==> (spaceshipXPosition,remainingPower,message,spaceRegionsVisited:=spaceshipXPosition+1,remainingPower-normalMovePower,SpaceshipMovedRight,spaceRegionsVisited<-(spaceshipXPosition+1|->spaceshipYPosition) || (spaceshipXPosition+1|->spaceshipYPosition = starbaseLocation ==> gameStatus:=GameWON [] not(spaceshipXPosition+1|->spaceshipYPosition = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-normalMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameLOST);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),MoveDown)==(IF remainingPower-normalMovePower>=0 THEN IF spaceshipXPosition/:XAxis or spaceshipYPosition-1/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF spaceshipYPosition-1: ran({spaceshipXPosition}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipYPosition:=spaceshipYPosition-1 || remainingPower:=remainingPower-normalMovePower || message:=SpaceshipMovedDown || spaceRegionsVisited:=spaceRegionsVisited<-(spaceshipXPosition|->spaceshipYPosition-1) || IF spaceshipXPosition|->spaceshipYPosition-1 = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameLOST END);
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),MoveDown)==(gameStatus/=GameWON | remainingPower-normalMovePower>=0 ==> (spaceshipXPosition/:XAxis or spaceshipYPosition-1/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(spaceshipXPosition/:XAxis or spaceshipYPosition-1/:YAxis) ==> (spaceshipYPosition-1: ran({spaceshipXPosition}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(spaceshipYPosition-1: ran({spaceshipXPosition}<|asteroids)) ==> (spaceshipYPosition,remainingPower,message,spaceRegionsVisited:=spaceshipYPosition-1,remainingPower-normalMovePower,SpaceshipMovedDown,spaceRegionsVisited<-(spaceshipXPosition|->spaceshipYPosition-1) || (spaceshipXPosition|->spaceshipYPosition-1 = starbaseLocation ==> gameStatus:=GameWON [] not(spaceshipXPosition|->spaceshipYPosition-1 = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-normalMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameLOST);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),MoveUp)==(IF remainingPower-normalMovePower>=0 THEN IF spaceshipXPosition/:XAxis or spaceshipYPosition+1/:YAxis THEN message:=SpaceshipHasExceededSpaceBoundaries ELSE IF spaceshipYPosition+1: ran({spaceshipXPosition}<|asteroids) THEN remainingPower:=remainingPower-crashReducePower || message:=SpaceshipHasCrashedWitAnAsteroid || numberOfCollisions:=numberOfCollisions+1 ELSE spaceshipYPosition:=spaceshipYPosition+1 || remainingPower:=remainingPower-normalMovePower || message:=SpaceshipMovedUp || spaceRegionsVisited:=spaceRegionsVisited<-(spaceshipXPosition|->spaceshipYPosition+1) || IF spaceshipXPosition|->spaceshipYPosition+1 = starbaseLocation THEN gameStatus:=GameWON ELSE gameStatus:=GameNotOver END END END ELSE message:=InsufficientPowerAvailableToPerformOperation || gameStatus:=GameLOST END);
  Expanded_List_Substitution(Machine(SpaceshipAndAsteroidsGame),MoveUp)==(gameStatus/=GameWON | remainingPower-normalMovePower>=0 ==> (spaceshipXPosition/:XAxis or spaceshipYPosition+1/:YAxis ==> message:=SpaceshipHasExceededSpaceBoundaries [] not(spaceshipXPosition/:XAxis or spaceshipYPosition+1/:YAxis) ==> (spaceshipYPosition+1: ran({spaceshipXPosition}<|asteroids) ==> remainingPower,message,numberOfCollisions:=remainingPower-crashReducePower,SpaceshipHasCrashedWitAnAsteroid,numberOfCollisions+1 [] not(spaceshipYPosition+1: ran({spaceshipXPosition}<|asteroids)) ==> (spaceshipYPosition,remainingPower,message,spaceRegionsVisited:=spaceshipYPosition+1,remainingPower-normalMovePower,SpaceshipMovedUp,spaceRegionsVisited<-(spaceshipXPosition|->spaceshipYPosition+1) || (spaceshipXPosition|->spaceshipYPosition+1 = starbaseLocation ==> gameStatus:=GameWON [] not(spaceshipXPosition|->spaceshipYPosition+1 = starbaseLocation) ==> gameStatus:=GameNotOver)))) [] not(remainingPower-normalMovePower>=0) ==> message,gameStatus:=InsufficientPowerAvailableToPerformOperation,GameLOST);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),MissionStatus)==(location:=spaceshipXPosition|->spaceshipYPosition || power:=remainingPower || collisions:=numberOfCollisions);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),RegionsVisited)==(route:=spaceRegionsVisited);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),DockedAtStarbase)==(IF spaceshipXPosition|->spaceshipYPosition = starbaseLocation THEN dockedStatus:=TRUE ELSE dockedStatus:=FALSE END);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),GameStatus)==(status:=gameStatus);
  List_Substitution(Machine(SpaceshipAndAsteroidsGame),NewGame)==(resetSpaceship(power) || status:=GameREADY)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SpaceshipAndAsteroidsGame))==(normalMovePower,warpMovePower,crashReducePower,homebaseLocation,starbaseLocation);
  Inherited_List_Constants(Machine(SpaceshipAndAsteroidsGame))==(normalMovePower,warpMovePower,crashReducePower,homebaseLocation,starbaseLocation);
  List_Constants(Machine(SpaceshipAndAsteroidsGame))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(SpaceshipAndAsteroidsGame),STATUS)==({GameREADY,GameNotOver,GameWON,GameLOST});
  Context_List_Enumerated(Machine(SpaceshipAndAsteroidsGame))==(?);
  Context_List_Defered(Machine(SpaceshipAndAsteroidsGame))==(?);
  Context_List_Sets(Machine(SpaceshipAndAsteroidsGame))==(?);
  List_Valuable_Sets(Machine(SpaceshipAndAsteroidsGame))==(?);
  Inherited_List_Enumerated(Machine(SpaceshipAndAsteroidsGame))==(MESSAGE,STATUS);
  Inherited_List_Defered(Machine(SpaceshipAndAsteroidsGame))==(?);
  Inherited_List_Sets(Machine(SpaceshipAndAsteroidsGame))==(MESSAGE,STATUS);
  List_Enumerated(Machine(SpaceshipAndAsteroidsGame))==(?);
  List_Defered(Machine(SpaceshipAndAsteroidsGame))==(?);
  List_Sets(Machine(SpaceshipAndAsteroidsGame))==(?);
  Set_Definition(Machine(SpaceshipAndAsteroidsGame),MESSAGE)==({SpaceshipMovedUp,SpaceshipMovedDown,SpaceshipMovedRight,SpaceshipMovedLeft,SpaceshipWarped,SpaceshipReady,SpaceshipHasExceededSpaceBoundaries,SpaceshipHasCrashedWitAnAsteroid,InsufficientPowerAvailableToPerformOperation})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SpaceshipAndAsteroidsGame))==(?);
  Expanded_List_HiddenConstants(Machine(SpaceshipAndAsteroidsGame))==(?);
  List_HiddenConstants(Machine(SpaceshipAndAsteroidsGame))==(?);
  External_List_HiddenConstants(Machine(SpaceshipAndAsteroidsGame))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  Context_List_Properties(Machine(SpaceshipAndAsteroidsGame))==(btrue);
  Inherited_List_Properties(Machine(SpaceshipAndAsteroidsGame))==(normalMovePower: NAT1 & normalMovePower = 5 & warpMovePower: NAT1 & warpMovePower = 20 & crashReducePower: NAT1 & crashReducePower = 10 & homebaseLocation: space & homebaseLocation = 1|->1 & starbaseLocation: space & starbaseLocation = 6|->4 & MESSAGE: FIN(INTEGER) & not(MESSAGE = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}));
  List_Properties(Machine(SpaceshipAndAsteroidsGame))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),EngageWarpDrive)==(?);
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),MoveBackward)==(?);
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),MoveForward)==(?);
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),MoveDown)==(?);
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),MoveUp)==(?);
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),MissionStatus)==(?);
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),RegionsVisited)==(?);
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),DockedAtStarbase)==(?);
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),GameStatus)==(?);
  List_ANY_Var(Machine(SpaceshipAndAsteroidsGame),NewGame)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SpaceshipAndAsteroidsGame)) == (? | normalMovePower,warpMovePower,crashReducePower,homebaseLocation,starbaseLocation,MESSAGE,STATUS,SpaceshipMovedUp,SpaceshipMovedDown,SpaceshipMovedRight,SpaceshipMovedLeft,SpaceshipWarped,SpaceshipReady,SpaceshipHasExceededSpaceBoundaries,SpaceshipHasCrashedWitAnAsteroid,InsufficientPowerAvailableToPerformOperation,GameREADY,GameNotOver,GameWON,GameLOST | ? | V,gameStatus,spaceRegionsVisited,numberOfCollisions,remainingPower,spaceshipYPosition,spaceshipXPosition | MissionStatus,RegionsVisited,DockedAtStarbase,GameStatus,NewGame | MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive | included(Machine(Spaceship)) | ? | SpaceshipAndAsteroidsGame);
  List_Of_HiddenCst_Ids(Machine(SpaceshipAndAsteroidsGame)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SpaceshipAndAsteroidsGame)) == (normalMovePower,warpMovePower,crashReducePower,homebaseLocation,starbaseLocation);
  List_Of_VisibleVar_Ids(Machine(SpaceshipAndAsteroidsGame)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SpaceshipAndAsteroidsGame)) == (seen(Machine(Space)): (xMax,yMax,XAxis,YAxis,space | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(Asteroids)): (? | ? | asteroids | ? | ? | ? | ? | ? | ?));
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
THEORY SetsEnvX IS
  Sets(Machine(SpaceshipAndAsteroidsGame)) == (Type(STATUS) == Cst(SetOf(etype(STATUS,0,3)));Type(MESSAGE) == Cst(SetOf(etype(MESSAGE,0,8))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(SpaceshipAndAsteroidsGame)) == (Type(starbaseLocation) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(homebaseLocation) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(crashReducePower) == Cst(btype(INTEGER,?,?));Type(warpMovePower) == Cst(btype(INTEGER,?,?));Type(normalMovePower) == Cst(btype(INTEGER,?,?));Type(GameLOST) == Cst(etype(STATUS,0,3));Type(GameWON) == Cst(etype(STATUS,0,3));Type(GameNotOver) == Cst(etype(STATUS,0,3));Type(GameREADY) == Cst(etype(STATUS,0,3));Type(InsufficientPowerAvailableToPerformOperation) == Cst(etype(MESSAGE,0,8));Type(SpaceshipHasCrashedWitAnAsteroid) == Cst(etype(MESSAGE,0,8));Type(SpaceshipHasExceededSpaceBoundaries) == Cst(etype(MESSAGE,0,8));Type(SpaceshipReady) == Cst(etype(MESSAGE,0,8));Type(SpaceshipWarped) == Cst(etype(MESSAGE,0,8));Type(SpaceshipMovedLeft) == Cst(etype(MESSAGE,0,8));Type(SpaceshipMovedRight) == Cst(etype(MESSAGE,0,8));Type(SpaceshipMovedDown) == Cst(etype(MESSAGE,0,8));Type(SpaceshipMovedUp) == Cst(etype(MESSAGE,0,8)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(SpaceshipAndAsteroidsGame)) == (Type(spaceshipXPosition) == Mvl(btype(INTEGER,?,?));Type(spaceshipYPosition) == Mvl(btype(INTEGER,?,?));Type(remainingPower) == Mvl(btype(INTEGER,?,?));Type(numberOfCollisions) == Mvl(btype(INTEGER,?,?));Type(spaceRegionsVisited) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(gameStatus) == Mvl(etype(STATUS,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(SpaceshipAndAsteroidsGame)) == (Type(MoveUp) == Cst(etype(MESSAGE,?,?),No_type);Type(MoveDown) == Cst(etype(MESSAGE,?,?),No_type);Type(MoveForward) == Cst(etype(MESSAGE,?,?),No_type);Type(MoveBackward) == Cst(etype(MESSAGE,?,?),No_type);Type(EngageWarpDrive) == Cst(etype(MESSAGE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(NewGame) == Cst(etype(STATUS,?,?),btype(INTEGER,?,?));Type(GameStatus) == Cst(etype(STATUS,?,?),No_type);Type(DockedAtStarbase) == Cst(btype(BOOL,?,?),No_type);Type(RegionsVisited) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type));
  Observers(Machine(SpaceshipAndAsteroidsGame)) == (Type(GameStatus) == Cst(etype(STATUS,?,?),No_type);Type(DockedAtStarbase) == Cst(btype(BOOL,?,?),No_type);Type(RegionsVisited) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
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
