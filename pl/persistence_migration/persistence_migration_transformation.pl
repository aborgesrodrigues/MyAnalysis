:- module(persistence_migration_transformation, []).

:- multifile(user:ct/3).     % Don't forget the declaration!

user:ct( addEJBAnnotation(CallId, DAOClass, BusinessClass, GenericClass),   % HEAD
    (                                                   % CONDITION
      persistence_migration_analysis:persistence_call(CallId, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, DAO, Business, DAOClass, BusinessClass, GenericClass),
		fully_qualified_name(BusinessTarget, BusinessClass),
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


user:ct( replaceDAOCallforBusinessCall(CallId, DAOClass, BusinessClass, GenericClass),   % HEAD
    (                                                   % CONDITION
      persistence_migration_analysis:persistence_call(CallId, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, DAO, Business, DAOClass, BusinessClass, GenericClass),
		fully_qualified_name(BusinessTarget, BusinessClass),
		%fully_qualified_name(DAO1, 'org.sigaept.edu.dao.UnidadeOrganizacionalDAO'),
		%fully_qualified_name(GenericDAO1, 'org.sigaept.nucleo.dao.GenericDAO'),
		fully_qualified_name(EM, 'javax.persistence.EntityManager'),
		%fully_qualified_name(EJB, 'javax.ejb.EJB'),
		constructorT(Constructor, DAO, [Param], _, _, _),
		paramT(Param, Constructor, EM, 'em'),
		%classT(EM1, _, 'EntityManager', _, _),
		fieldT(Field, BusinessTarget, EM, 'em', null),
		basicTypeT(IntType, int),
		
		%paramT(Params, MethodCalled, _, _),
		%getFieldT(GetField, _, _, _, Field),
		%fieldAccessT(FieldAccess,NewNew,NewMethod,null,Field,EM),
		%fieldT(Field, GenericDAO1, EM, 'em', null),
      new_id(NewMethod),                                % NewTypeRefis a yet unused ID
      new_id(ModifierP),
      new_id(NewBlock),
      %new_id(NewExec),
      new_id(NewReturn),
      new_id(NewCall),
      new_id(NewNew),
      %new_id(NewParam),
      new_id(NewFieldAccess),
      new_id(NewIdent),
      new_id(NewLocal)
    ),
    (    
    
    	add(fieldAccessT(NewFieldAccess,_,_,_,Field,_)),
    	add( methodT(NewMethod, BusinessTarget, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, [], NewBlock) ),
    	add( modifierT(ModifierP, NewMethod, public)),
    	add(blockT(NewBlock, NewMethod, NewMethod, [NewReturn])),
    	%add(localT(NewLocal, NewBlock, NewMethod, DAO1, 'unidadeOrganizacionalDAO', NewNew)),
    	add(newT(NewNew,NewBlock,NewMethod,null,[NewFieldAccess],Constructor,[],DAO,null)),
    	%add(fieldAccessT(NewFieldAccess, NewLocal, NewMethod, NewIdent, MethodCalled, DAO1)),
    	
    	add(returnT(NewReturn,NewBlock,NewMethod,NewCall)),
    	%add(execT(NewExec, NewBlock, NewMethod, NewCall)),
    	add(callT(NewCall,NewReturn,NewMethod,NewNew,[NewIdent],MethodCalled,[],null)),
    	%add(literalT(NewLiteral, NewCall, NewMethod, IntType, '1')),
    	%add(identT(NewIdent, _, _, NewLocal)),
    	%add(identT(NewIdent, NewBlock, NewMethod, NewLocal)),
    	
    	add(localT(NewLocal, NewBlock, NewMethod, IntType, 'teste', null)),
    	add(identT(NewIdent, _, _, NewLocal)),%MethodCalledParameters
    	
	    add_to_class(BusinessTarget,NewMethod)
    )
).