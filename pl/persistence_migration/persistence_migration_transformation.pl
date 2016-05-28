:- module(persistence_migration_transformation, []).

:- multifile(user:ct/3).     % Don't forget the declaration!

user:ct( addEJBAnnotation(Business, BusinessTarget),   % HEAD
    (                                                   % CONDITION
		%persistence_migration_analysis:persistence_call(CallId, MethodCall, Receiver, Local, _, _, _, _, _, _, DAO, Business, NotBusiness, GenericDAO, 'org.sigaept.edu.dao.EnturmacaoDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO'),
		%fully_qualified_name(BusinessTarget, BusinessClass),
		%fully_qualified_name(EJB, 'javax.ejb.EJB'),
		classT(BusinessTarget, _, NameBusinessTarget, _, _),
		not(fieldT(_, Business, _, NameBusinessTarget, null)),
		
      %annotatedT(NewFieldEJB, NewAnnotationEJB),
      
      new_id(NewFieldEJB),
      %new_id(NewAnnotationEJB),
      new_id(ModifierPrivate)
    ),
    (    
		add(fieldT(NewFieldEJB, Business, BusinessTarget, NameBusinessTarget, null)),
		add(modifierT(ModifierPrivate, NewFieldEJB, private)),
		%add(annotationT(NewAnnotationEJB, NewFieldEJB, Business, EJB, [])),
		%add(markerAnnotationT(NewAnnotationEJB)),
		%add(preserve_markerAnnotationT(NewAnnotationEJB))
		add_to_class(Business, NewFieldEJB)
		%add(dirty_tree(Business))
    
    )
).

user:ct( addEJBAnnotationToClass(Business, BusinessTarget),   % HEAD
    (                                                   % CONDITION
		fully_qualified_name(EJB, 'javax.ejb.EJB'),
		classT(BusinessTarget, _, NameBusinessTarget, _, _),
		%not(fieldT(_, Business, _, NameBusinessTarget, null)),
		fieldT(FieldEJB, Business, BusinessTarget, NameBusinessTarget, null),
		
      %annotatedT(NewFieldEJB, NewAnnotationEJB),
      
      %new_id(NewFieldEJB),
      new_id(NewAnnotationEJB)
      %new_id(ModifierPrivate)
    ),
    (    
		%add1(fieldT(NewFieldEJB, Business, BusinessTarget, NameBusinessTarget, null)),
		%add(modifierT(ModifierPrivate, FieldEJB, private)),
		add(annotationT(NewAnnotationEJB, FieldEJB, Business, EJB, [])),
		add(markerAnnotationT(NewAnnotationEJB)),
		add(preserve_markerAnnotationT(NewAnnotationEJB)),
		add_to_class(Business, FieldEJB)
		%add(dirty_tree(Business))
    
    )
).

user:ct( replaceDAOCallforBusinessCall(CallId, DAO, Business, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters),   % HEAD
    (                                                   % CONDITION
		fully_qualified_name(EM, 'javax.persistence.EntityManager'),
		%fully_qualified_name(GenericCrudEJB, 'org.sigaept.nucleo.ejb.GenericCrudEJB'),
		constructorT(Constructor, DAO, [Param], _, _, _),
		paramT(Param, Constructor, EM, 'em'),
		fieldT(Field, BusinessTarget, EM, _, null), 
		
		classT(BusinessTarget, _, NameBusinessTarget, _, _),
		fieldT(FieldEJB, Business, BusinessTarget, NameBusinessTarget, null),
		not(basicTypeT(MethodCalledReturnType, void)),
		new_id(NewMethod),                                % NewTypeRefis a yet unused ID
		new_id(ModifierP),
		new_id(NewBlock),
		new_id(NewReturn),
		new_id(NewCall),
		new_id(NewNew),
		new_id(NewFieldAccess),
		new_id(NewGetFieldEJB)
    ),
    (    
    	add(fieldAccessT(NewFieldAccess,_,_,_,Field,_)),
    	add( methodT(NewMethod, BusinessTarget, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, [], NewBlock) ),
    	add( modifierT(ModifierP, NewMethod, public)),
    	add(blockT(NewBlock, NewMethod, NewMethod, [NewReturn])),

    	add(newT(NewNew,NewBlock,NewMethod,null,[NewFieldAccess],Constructor,[],DAO,null)),

    	add(returnT(NewReturn,NewBlock,NewMethod,NewCall)),
    	add(callT(NewCall,NewReturn,NewMethod,NewNew,CallParameters,MethodCalled,[],null)),
    	
	    add_to_class(BusinessTarget,NewMethod),
	    
	    add(fieldAccessT(NewGetFieldEJB,_,_,_,FieldEJB,_)),
	    
	    replace(callT(CallId, Parent, Encl, _, Args, Method, TypeParams, Type), 
	    		callT(CallId, Parent, Encl, NewGetFieldEJB, Args, Method, TypeParams, Type))
	    		
	    %delete(localT(Local, _, _, _, _, _)),
	    %add(dirty_tree(Receiver))
    )
).


