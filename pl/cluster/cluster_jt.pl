:- module(cluster_jt, []).

% load analysis and transformation
:- use_module(cluster_analysis, [ dependent_classes_finder/1 ]).
:- use_module(cluster_analysis, [ independent_classes_finder/1 ]).
:- use_module(cluster_analysis, [ used_classes_finder/1 ]).
:- use_module(cluster_analysis, [ unused_classes_finder/1 ]).
:- use_module(cluster_analysis, [ isolated_classes_finder/1 ]).
%:- use_module(persistence_migration_transformation, []).

% The predicate analysis_definition/5 logically belongs to the
% analysis_api module but clauses can be defined in many files:
:- multifile(analysis_api:analysis_definition/5).

% The clause defining the System.out.println detector:
analysis_api:analysis_definition(
     'dependent_classes_finder',                     % Name
     onSave,                            % Trigger
     warning,                           % Severity
     'Cluster',           % Category
     'Classes with dependencies'       				% Description
).

analysis_api:analysis_definition(
     'independent_classes_finder',                     % Name
     onSave,                            % Trigger
     warning,                           % Severity
     'Cluster',           % Category
     'Classes with no dependencies'       				% Description
).

analysis_api:analysis_definition(
     'used_classes_finder',                     % Name
     onSave,                            % Trigger
     warning,                           % Severity
     'Cluster',           % Category
     'Used Classes'       				% Description
).

analysis_api:analysis_definition(
     'unused_classes_finder',                     % Name
     onSave,                            % Trigger
     warning,                           % Severity
     'Cluster',           % Category
     'Unused Classes'       				% Description
).


analysis_api:analysis_definition(
     'isolated_classes_finder',                     % Name
     onSave,                            % Trigger
     warning,                           % Severity
     'Cluster',           % Category
     'Isolated Classes'       				% Description
).

:- multifile(analysis_api:analysis_result/3). % (Name, Group, Result)

analysis_api:analysis_result('dependent_classes_finder', _, Result) :-  
    % Call the System.out.println detector that you implemented:
    dependent_classes_finder(Class) ,
    
    % Create a description
    Description = 'Classes with dependencies',
    
    % Wrap everything into a result term for the GUI: 
    make_result_term(dependent_classes_finder(Class), Description, Result).
    
    
analysis_api:analysis_result('independent_classes_finder', _, Result) :-  
    % Call the System.out.println detector that you implemented:
    independent_classes_finder(Class) ,
    
    % Create a description
    Description = 'Classes with no dependencies',
    
    % Wrap everything into a result term for the GUI: 
    make_result_term(independent_classes_finder(Class), Description, Result).
    
    
analysis_api:analysis_result('used_classes_finder', _, Result) :-  
    % Call the System.out.println detector that you implemented:
    used_classes_finder(Class) ,
    
    % Create a description
    Description = 'Used Classes',
    
    % Wrap everything into a result term for the GUI: 
    make_result_term(used_classes_finder(Class), Description, Result).
    
    
analysis_api:analysis_result('unused_classes_finder', _, Result) :-  
    % Call the System.out.println detector that you implemented:
    unused_classes_finder(Class) ,
    
    % Create a description
    Description = 'Unused Classes',
    
    % Wrap everything into a result term for the GUI: 
    make_result_term(unused_classes_finder(Class), Description, Result).
    
    
analysis_api:analysis_result('isolated_classes_finder', _, Result) :-  
    % Call the System.out.println detector that you implemented:
    isolated_classes_finder(Class) ,
    
    % Create a description
    Description = 'Isolated Classes',
    
    % Wrap everything into a result term for the GUI: 
    make_result_term(isolated_classes_finder(Class), Description, Result).