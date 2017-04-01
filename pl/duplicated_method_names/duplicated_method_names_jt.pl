:- module(duplicated_method_names_jt, []).

% load analysis and transformation
:- use_module(duplicated_method_names_analysis, [ duplicated_method_names_finder/1 ]).
%:- use_module(persistence_migration_transformation, []).

% The predicate analysis_definition/5 logically belongs to the
% analysis_api module but clauses can be defined in many files:
:- multifile(analysis_api:analysis_definition/5).

% The clause defining the System.out.println detector:
analysis_api:analysis_definition(
     'duplicated_method_names_finder',                     % Name
     onSave,                            % Trigger
     info,                           % Severity
     'Classes with duplicated method names',           % Category
     'Classes with duplicated method names'       				% Description
).

:- multifile(analysis_api:analysis_result/3). % (Name, Group, Result)

analysis_api:analysis_result('duplicated_method_names_finder', _, Result) :-  
    % Call the System.out.println detector that you implemented:
    duplicated_method_names_finder(MethodId) ,
    
    % Create a description
    Description = 'Classes with duplicated method names',
    
    % Wrap everything into a result term for the GUI: 
    make_result_term(duplicated_method_names_finder(MethodId), Description, Result).