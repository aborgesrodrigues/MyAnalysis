:- module(persistence_persistence_jt, []).

% load analysis and transformation
:- use_module(persistence_persistence_analysis, [ persistence_persistence_call/1 ]).
%:- use_module(persistence_migration_transformation, []).

% The predicate analysis_definition/5 logically belongs to the
% analysis_api module but clauses can be defined in many files:
:- multifile(analysis_api:analysis_definition/5).

% The clause defining the System.out.println detector:
analysis_api:analysis_definition(
     'persistence_persistence_call',                     % Name
     onSave,                            % Trigger
     warning,                           % Severity
     'Persistence call',           % Category
     'Call to DAO from DAO'       				% Description
).

:- multifile(analysis_api:analysis_result/3). % (Name, Group, Result)

analysis_api:analysis_result('persistence_persistence_call', _, Result) :-  
    % Call the System.out.println detector that you implemented:
    persistence_persistence_call(CallId) ,
    
    % Create a description
    Description = 'Call to DAO from DAO',
    
    % Wrap everything into a result term for the GUI: 
    make_result_term(persistence_persistence_call(CallId), Description, Result).