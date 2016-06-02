:- module(persistence_migration_transformation, []).

:- multifile(user:ct/3).     % Don't forget the declaration!

user:ct( addEJBAnnotation(Business, BusinessTarget),   % HEAD
    (                                                   % CONDITION
		%persistence_migration_analysis:persistence_call(CallId, MethodCall, Receiver, Local, _, _, _, _, _, _, DAO, Business, NotBusiness, GenericDAO, 'org.sigaept.edu.dao.EnturmacaoDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO'),
		%fully_qualified_name(BusinessTarget, BusinessClass),
		fully_qualified_name(EJB, 'javax.ejb.EJB'),
		classT(BusinessTarget, _, NameBusinessTarget, _, _),
		implementsT(_, BusinessTarget, BusinessTargetInterface),
		not(fieldT(_, Business, _, NameBusinessTarget, null)),
		
      %annotatedT(NewFieldEJB, NewAnnotationEJB),
      
      new_id(NewFieldEJB),
      new_id(NewAnnotationEJB),
      new_id(ModifierPrivate)
    ),
    (    
		add(fieldT(NewFieldEJB, Business, BusinessTargetInterface, NameBusinessTarget, null)),
		add(modifierT(ModifierPrivate, NewFieldEJB, private)),
		add(annotationT(NewAnnotationEJB, NewFieldEJB, Business, EJB, [])),
		add(markerAnnotationT(NewAnnotationEJB)),
		add(preserve_markerAnnotationT(NewAnnotationEJB)),
		add_to_class(Business, NewFieldEJB)
		%add(dirty_tree(Business))
    
    )
).


user:ct( addNotVoidMethods(DAO, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters),   % HEAD
    (                                                   % CONDITION
		fully_qualified_name(EM, 'javax.persistence.EntityManager'),
		%,
		constructorT(Constructor, DAO, [Param], _, _, _),
		paramT(Param, Constructor, EM, 'em'),
		(
		 not(fieldT(Field, BusinessTarget, EM, _, null)),
		 fully_qualified_name(GenericCrudEJB, 'org.sigaept.nucleo.ejb.GenericCrudEJB'),
		 fieldT(Field, GenericCrudEJB, EM, _, null) 
		;
		(
		 fieldT(Field, BusinessTarget, EM, _, null)
		)), 
		%,
		
		%classT(BusinessTarget, _, NameBusinessTarget, _, _),
		implementsT(_, BusinessTarget, BusinessTargetInterface),
		%fieldT(FieldEJB, Business, BusinessTargetInterface, NameBusinessTarget, null),
		not(basicTypeT(MethodCalledReturnType, void)),
		not(methodT(_, BusinessTarget, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, _, MethodCalledTypeParameters, _)),
		new_id(NewMethod),                                % NewTypeRefis a yet unused ID
		new_id(ModifierP),
		new_id(NewBlock),
		new_id(NewReturn),
		new_id(NewCall),
		new_id(NewNew),
		new_id(NewFieldAccess),
		%new_id(NewGetFieldEJB),
		new_id(NewMethodInterface)
    ),
    (    
    	add(fieldAccessT(NewFieldAccess,_,_,_,Field,_)),
    	add( methodT(NewMethod, BusinessTarget, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, NewBlock) ),
    	add( modifierT(ModifierP, NewMethod, public)),
    	add(blockT(NewBlock, NewMethod, NewMethod, [NewReturn])),

    	add(newT(NewNew,NewBlock,NewMethod,null,[NewFieldAccess],Constructor,[],DAO,null)),

    	add(returnT(NewReturn,NewBlock,NewMethod,NewCall)),
    	add(callT(NewCall,NewReturn,NewMethod,NewNew,CallParameters,MethodCalled,[],null)),
    	
	    add_to_class(BusinessTarget,NewMethod),
	    
%	    add(fieldAccessT(NewGetFieldEJB,_,_,_,FieldEJB,_))
	    		
	    %add to the interface
	    add(methodT(NewMethodInterface, BusinessTargetInterface, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, [], null) ),
	    add( modifierT(ModifierP, NewMethodInterface, public)),
	    add_to_class(BusinessTargetInterface,NewMethodInterface)
    )
).

