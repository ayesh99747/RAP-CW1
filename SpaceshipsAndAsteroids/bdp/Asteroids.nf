﻿Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Asteroids))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Asteroids))==(Machine(Asteroids));
  Level(Machine(Asteroids))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Asteroids)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Asteroids))==(Space)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Asteroids))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Asteroids))==(?);
  List_Includes(Machine(Asteroids))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Asteroids))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Asteroids))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Asteroids))==(?);
  Context_List_Variables(Machine(Asteroids))==(?);
  Abstract_List_Variables(Machine(Asteroids))==(?);
  Local_List_Variables(Machine(Asteroids))==(asteroids);
  List_Variables(Machine(Asteroids))==(asteroids);
  External_List_Variables(Machine(Asteroids))==(asteroids)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Asteroids))==(?);
  Abstract_List_VisibleVariables(Machine(Asteroids))==(?);
  External_List_VisibleVariables(Machine(Asteroids))==(?);
  Expanded_List_VisibleVariables(Machine(Asteroids))==(?);
  List_VisibleVariables(Machine(Asteroids))==(?);
  Internal_List_VisibleVariables(Machine(Asteroids))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Asteroids))==(btrue);
  Gluing_List_Invariant(Machine(Asteroids))==(btrue);
  Expanded_List_Invariant(Machine(Asteroids))==(btrue);
  Abstract_List_Invariant(Machine(Asteroids))==(btrue);
  Context_List_Invariant(Machine(Asteroids))==(btrue);
  List_Invariant(Machine(Asteroids))==(asteroids: XAxis <-> YAxis & card(asteroids) = 11)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Asteroids))==(btrue);
  Abstract_List_Assertions(Machine(Asteroids))==(btrue);
  Context_List_Assertions(Machine(Asteroids))==(btrue);
  List_Assertions(Machine(Asteroids))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Asteroids))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Asteroids))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Asteroids))==(asteroids:={3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5});
  Context_List_Initialisation(Machine(Asteroids))==(skip);
  List_Initialisation(Machine(Asteroids))==(asteroids:={3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Asteroids))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Asteroids),Machine(Space))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Asteroids))==(btrue);
  List_Constraints(Machine(Asteroids))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Asteroids))==(?);
  List_Operations(Machine(Asteroids))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Asteroids))==(?);
  Inherited_List_Constants(Machine(Asteroids))==(?);
  List_Constants(Machine(Asteroids))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Asteroids))==(?);
  Context_List_Defered(Machine(Asteroids))==(?);
  Context_List_Sets(Machine(Asteroids))==(?);
  List_Valuable_Sets(Machine(Asteroids))==(?);
  Inherited_List_Enumerated(Machine(Asteroids))==(?);
  Inherited_List_Defered(Machine(Asteroids))==(?);
  Inherited_List_Sets(Machine(Asteroids))==(?);
  List_Enumerated(Machine(Asteroids))==(?);
  List_Defered(Machine(Asteroids))==(?);
  List_Sets(Machine(Asteroids))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Asteroids))==(?);
  Expanded_List_HiddenConstants(Machine(Asteroids))==(?);
  List_HiddenConstants(Machine(Asteroids))==(?);
  External_List_HiddenConstants(Machine(Asteroids))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Asteroids))==(btrue);
  Context_List_Properties(Machine(Asteroids))==(xMax: NAT1 & xMax = 12 & yMax: NAT1 & yMax = 7 & XAxis <: NAT1 & XAxis = 1..xMax & YAxis <: NAT1 & YAxis = 1..yMax & space: POW(NAT1*NAT1) & space = XAxis*YAxis);
  Inherited_List_Properties(Machine(Asteroids))==(btrue);
  List_Properties(Machine(Asteroids))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Asteroids),Machine(Space))==(?);
  Seen_Context_List_Enumerated(Machine(Asteroids))==(?);
  Seen_Context_List_Invariant(Machine(Asteroids))==(btrue);
  Seen_Context_List_Assertions(Machine(Asteroids))==(btrue);
  Seen_Context_List_Properties(Machine(Asteroids))==(btrue);
  Seen_List_Constraints(Machine(Asteroids))==(btrue);
  Seen_List_Operations(Machine(Asteroids),Machine(Space))==(?);
  Seen_Expanded_List_Invariant(Machine(Asteroids),Machine(Space))==(btrue)
END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
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
THEORY VariablesEnvX IS
  Variables(Machine(Asteroids)) == (Type(asteroids) == Mvl(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
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
