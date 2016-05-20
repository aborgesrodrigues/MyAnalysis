:- module(persistence_migration_analysis, [ persistence_call/15 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, GenericDAO, DAOClass, BusinessClass, GenericDAOClass) :-
  callT(CallId, _, MethodCall, Receiver, CallParameters, MethodCalled, _, _),
  methodT(MethodCalled, _, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, _, _),
  fully_qualified_name(GenericDAO, GenericDAOClass),
  ((identT(Receiver, CallId, MethodCall, Local), localT(Local, _, _, DAO, _, _)) ; newT(Receiver, _, _, _, _, _, _, DAO1, _)),
  fully_qualified_name(DAO,DAOClass),
  %subtype(DAO, GenericDAO),
  % limit the scope
  methodT(MethodCall, Business, _, _, _, _, _, _),
  not(fully_qualified_name(Business, BusinessClass)),
  not(subtype(Business, GenericDAO)),
  fully_qualified_name(NotBusiness, BusinessClass).

  