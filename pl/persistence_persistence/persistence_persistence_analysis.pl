:- module(persistence__persistence_analysis, [ persistence_persistence_call/1 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
persistence_persistence_call(CallId) :-
  callT(CallId, _, MethodCall, _, _, MethodCalled, _, _),
  methodT(MethodCalled, DAO, _, _, _, _, _, _),
  fully_qualified_name(GenericDAO, 'org.sigaept.nucleo.dao.GenericDAO'),
  subtype(DAO, GenericDAO),
  DAO \== GenericDAO,
%  not(classT(DAO,_,_,_,_)),
  % limit the scope
  methodT(MethodCall, DAOClass, _, _, _, _, _, _),
  %extendsT(_, DAO, GenericDAO),
  subtype(DAOClass, GenericDAO),
  classT(DAOClass,_,_,_,_),
  DAOClass \== DAO.
%  classT(ClassDAO,_,_,_,_),
%  extendsT(_, GenericDAO, ClassDAO).