user:ct( replaceVoidDAOCallforVoidusinessCall(CallId, DAO, Business, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters),   % HEAD
    (                                                   % CONDITION
		fully_qualified_name(EM, 'javax.persistence.EntityManager'),
		fully_qualified_name(GenericCrudEJB, 'org.sigaept.nucleo.ejb.GenericCrudEJB'),
		constructorT(Constructor, DAO, [Param], _, _, _),
		paramT(Param, Constructor, EM, 'em'),
		fieldT(Field, GenericCrudEJB, EM, _, null),% ; fieldT(Field, BusinessTarget, EM, 'em', null)),
		
		classT(BusinessTarget, _, NameBusinessTarget, _, _),
		fieldT(FieldEJB, Business, BusinessTarget, NameBusinessTarget, null),
		basicTypeT(MethodCalledReturnType, void),
		
      new_id(NewMethod),                                % NewTypeRefis a yet unused ID
      new_id(ModifierP),
      new_id(NewBlock),
      new_id(NewCall),
      new_id(NewNew),
      new_id(NewFieldAccess),
      new_id(NewGetFieldEJB)
    ),
    (    
    	add(fieldAccessT(NewFieldAccess,_,_,_,Field,_)),
    	add( methodT(NewMethod, BusinessTarget, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, [], NewBlock) ),
    	add( modifierT(ModifierP, NewMethod, public)),
    	add(blockT(NewBlock, NewMethod, NewMethod, [NewCall])),

    	add(newT(NewNew,NewBlock,NewMethod,null,[NewFieldAccess],Constructor,[],DAO,null)),

    	add(callT(NewCall,NewBlock,NewMethod,NewNew,CallParameters,MethodCalled,[],null)),
    	
	    add_to_class(BusinessTarget,NewMethod),
	    
	    add(fieldAccessT(NewGetFieldEJB,_,_,_,FieldEJB,_)),

	    %add(callT(NewCallEJB,_,MethodCall,NewGetFieldEJB,CallParameters,MethodCalled,[],null)),

	    replace(callT(CallId, _, _, NewGetFieldEJB, _, _, _, _))
	    
	    %delete(localT(Local, _, _, _, _, _)),
	    %add(dirty_tree(Receiver))
    )
).

user:ct( deleteLocalVariable(MethodCall, DAO),   % HEAD
    (                                                   % CONDITION
    	localT(Local, Parent, MethodCall, DAO, _, _),
    	methodT(MethodCall, _, _, _, _, _, _, Block),
    	%blockT(Block, _, _, Items),
    	%dirty_tree(Parent)
		%getTerm(Local, LocalVariableTerm),
		%removeFromBlock(Block, LocalVariable)
		removeFromBlock(Block, Local)
    ),
    (    
    	%delete(LocalVariableTerm)
    	%add(removeFromBlock(Block, LocalVariable))
    	%delete_subtree(LocalVariable),
		add(dirty_tree(Parent))
		%add(dirty_tree(MethodCall)),
		%add(dirty_tree(Class))
		%add(dirty_tree(Parent))
		%add_to_class(Business,null)
    )
).

user:ct( deleteMethods1Call(Business, MethodCall, BusinessTarget),   % HEAD
    (                                                   % CONDITION
    	methodT(MethodCall, _, _, _, _, _, _, Block),
    	blockT(Block, _, _, [Expr]),
    	(returnT(Expr, _, _, Call); execT(Expr, _, _, Call)),
    	callT(Call, _, _, FieldAcess, _, _, _, _),
    	fieldAccessT(FieldAcess, _, _, _, _, BusinessTarget)
    	%newT(New, _, _, _, _, _, _, DAO, _)
    ),
    (    
    	remove_from_class(Business, MethodCall)
    )
).