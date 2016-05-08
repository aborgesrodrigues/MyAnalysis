:- module(persistence_migration_transformation, []).

:- multifile(user:ct/3).     % Don't forget the declaration!

user:ct( replaceDAOCallforBusinessCall(CallId),   % HEAD
    (                                                   % CONDITION
      persistence_migration_analysis:persistence_call(CallId, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, Business, 'org.sigaept.edu.dao.UnidadeOrganizacionalDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO'),
		fully_qualified_name(Business1, 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB'),
		fully_qualified_name(DAO1, 'org.sigaept.edu.dao.UnidadeOrganizacionalDAO'),
		fully_qualified_name(GenericDAO1, 'org.sigaept.nucleo.dao.GenericDAO'),
		fully_qualified_name(EM, 'javax.persistence.EntityManager'),
		constructorT(Constructor, DAO1, [Param], _, _, _),
		paramT(Param, Constructor, EM, 'em'),
		%fieldAccessT(FieldAccess,NewNew,NewMethod,null,Field,EM),
		%fieldT(Field, GenericDAO1, EM, 'em', null),
      new_id(NewMethod),                                % NewTypeRefis a yet unused ID
      new_id(ModifierP),
      new_id(NewBlock),
      %new_id(NewExec),
      %new_id(NewReturn),
      %new_id(NewCall),
      new_id(NewNew),
      %new_id(NewDAO)
      %new_id(NewFieldAccess),
      %new_id(NewIdent),
      new_id(NewLocal)
    ),
    (    
    	add( methodT(NewMethod, Business1, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, [], NewBlock) ),
    	add( modifierT(ModifierP, NewMethod, public)),
    	add(blockT(NewBlock, NewMethod, NewMethod, [NewLocal])),
    	add(localT(NewLocal, NewBlock, NewMethod, DAO1, 'unidadeOrganizacionalDAO', NewNew)),
    	add(newT(NewNew,NewLocal,NewMethod,null,[],Constructor,[],DAO1,null)),
    	
    	
    	%add(execT(NewExec, NewBlock, NewMethod, NewCall)),
		%add(returnT(NewReturn,NewBlock,NewMethod,NewCall)),
		%add(callT(NewCall, NewReturn, NewMethod, _, _, _, _)),
		%add(callT(NewCall,NewReturn,NewMethod,NewNew,[NewIdent],MethodCalled,_,MethodCalledReturnType)),
		%add(newT(NewNew,NewCall,NewMethod,null,[NewFieldAccess],Constructor,_,DAO1,null)),
		%add(fieldAccessT(NewFieldAccess,NewNew,NewMethod,null,Field,EM)),
		%add(identT(NewIdent,NewReturn,NewMethod,ParamT)),
    
    
    
                                                                     % TRANSFORMATION:
%	    add( methodT(NewMethod, Business1, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, [], NewBlock) ),
%	    add( modifierT(ModifierP, NewMethod, public)),
%	    add(returnT(NewReturn,NewBlock,NewMethod,NewCall)),
%	    add(blockT(NewBlock, NewMethod, NewMethod, [NewExec])),
%	    add(execT(NewExec, NewBlock, NewMethod, NewCall)),
%	    add(newT(NewDAO, _, NewMethod, null, [], null, [], DAO1, null)),
%	    add(callT(NewCall, NewExec, NewMethod, _, _, _, _)),
	    add_to_class(Business1,NewMethod)
    )
).