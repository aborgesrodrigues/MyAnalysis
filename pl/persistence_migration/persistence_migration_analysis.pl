:- module(persistence_migration_analysis, [ persistence_call/11 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
persistence_call(CallId, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, DAO, Business, DAOClass, BusinessClass, GenericDAOClass) :-
  callT(CallId, _, MethodCall, _, _, MethodCalled, _, _),
  methodT(MethodCalled, DAO, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, _, _),
  %classT(DAO,_,'UnidadeOrganizacionalDAO',_,_),
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
  
  % match the structure
%  callT(CallId, CallParent, Enclosing, FieldAccess, [Argument], Println, [], _),
%  fieldAccessT(FieldAccess, CallId, Enclosing, StaticTypeRef, Out, _),
%  staticTypeRefT(StaticTypeRef, FieldAccess, Enclosing, System),
%  literalT(LiteralT,CallT,Enclosing,_,'Capacidade do Integer estourou.'),
  % match the references to class 'System', field 'out' and method 'println'
%  fully_qualified_name(System, 'java.lang.System'),
%  fieldT(Out, System, PrintStream, 'out', _),
%  methodT(Println, PrintStream, 'println', _, _, _, _, _),
  % limit the scope
%  methodT(Enclosing, ParentClass, _, _, _, _, _, _),
%  not(fully_qualified_name(ParentClass, 'logging.MyLogger')).
  