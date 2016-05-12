:- module(persistence_migration_analysis, [ persistence_call/12 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
persistence_call(CallId, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, DAOClass, BusinessClass, GenericDAOClass) :-
  callT(CallId, _, MethodCall, _, CallParameters, MethodCalled, _, _),
  methodT(MethodCalled, DAO, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, _, _),
  fully_qualified_name(DAO,DAOClass),
  subtype(DAO, GenericDAO), 
  fully_qualified_name(GenericDAO, GenericDAOClass),
  %fully_qualified_name(DAO1,DAOClass),
  %subtype(DAO1, GenericDAO),
  %DAO == DAO1; DAO == GenericDAO,
  % limit the scope
  methodT(MethodCall, Business, _, _, _, _, _, _),
  not(fully_qualified_name(Business, BusinessClass)),
  not(subtype(Business, GenericDAO)).
%  classT(Business,_,_,_,_),
%  classT(DAOClasses,_,_,_,_),
%  subtype(DAOClasses, GenericDAO),
%  Business \== DAOClasses,
%  Business \== BusinessBelongs.

  