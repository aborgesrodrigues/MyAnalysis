:- module(cluster_analysis, [ dependent_classes_finder/1 ]).
:- module(cluster_analysis, [ independent_classes_finder/1 ]).
:- module(cluster_analysis, [ used_classes_finder/1 ]).
:- module(cluster_analysis, [ unused_classes_finder/1 ]).
:- module(cluster_analysis, [ isolated_classes_finder/1 ]).

%% sysout_call(CallId, CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument)
dependent_classes_finder(Class) :-
	packageT(Package, 'org.sigaept.edu.negocio.ejb'),
	%packageT(PackageField, 'org.sigaept.edu.negocio.fachada'),
	compilationUnitT(CompilationUnit, Package, _, _, _),
	%(classT(ClassField, CompilationUnitField, _, _, _), Class \== ClassField),
	compilationUnitT(CompilationUnitField, Package, _, _, _),
	classT(ClassField, CompilationUnitField, _, _, _), 
	implementsT(_, ClassField, ClassFieldInterface),
	fieldT(_, Class, ClassFieldInterface, _, _),
	classT(Class, CompilationUnit, _, _, _).
	
	
independent_classes_finder(Class) :-
	packageT(Package, 'org.sigaept.edu.negocio.ejb'),
	%packageT(PackageField, 'org.sigaept.edu.negocio.fachada'),
	compilationUnitT(CompilationUnit, Package, _, _, _),
	classT(Class, CompilationUnit, _, _, _),
	not(dependent_classes_finder(Class)).
	%(classT(ClassField, CompilationUnitField, _, _, _), Class \== ClassField),
	%compilationUnitT(CompilationUnitField, Package, _, _, _),
	%classT(ClassField, CompilationUnitField, _, _, _), 
	%implementsT(_, ClassField, ClassFieldInterface),
	%not(fieldT(_, Class, ClassFieldInterface, _, _)).
	
	
used_classes_finder(ClassField) :-
	packageT(Package, 'org.sigaept.edu.negocio.ejb'),
	%packageT(PackageField, 'org.sigaept.edu.negocio.fachada'),
	compilationUnitT(CompilationUnit, Package, _, _, _),
	classT(Class, CompilationUnit, _, _, _),
	%(classT(ClassField, CompilationUnitField, _, _, _), Class \== ClassField),
	compilationUnitT(CompilationUnitField, Package, _, _, _), 
	implementsT(_, ClassField, ClassFieldInterface),
	fieldT(_, Class, ClassFieldInterface, _, _),
	classT(ClassField, CompilationUnitField, _, _, _).
	
	
unused_classes_finder(Class) :-
	packageT(Package, 'org.sigaept.edu.negocio.ejb'),
	%packageT(PackageField, 'org.sigaept.edu.negocio.fachada'),
	compilationUnitT(CompilationUnit, Package, _, _, _),
	classT(Class, CompilationUnit, _, _, _),
	not(used_classes_finder(Class)).
	%(classT(ClassField, CompilationUnitField, _, _, _), Class \== ClassField),
%	compilationUnitT(CompilationUnitField, Package, _, _, _), 
%	implementsT(_, ClassField, ClassFieldInterface),
%	not(fieldT(_, Class, ClassFieldInterface, _, _)),
%	classT(ClassField, CompilationUnitField, _, _, _).


isolated_classes_finder(Class) :-
	packageT(Package, 'org.sigaept.edu.negocio.ejb'),
	%packageT(PackageField, 'org.sigaept.edu.negocio.fachada'),
	compilationUnitT(CompilationUnit, Package, _, _, _),
	classT(Class, CompilationUnit, _, _, _),
	unused_classes_finder(Class),
	independent_classes_finder(Class).