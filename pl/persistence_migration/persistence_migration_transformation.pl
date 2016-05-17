:- module(persistence_migration_transformation, []).

:- multifile(user:ct/3).     % Don't forget the declaration!

user:ct( addEJBAnnotation(CallId, DAO, Business, BusinessTarget, GenericDAO),   % HEAD
    (                                                   % CONDITION
		%persistence_migration_analysis:persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, GenericDAO, DAOClass, BusinessClass, GenericClass),
		%fully_qualified_name(BusinessTarget, BusinessClass),
		fully_qualified_name(EJB, 'javax.ejb.EJB'),
		classT(BusinessTarget, _, NameBusinessTarget, _, _),
		not(fieldT(_, Business, _, NameBusinessTarget, null)),
		
      %annotatedT(NewFieldEJB, NewAnnotationEJB),
      
      new_id(NewFieldEJB),
      new_id(NewAnnotationEJB),
      new_id(ModifierPrivate)
    ),
    (    
		add(fieldT(NewFieldEJB, Business, BusinessTarget, NameBusinessTarget, null)),
		add(modifierT(ModifierPrivate, NewFieldEJB, private)),
		add(annotationT(NewAnnotationEJB, NewFieldEJB, Business, EJB, [])),
		%add(markerAnnotationT(NewAnnotationEJB)),
		%annotatedT(NewFieldEJB, NewAnnotationEJB),
		%add_to_class(BusinessTarget, NewAnnotationEJB),
		add_to_class(Business, NewFieldEJB)
    
    )
).


user:ct( replaceDAOCallforBusinessCall(CallId, DAO, Business, BusinessTarget, GenericDAO, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters),   % HEAD
    (                                                   % CONDITION
		fully_qualified_name(EM, 'javax.persistence.EntityManager'),
		fully_qualified_name(GenericCrudEJB, 'org.sigaept.nucleo.ejb.GenericCrudEJB'),
		constructorT(Constructor, DAO, [Param], _, _, _),
		paramT(Param, Constructor, EM, 'em'),
		fieldT(Field, GenericCrudEJB, EM, 'em', null),% ; fieldT(Field, BusinessTarget, EM, 'em', null)),
		
		classT(BusinessTarget, _, NameBusinessTarget, _, _),
		fieldT(FieldEJB, Business, BusinessTarget, NameBusinessTarget, null),
		not(basicTypeT(MethodCalledReturnType, void)),
%		callT(CallId, _, _, ExprToDelete, _, _, _, _),
%		identT(ExprToDelete, _, _, LocalToDelete),
%		get_term(ExprToDelete, ExprTermToDelete),
%		get_term(LocalToDelete, LocalTermToDelete),
      new_id(NewMethod),                                % NewTypeRefis a yet unused ID
      new_id(ModifierP),
      new_id(NewBlock),
      new_id(ModifierPrivate),
      new_id(NewReturn),
      new_id(NewCall),
      new_id(NewNew),
      new_id(NewCallEJB),
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
	    
	    replace(callT(CallId, Parent, Encl, Expr, Args, Method, TypeParams, Type), 
	    		callT(CallId, Parent, Encl, NewGetFieldEJB, Args, Method, TypeParams, Type))

	    %delete(ExprTermToDelete),
	    %delete(LocalTermToDelete)		
    )
).


user:ct( replaceVoidDAOCallforVoidusinessCall(CallId, DAO, Business, BusinessTarget, GenericDAO, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters),   % HEAD
    (                                                   % CONDITION
		fully_qualified_name(EM, 'javax.persistence.EntityManager'),
		fully_qualified_name(GenericCrudEJB, 'org.sigaept.nucleo.ejb.GenericCrudEJB'),
		constructorT(Constructor, DAO, [Param], _, _, _),
		paramT(Param, Constructor, EM, 'em'),
		fieldT(Field, GenericCrudEJB, EM, 'em', null),% ; fieldT(Field, BusinessTarget, EM, 'em', null)),
		
		classT(BusinessTarget, _, NameBusinessTarget, _, _),
		fieldT(FieldEJB, Business, BusinessTarget, NameBusinessTarget, null),
		basicTypeT(MethodCalledReturnType, void),
		
      new_id(NewMethod),                                % NewTypeRefis a yet unused ID
      new_id(ModifierP),
      new_id(NewBlock),
      new_id(ModifierPrivate),
      new_id(NewCall),
      new_id(NewNew),
      new_id(NewCallEJB),
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

	    replace(callT(CallId, Parent, Encl, Expr, Args, Method, TypeParams, Type), 
	    		callT(CallId, Parent, Encl, NewGetFieldEJB, Args, Method, TypeParams, Type))
    )
).