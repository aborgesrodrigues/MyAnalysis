:- module(persistence__persistence_analysis, [ persistence_persistence_call/1 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
persistence_persistence_call(CallId) :-
  callT(CallId, _, MethodCall, Receiver, _, _, _, _),
  %methodT(MethodCalled, DAO, _, _, _, _, _, _),
  fully_qualified_name(GenericDAO, 'org.sigaept.nucleo.dao.GenericDAO'),
  subtype(DAO, GenericDAO),
  %DAO \== GenericDAO,
  (
   (identT(Receiver, CallId, MethodCall, Local), localT(Local, _, _, DAO, _, _)) 
   ; 
   newT(Receiver, _, _, _, _, _, _, DAO, _)
   ;
   callT(Receiver, _, _, _, _, _, _, DAO)
  ),
  % limit the scope
  methodT(MethodCall, DAOClass, _, _, _, _, _, _),
  %extendsT(_, DAO, GenericDAO),
  subtype(DAOClass, GenericDAO),
  classT(DAOClass,_,_,_,_),
  DAOClass \== DAO,
  DAO \== GenericDAO.
%  classT(ClassDAO,_,_,_,_),
%  extendsT(_, GenericDAO, ClassDAO).