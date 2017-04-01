:- module(duplicated_method_names_analysis, [ duplicated_method_names_finder/1 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
duplicated_method_names_finder(MethodId) :-
	packageT(Package, 'org.sigaept.edu.negocio.ejb'),
	compilationUnitT(CompilationUnit, Package, _, _, [ClassId]),
	classT(ClassId, CompilationUnit, _, _, _),
	methodT(MethodId, ClassId, MethodName, _, _, _, _, _),
	methodT(MethodIdAux, ClassId, MethodNameAux, _, _, _, _, _),
	MethodId \== MethodIdAux,
  	MethodName == MethodNameAux.