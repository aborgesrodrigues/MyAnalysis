:- module(persistence_migration_analysis, [ persistence_call/15 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, GenericDAO, DAOClass, BusinessClass, GenericDAOClass) :-
  callT(CallId, _, MethodCall, Receiver, CallParameters, MethodCalled, _, _),
  methodT(MethodCalled, DAO, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, _, _),
  fully_qualified_name(GenericDAO, GenericDAOClass),
  %subtype(DAO, GenericDAO),
  ((identT(Receiver, CallId, MethodCall, Local), localT(Local, _, _, DAO1, _, _)) ; newT(Receiver, _, _, _, _, _, _, DAO1, _)),
  fully_qualified_name(DAO1,DAOClass),
  %classT(DAO, _, NameClass, _, _),
  %classT(DAO2, _, NameClass2, _, _),
  %enclClass(DAO, GenericDAO),
  %extendsT(_, DAO, GenericDAO),
  %fully_qualified_name(DAO1,DAOClass),
  %subtype(DAO1, GenericDAO),
  %NameClass == NameClass2,
  % limit the scope
  methodT(MethodCall, Business, _, _, _, _, _, _),
  not(fully_qualified_name(Business, BusinessClass)),
  not(subtype(Business, GenericDAO)),
  fully_qualified_name(NotBusiness, BusinessClass).
%  classT(Business,_,_,_,_),
%  classT(DAOClasses,_,_,_,_),
%  subtype(DAOClasses, GenericDAO),
%  Business \== DAOClasses,
%  Business \== BusinessBelongs.

  