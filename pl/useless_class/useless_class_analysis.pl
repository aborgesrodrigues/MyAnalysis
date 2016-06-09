:- module(useless_class_analysis, [ useless_class_finder/1 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
useless_class_finder(ClassId) :-
	packageT(Package, 'org.sigaept.edu.negocio.ejb'),
	compilationUnitT(CompilationUnit, Package, _, _, [ClassId]),
	classT(ClassId, CompilationUnit, _, _, [_]).