user:ct( addVoidMethods(DAO, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters),   % HEAD
    (                                                   % CONDITION
		fully_qualified_name(EM, 'javax.persistence.EntityManager'),
		constructorT(Constructor, DAO, [Param], _, _, _),
		paramT(Param, Constructor, EM, 'em'),
		(
		 not(fieldT(Field, BusinessTarget, EM, _, null)),
		 fully_qualified_name(GenericCrudEJB, 'org.sigaept.nucleo.ejb.GenericCrudEJB'),
		 fieldT(Field, GenericCrudEJB, EM, _, null) 
		;
		(
		 fieldT(Field, BusinessTarget, EM, _, null)
		)), 

		implementsT(_, BusinessTarget, BusinessTargetInterface),
		basicTypeT(MethodCalledReturnType, void),
		not(methodT(_, BusinessTarget, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, _)),
		new_id(NewMethod),                                % NewTypeRefis a yet unused ID
		new_id(ModifierP),
		new_id(NewBlock),
		new_id(NewExec),
		new_id(NewCall),
		new_id(NewNew),
		new_id(NewFieldAccess),
		%new_id(NewGetFieldEJB),
		new_id(NewMethodInterface)
    ),
    (    
    	add(fieldAccessT(NewFieldAccess,_,_,_,Field,_)),
    	add( methodT(NewMethod, BusinessTarget, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, NewBlock) ),
    	add( modifierT(ModifierP, NewMethod, public)),
    	add(blockT(NewBlock, NewMethod, NewMethod, [NewExec])),

    	add(newT(NewNew,NewBlock,NewMethod,null,[NewFieldAccess],Constructor,[],DAO,null)),

    	add(execT(NewExec, NewBlock,NewMethod, NewCall)),
    	add(callT(NewCall,NewExec,NewMethod,NewNew,CallParameters,MethodCalled,[],null)),
    	
	    add_to_class(BusinessTarget,NewMethod),
	    
%	    add(fieldAccessT(NewGetFieldEJB,_,_,_,FieldEJB,_))
	    		
	    %add to the interface
	    add(methodT(NewMethodInterface, BusinessTargetInterface, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, [], null) ),
	    add( modifierT(ModifierP, NewMethodInterface, public)),
	    add_to_class(BusinessTargetInterface,NewMethodInterface)
    )
).


user:ct( replaceCalls(CallId, Business, BusinessTarget),   % HEAD
    (                                                   % CONDITION	
		%fully_qualified_name(GenericCrudEJB, 'org.sigaept.nucleo.ejb.GenericCrudEJB'),
%		constructorT(Constructor, DAO, [Param], _, _, _),
%		paramT(Param, Constructor, EM, 'em'),
%		fieldT(Field, GenericCrudEJB, EM, _, null),
		classT(BusinessTarget, _, NameBusinessTarget, _, _),
		implementsT(_, BusinessTarget, BusinessTargetInterface),
		fieldT(FieldEJB, Business, BusinessTargetInterface, NameBusinessTarget, null),

		new_id(NewGetFieldEJB)

    ),
    (    
	    add(fieldAccessT(NewGetFieldEJB,_,_,_,FieldEJB,_)),
	    
	    replace(callT(CallId, Parent, Encl, _, Args, Method, TypeParams, Type), 
	    		callT(CallId, Parent, Encl, NewGetFieldEJB, Args, Method, TypeParams, Type))
    )
).


user:ct( deleteLocalVariable(MethodCall, DAO),   % HEAD
    (                                                   % CONDITION
    	localT(Local, Parent, MethodCall, DAO, _, _),
    	methodT(MethodCall, _, _, _, _, _, _, Block),
    	%not(callT(_, _, _, Local, _, _, _, _)),
    	%not(identT(_, _, MethodCall, Local)),
		removeFromBlock(Block, Local)
    ),
    (    
		add(dirty_tree(Parent))
    )
).

user:ct( deleteMethods1Call(Business, MethodCall, BusinessTarget),   % HEAD
    (                                                   % CONDITION
%    	methodT(MethodCall, _, _, _, _, _, _, Block),
    	methodT(MethodCall, _, MethodCallName, MethodCallParameters, MethodCallType, MethodCallExceptions, MethodCallTypeParameters, Block),
    	methodT(MethodCallInterface, BusinessInterface, MethodCallName, _, MethodCallType, _, MethodCallTypeParameters, _),
    	implementsT(_, Business, BusinessInterface),
    	blockT(Block, _, _, [Expr]),
    	(returnT(Expr, _, _, Call); execT(Expr, _, _, Call)),
    	callT(Call, _, _, FieldAcess, _, _, _, _),
    	fieldAccessT(FieldAcess, _, _, _, _, BusinessTarget)
    	%newT(New, _, _, _, _, _, _, DAO, _)
    ),
    (    
    	remove_from_class(Business, MethodCall),
    	remove_from_class(BusinessInterface, MethodCallInterface)%corrigir método
    )
).

user:ct( organizeImportsEJB(Business),   % HEAD
    (                                                   % CONDITION
    	fully_qualified_name(EJB, 'javax.ejb.EJB'),
    	not(importT(_, Business, EJB)),
    	new_id(NewImport)
    ),
    (    
    	add(importT(NewImport, Business, EJB)),
    	add_to_class(Business, NewImport)
    )
).

user:ct( organizeImportsEJB(Business, BusinessTarget),   % HEAD
    (                                                   % CONDITION
    	implementsT(_, BusinessTarget, BusinessTargetInterface),
    	not(importT(_, Business, BusinessTargetInterface)),
    	new_id(NewImport)
    ),
    (    
    	add(importT(NewImport, Business, BusinessTargetInterface)),
    	add_to_class(Business, NewImport)
    )
).