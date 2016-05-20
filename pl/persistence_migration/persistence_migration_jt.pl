:- module(persistence_migration_jt, []).

% load analysis and transformation
:- use_module(persistence_migration_analysis, [ persistence_call/15 ]).
:- use_module(persistence_migration_transformation, []).

% The predicate analysis_definition/5 logically belongs to the
% analysis_api module but clauses can be defined in many files:
:- multifile(analysis_api:analysis_definition/5).

% The clause defining the System.out.println detector:
analysis_api:analysis_definition(
     'persistence_call',                     % Name
     onSave,                            % Trigger
     warning,                           % Severity
     'Persistence Migration',           % Category
     'Call to DAO'       				% Description
).

:- multifile(analysis_api:analysis_result/3). % (Name, Group, Result)




analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, GenericDAO, 'org.sigaept.edu.dao.EnturmacaoDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') , 
Description = 'Call to DAO', 
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, GenericDAO), Description, Result).



    

    
:- multifile(transformation_api:transformation/5).     % Don't forget the declaration!

% linking the ct to the System.out.println detector
transformation_api:transformation(
     _,                                        % Individual result (No group)
     persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, GenericDAO),                 % RoleTerm
     [addEJBAnnotation(CallId, DAO, Business, NotBusiness, GenericDAO), 
      replaceDAOCallforBusinessCall(CallId, DAO, Business, NotBusiness, GenericDAO, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters),
      replaceVoidDAOCallforVoidusinessCall(CallId, DAO, Business, NotBusiness, GenericDAO, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters)
      %deleteLocalVariable(CallId)
      ],         % CTHead
     'Replace DAO call for EJB call',      % Description
     [global, preview]).                               % Option: Show Preview