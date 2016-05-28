:- module(persistence_migration_jt, []).

% load analysis and transformation
:- use_module(persistence_migration_analysis, [ persistence_call/14 ]).
%:- use_module(persistence_migration_analysis, [ remove_local_variable/9 ]).
:- use_module(persistence_migration_transformation, []).

% The predicate analysis_definition/5 logically belongs to the
% analysis_api module but clauses can be defined in many files:
:- multifile(analysis_api:analysis_definition/5).

% The clause defining the System.out.println detector:
analysis_api:analysis_definition(
     'persistence_call',                     % Name
     onSave,                            % Trigger
     info,                           % Severity
     'Persistence Migration',           % Category
     'Call to DAO'       				% Description
).

%analysis_api:analysis_definition(
%     'remove_local_variable',                     % Name
%     onSave,                            % Trigger
%     info,                           % Severity
%     'Persistence Migration',           % Category
%     'Remove Local Variable'       				% Description
%).

:- multifile(analysis_api:analysis_result/3). % (Name, Group, Result)




analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, BusinessTarget, 'org.sigaept.edu.dao.EnturmacaoDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') , 
Description = 'Call to DAO', 
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, BusinessTarget), Description, Result).


%analysis_api:analysis_result('remove_local_variable', _, Result) :-  
%remove_local_variable(LocalVariable, MethodCall, DAO, Business, BusinessTarget, GenericDAO, 'org.sigaept.edu.dao.EnturmacaoDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') , 
%Description = 'Remove Local Variable', 
%make_result_term(remove_local_variable(LocalVariable, MethodCall, DAO, Business, BusinessTarget, GenericDAO), Description, Result).


%analysis_api:analysis_result('teste', _, Result) :-  
%teste(Local, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, BusinessTarget, GenericDAO, 'org.sigaept.edu.dao.EnturmacaoDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') , 
%Description = 'Call to DAO', 
%make_result_term(teste(CallId, MethodCall, Receiver, Local, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, BusinessTarget, GenericDAO), Description, Result).


    

    
:- multifile(transformation_api:transformation/5).     % Don't forget the declaration!

% linking the ct to the System.out.println detector
transformation_api:transformation(
     _,                                        % Individual result (No group)
     persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, BusinessTarget),                 % RoleTerm
     [ 
      addEJBAnnotation(Business, BusinessTarget),
      addNotVoidMethods(CallId, DAO, Business, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters),
      addVoidMethods(CallId, DAO, Business, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters),
      replaceCalls(CallId, Business, BusinessTarget),
      addEJBAnnotationToClass(Business, BusinessTarget),
      deleteLocalVariable(MethodCall, DAO),
      deleteMethods1Call(Business, MethodCall, DAO)
      ],         % CTHead
     'Replace DAO call for EJB call',      % Description
     [global, preview]).                               % Option: Show Preview
     

%transformation_api:transformation(
%     _,                                        % Individual result (No group)
%     remove_local_variable(LocalVariable, MethodCall, DAO, Business, BusinessTarget, GenericDAO),                 % RoleTerm
%     deleteLocalVariable1(LocalVariable, MethodCall, Business, BusinessTarget),         % CTHead
%     'Remove Local Variable',      % Description
%     [global, preview]).                               % Option: Show Preview