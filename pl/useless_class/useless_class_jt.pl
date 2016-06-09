:- module(useless_class_jt, []).

% load analysis and transformation
:- use_module(useless_class_analysis, [ useless_class_finder/1 ]).
%:- use_module(persistence_migration_transformation, []).

% The predicate analysis_definition/5 logically belongs to the
% analysis_api module but clauses can be defined in many files:
:- multifile(analysis_api:analysis_definition/5).

% The clause defining the System.out.println detector:
analysis_api:analysis_definition(
     'useless_class_finder',                     % Name
     onSave,                            % Trigger
     warning,                           % Severity
     'Useleless Classes',           % Category
     'Class with no body'       				% Description
).

:- multifile(analysis_api:analysis_result/3). % (Name, Group, Result)

analysis_api:analysis_result('useless_class_finder', _, Result) :-  
    % Call the System.out.println detector that you implemented:
    useless_class_finder(ClassId) ,
    
    % Create a description
    Description = 'Class with no body',
    
    % Wrap everything into a result term for the GUI: 
    make_result_term(useless_class_finder(ClassId), Description, Result).