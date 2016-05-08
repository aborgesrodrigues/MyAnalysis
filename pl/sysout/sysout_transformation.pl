:- module(sysout_transformation, []).

:- multifile(user:ct/3).     % Don't forget the declaration!

user:ct( replaceSysoutWithLogging(CallId),              % HEAD
    (                                                   % CONDITION
      sysout_analysis:sysout_call(CallId,CallParent, Enclosing, FieldAccess, StaticTypeRef, Argument),
                                                        % Call the analysis predicate and bind all IDs
      get_term(FieldAccess, FieldAccessTerm),           % get the terms which should be deleted
      get_term(StaticTypeRef, StaticTypeRefTerm),
            
      classT(MyLoggerClass, _, 'MyLogger', _, _),          % Get the ID belonging to class 'MyLogger'
      methodT(LoggingMethod, MyLoggerClass, println, _, MethodType, _, _, _),
                                                        % ... and the ID for the logging method

      new_id(NewTypeRef)                                % NewTypeRefis a yet unused ID
    ),
    (                                                                     % TRANSFORMATION:
      delete(FieldAccessTerm),                          % delete the field access
      delete(StaticTypeRefTerm),                        % delete the static type reference
      
      add(staticTypeRefT(NewTypeRef, CallId, Enclosing, MyLoggerClass)),
      replace(callT(CallId, CallParent, Enclosing, NewTypeRef, [Argument], LoggingMethod, [], MethodType))
                                                        % replace the existing callT fact with the new one (caling the logging method instead of System.out.println)
                                                        
                                                        % add the static type reference to the class "MyLogger"
    )
).
