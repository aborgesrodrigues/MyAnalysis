:- module(sysout_jt, []).

% load analysis and transformation
:- use_module(sysout_analysis, [ sysout_call/6 ]).
:- use_module(sysout_transformation, []).

% The predicate analysis_definition/5 logically belongs to the
% analysis_api module but clauses can be defined in many files:
:- multifile(analysis_api:analysis_definition/5).

% The clause defining the System.out.println detector:
analysis_api:analysis_definition(
     'sysout_call',                     % Name
     onSave,                            % Trigger
     warning,                           % Severity
     'Logging',                         % Category
     'Call to System.out.println'       % Description
).

:- multifile(analysis_api:analysis_result/3). % (Name, Group, Result)

analysis_api:analysis_result('sysout_call', _, Result) :-  
    % Call the System.out.println detector that you implemented:
    sysout_call(CallId, _, _, _, _, _) ,
    
    % Create a description
    Description = 'Call to System.out.println',
    
    % Wrap everything into a result term for the GUI: 
    make_result_term(sysout_call(CallId), Description, Result).
    
    
:- multifile(transformation_api:transformation/5).     % Don't forget the declaration!

% linking the ct to the System.out.println detector
transformation_api:transformation(
     _,                                        % Individual result (No group)
     sysout_call(CallId),                      % RoleTerm
     replaceSysoutWithLogging(CallId),         % CTHead
     'Replace by call to logging method',      % Description
     [preview]).                               % Option: Show Preview