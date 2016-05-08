:- module(persistence_migration_jt, []).

% load analysis and transformation
:- use_module(persistence_migration_analysis, [ persistence_call/10 ]).
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
	% Call the System.out.println detector that you implemented: 
	persistence_call(CallId, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, Business, 'org.sigaept.edu.dao.UnidadeOrganizacionalDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') , 
	% Create a description 
	Description = 'Call to DAO', 
	% Wrap everything into a result term for the GUI: 
	make_result_term(persistence_call(CallId), Description, Result).









    

    
:- multifile(transformation_api:transformation/5).     % Don't forget the declaration!

% linking the ct to the System.out.println detector
transformation_api:transformation(
     _,                                        % Individual result (No group)
     persistence_call(CallId),                 % RoleTerm
     replaceDAOCallforBusinessCall(CallId),         % CTHead
     'Replace DAO call for EJB call',      % Description
     [preview]).                               % Option: Show Preview