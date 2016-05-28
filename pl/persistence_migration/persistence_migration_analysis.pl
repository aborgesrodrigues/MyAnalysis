:- module(persistence_migration_analysis, [ persistence_call/14 ]).
%:- module(persistence_migration_analysis, [ remove_local_variable/9 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, BusinessTarget, DAOClass, BusinessClass, GenericDAOClass) :-
  callT(CallId, _, MethodCall, Receiver, CallParameters, MethodCalled, _, _),
  methodT(MethodCalled, _, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, _, _),
  fully_qualified_name(GenericDAO, GenericDAOClass),
  fully_qualified_name(DAO,DAOClass),
  ((identT(Receiver, CallId, MethodCall, Local), localT(Local, _, _, DAO, _, _)) ; newT(Receiver, _, _, _, _, _, _, DAO, _)),
  %subtype(DAO, GenericDAO),
  % limit the scope
  methodT(MethodCall, Business, _, _, _, _, _, _),
  not(fully_qualified_name(Business, BusinessClass)),
  not(subtype(Business, GenericDAO)),
  fully_qualified_name(BusinessTarget, BusinessClass).
	
	
%remove_local_variable(LocalVariable, MethodCall, DAO, Business, BusinessTarget, GenericDAO, DAOClass, BusinessClass, GenericDAOClass) :-
%  	localT(LocalVariable, _, MethodCall, DAO, _, _),
%  	fully_qualified_name(DAO,DAOClass),
%  	fully_qualified_name(GenericDAO, GenericDAOClass),
  	
%	methodT(MethodCall, Business, _, _, _, _, _, _),
%	not(fully_qualified_name(Business, BusinessClass)),
%	not(subtype(Business, GenericDAO)),
%	fully_qualified_name(BusinessTarget, BusinessClass).