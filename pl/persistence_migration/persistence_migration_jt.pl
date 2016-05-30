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
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EquivalenciaDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FaltaDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CalendarioAcademicoDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EstagioMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.UnidadeOrganizacionalDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CancelamentoMatriculaCursoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusAlunoCursoDAO', 'org.sigaept.edu.negocio.ejb.ManterStatusAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PermissaoDAO', 'org.sigaept.edu.negocio.ejb.ManterPermissaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.HorarioAulaDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DiaSemanaDAO', 'org.sigaept.edu.negocio.ejb.ManterGradeHorariaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ClasseDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RelatorioFinalEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioFinalEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CategoriaProjetoExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConjuntoRegrasAcademicasDAO', 'org.sigaept.edu.negocio.ejb.ManterRegraAcademicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MunicipioDAO', 'org.sigaept.edu.negocio.ejb.ManterInstituicaoExternaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TurnoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PeriodoLetivoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EtapaAvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterDataLimiteEtapaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ContextoPermissaoAcessoDAO', 'org.sigaept.edu.negocio.ejb.ManterPermissaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MediaGeralTurmaDAO', 'org.sigaept.edu.negocio.ejb.ManterInscricaoElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RGDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ParticipanteEnadeDAO', 'org.sigaept.edu.negocio.ejb.ManterEnadeEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProgramaAssistenciaEstudantilDAO', 'org.sigaept.edu.negocio.ejb.ManterProgramaAssistenciaEstudantilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AulaDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.InstituicaoDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FuncionarioDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DuracaoDAO', 'org.sigaept.edu.negocio.ejb.ManterPermissaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AvaliarProjetoExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterAvaliarProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusAlunoPeriodoDAO', 'org.sigaept.edu.negocio.ejb.FecharPeriodoLetivoPorTurmaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RelatorioAcompanhamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterAvaliarProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoOcorrenciaDAO', 'org.sigaept.edu.negocio.ejb.ManterOcorrenciaAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AulaAntecipacaoReposicaoDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CursoDAO', 'org.sigaept.edu.negocio.ejb.FecharPeriodoLetivoPorTurmaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EstruturaEtapaAvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoMatrizDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DocenciaDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.LocalizacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterAmbienteAprendizagemEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConselhoClasseDAO', 'org.sigaept.edu.negocio.ejb.ManterConselhoClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusAlunoClasseDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ServidorDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.InstituicaoExternaDAO', 'org.sigaept.edu.negocio.ejb.ManterPlanoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AtividadeComplementarMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterAtividadeComplementarMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProjetoExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoOrganizacionalDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.LotacaoServidorDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RegraAcademicaDAO', 'org.sigaept.edu.negocio.ejb.ManterRegraAcademicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProgramaDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.IngressoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoCurricularAproveitadoElementoCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterAproveitamentoAceleracaoeDispensaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FinanciamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterProgramaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CDUDAO', 'org.sigaept.edu.negocio.ejb.ManterGrupoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DataFixaDAO', 'org.sigaept.edu.negocio.ejb.ManterReservaEquipamentoEnsinoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PerguntasProgramasAssistenciaEstudantilDAO', 'org.sigaept.edu.negocio.ejb.ManterPerguntasProgramasAssistenciaEstudantilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ResultadoAvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ImprimirDiarioDeClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MatrizCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterSituacaoAlunoCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TurmaDAO', 'org.sigaept.edu.negocio.ejb.ManterTurmaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AlunoDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.GradeHorariaDAO', 'org.sigaept.edu.negocio.ejb.ManterGradeHorariaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PlanoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterSupervisaoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DocenteDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DocenciaGradeHorarioDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ParticipacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterParticipacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.UnidadeEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CancelamentoMatriculaClasseDAO', 'org.sigaept.edu.negocio.ejb.ManterSituacaoAlunoCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AbonoFaltaDAO', 'org.sigaept.edu.negocio.ejb.ManterAbonoFaltaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EgressoDAO', 'org.sigaept.edu.negocio.ejb.ManterSituacaoAlunoCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EnturmacaoDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ReservaAmbienteDeAprendizagemDAO', 'org.sigaept.edu.negocio.ejb.ManterReservaAmbienteDeAprendizagemEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SupervisaoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterPlanoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterEtapaAvaliacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AproveitamentoAceleracaoeDispensaDAO', 'org.sigaept.edu.negocio.ejb.ManterAproveitamentoAceleracaoeDispensaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EducacensoDAO', 'org.sigaept.edu.negocio.ejb.ManterEducacensoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TermoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PessoaFisicaDAO', 'org.sigaept.edu.negocio.ejb.ManterUsuarioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AmbienteAprendizagemDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.VinculoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AtoAutorizativoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RequisitoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, NotBusiness), Description, Result).

    

    
:- multifile(transformation_api:transformation/5).     % Don't forget the declaration!

% linking the ct to the System.out.println detector
transformation_api:transformation(
     _,                                        % Individual result (No group)
     persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters, DAO, Business, BusinessTarget),                 % RoleTerm
     [ 
      addEJBAnnotation(Business, BusinessTarget),
      addNotVoidMethods(DAO, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters),
      addVoidMethods(DAO, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, CallParameters),
      replaceCalls(CallId, Business, BusinessTarget),
      %addEJBAnnotationToClass(Business, BusinessTarget),
      deleteLocalVariable(MethodCall, DAO),
      deleteMethods1Call(Business, MethodCall, DAO)
      %organizeImportsEJB(Business),
      %organizeImportsEJB(Business, BusinessTarget)
      ],         % CTHead
     'Replace DAO call for EJB call',      % Description
     [global, preview]).                               % Option: Show Preview
     

%transformation_api:transformation(
%     _,                                        % Individual result (No group)
%     remove_local_variable(LocalVariable, MethodCall, DAO, Business, BusinessTarget, GenericDAO),                 % RoleTerm
%     deleteLocalVariable1(LocalVariable, MethodCall, Business, BusinessTarget),         % CTHead
%     'Remove Local Variable',      % Description
%     [global, preview]).                               % Option: Show Preview