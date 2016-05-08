:- module(sysout_analysis, [ sysout_call/6 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument) :-
  % match the structure
  callT(CallId, CallParent, Enclosing, FieldAccess, [Argument], Println, [], _),
  fieldAccessT(FieldAccess, CallId, Enclosing, StaticTypeRef, Out, _),
  staticTypeRefT(StaticTypeRef, FieldAccess, Enclosing, System),
  % match the references to class 'System', field 'out' and method 'println'
  fully_qualified_name(System, 'java.lang.System'),
  fieldT(Out, System, PrintStream, 'out', _),
  methodT(Println, PrintStream, 'println', _, _, _, _, _),
  % limit the scope
  methodT(Enclosing, ParentClass, _, _, _, _, _, _),
  not(fully_qualified_name(ParentClass, 'logging.MyLogger')).
  