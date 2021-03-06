:- module(persistence_migration_jt, []).

% load analysis and transformation
:- use_module(persistence_migration_analysis, [ persistence_call/15 ]).
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
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EventoExternoDAO', 'org.sigaept.edu.negocio.ejb.ManterEventoExternoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MatrizCurricularPeriodoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ModalidadeAprendizagemDAO', 'org.sigaept.edu.negocio.ejb.ManterCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.LotacaoServidorDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoElementoCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ParticipacaoEventoExternoDAO', 'org.sigaept.edu.negocio.ejb.ManterEventoExternoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ContaCorrentePagamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PeriodoInscricaoProgramaAssisEstudantilDAO', 'org.sigaept.edu.negocio.ejb.ManterPeriodoInscricaoProgramaAssisEstudantilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AlunoDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProjetoExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ReaberturaTurmaDAO', 'org.sigaept.edu.negocio.ejb.ReaberturaTurmaClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AbonoFaltaDAO', 'org.sigaept.edu.negocio.ejb.ManterAbonoFaltaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SituacaoMatrizCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusTramitePreProjetoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ClasseServidorDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EstruturaOrganizacionalDAO', 'org.sigaept.edu.negocio.ejb.ManterEstruturaOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PedidoRenovacaoMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterPedidoRenovacaoMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DocenciaGradeHorarioDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoEtapaDAO', 'org.sigaept.edu.negocio.ejb.ManterDataLimiteEtapaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.InstituicaoDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FonteFinanciamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EstadoCivilDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TermoConvenioDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AreaEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterPlanoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CursoOrigemDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ChamadaProcessoSeletivoDAO', 'org.sigaept.edu.negocio.ejb.ManterAprovadoProcessoSeletivoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProfissaoDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ContextoRegraDAO', 'org.sigaept.edu.negocio.ejb.ManterConjuntoRegrasAcademicasEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MenuDAO', 'org.sigaept.edu.negocio.ejb.MenuEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EnadeDAO', 'org.sigaept.edu.negocio.ejb.ManterEnadeEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AtividadeEconomicaDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PlanoEstudoDAO', 'org.sigaept.edu.negocio.ejb.ManterPlanoEstudoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.GerenciaEnadeDAO', 'org.sigaept.edu.negocio.ejb.ManterGerenciaEnadeEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SituacaoVinculoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FormaOfertaDAO', 'org.sigaept.edu.negocio.ejb.ManterFormaOfertaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoPerguntaDAO', 'org.sigaept.edu.negocio.ejb.ManterPeriodoInscricaoProgramaAssisEstudantilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoDataAcademicaDAO', 'org.sigaept.edu.negocio.ejb.ManterTipoDataAcademicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.BancoPagamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PeriodoAvaliacaoDocenteDAO', 'org.sigaept.edu.negocio.ejb.ManterAvaliacaoDocenteEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EmailDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PreProjetoEstagioTramiteDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoVinculoClasseDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SituacaoLegalDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.VerificacaoCasoLogDAO', 'org.sigaept.edu.negocio.ejb.ManterVerificacaoCasoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EixoTecnologicoDAO', 'org.sigaept.edu.negocio.ejb.ManterCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SubAreaConhecimentoCNPQDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FinanciamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterProgramaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PortePessoaJuridicaDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AreaIngressoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoPeriodoMatrizCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ParticipacaoProgramaAssisEstudantilDAO', 'org.sigaept.edu.negocio.ejb.ManterInscricaoProgramasAssistenciaEstudantilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AulaAntecipacaoReposicaoDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.OcorrenciaAlunoDAO', 'org.sigaept.edu.negocio.ejb.ManterOcorrenciaAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TelefoneDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AreaUnescoDAO', 'org.sigaept.edu.negocio.ejb.ManterAreaUnescoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CessaoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MandatoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoOrganizacionalTelefoneDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.HistoricoMatriculaMatrizDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TrabalhoConclusaoDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AlternativaPerguntasProgramasAssistenciaEstudantilDAO', 'org.sigaept.edu.negocio.ejb.ManterPerguntasProgramasAssistenciaEstudantilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusEnadeDAO', 'org.sigaept.edu.negocio.ejb.ManterEnadeEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ZonaProcedenciaDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.LocalizacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterAmbienteAprendizagemEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CPFDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TecnicoAdministrativoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusUsuarioDAO', 'org.sigaept.edu.negocio.ejb.ManterUsuarioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusHistoricoEnadeDAO', 'org.sigaept.edu.negocio.ejb.ManterEnadeEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AnoConclusaoInstituicaoOrigemDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ReaberturaClasseDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.LancamentoDadosHistoricoDAO', 'org.sigaept.edu.negocio.ejb.ManterLancamentoDadosHistoricoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoAbrangenciaRegraDAO', 'org.sigaept.edu.negocio.ejb.ManterRegraAcademicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.GradeHorarioHorarioAulaDAO', 'org.sigaept.edu.negocio.ejb.ManterGradeHorariaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EstagioMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoPessoaJuridicaDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AuditStatusTransacaoDAO', 'org.sigaept.edu.negocio.ejb.AuditStatusTransacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EstruturaEtapaAvaliacaoMatrizCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterEtapaAvaliacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoConvenioEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CalendarioAcademicoMatrizCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CalendarioAcademicoDAO', 'org.sigaept.edu.negocio.ejb.ManterCalendarioAcademicoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AvaliarProjetoExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterPeriodoAcompanhamentoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ResultadoAvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EstruturaEtapaAvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterEtapaAvaliacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MaterialApoioDAO', 'org.sigaept.edu.negocio.ejb.ManterMaterialApoioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PlanoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterPlanoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RelatorioDAO', 'org.sigaept.edu.negocio.ejb.RelatorioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EtniaDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.NecessidadeEspecialDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.GradeHorariaDAO', 'org.sigaept.edu.negocio.ejb.ManterGradeHorariaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SituacaoCalendarioAcademicoDAO', 'org.sigaept.edu.negocio.ejb.ManterCalendarioAcademicoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoUnidadeOrganizacionalDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoPeriodoLetivoDAO', 'org.sigaept.edu.negocio.ejb.ManterPeriodoLetivoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoCargaHorariaParticipanteDAO', 'org.sigaept.edu.negocio.ejb.ManterTipoCargaHorariaParticipanteEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EtapaAvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterDataLimiteEtapaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CargoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DataFixaDAO', 'org.sigaept.edu.negocio.ejb.ManterReservaEquipamentoEnsinoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ParticipanteEnadeDAO', 'org.sigaept.edu.negocio.ejb.ManterEnadeEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MatrizCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoAulaDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AreaTematicaDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoRelatorioEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DiaSemanaDAO', 'org.sigaept.edu.negocio.ejb.ManterGradeHorariaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PapelParticipanteDAO', 'org.sigaept.edu.negocio.ejb.ManterParticipacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SituacaoFuncionamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterSituacaoFuncionamentoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoRegimeMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterRegimeMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoEscolaOrigemDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.HorarioAulaDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PaisDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.VinculoDAO', 'org.sigaept.edu.negocio.ejb.ManterEventoExternoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EixoTecnologicoCursoTecnicoDAO', 'org.sigaept.edu.negocio.ejb.ManterEixoTecnologicoCursoTecnicoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoCurricularAproveitadoDAO', 'org.sigaept.edu.negocio.ejb.ManterPedidoRenovacaoMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoProcedimentoCurricularDao', 'org.sigaept.edu.negocio.ejb.ManterAproveitamentoAceleracaoeDispensaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DataLimiteEtapaDAO', 'org.sigaept.edu.negocio.ejb.ManterDataLimiteEtapaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ItemDispendioDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MediaGeralTurmaDAO', 'org.sigaept.edu.negocio.ejb.ManterSituacaoAlunoCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AproveitamentoAceleracaoeDispensaDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AprovadoProcessoSeletivoDAO', 'org.sigaept.edu.negocio.ejb.ManterAprovadoProcessoSeletivoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoCurricularAproveitadoElementoCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterAproveitamentoAceleracaoeDispensaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AplicacaoPerguntasAssistenciaEstudantilDAO', 'org.sigaept.edu.negocio.ejb.ManterPerguntasProgramasAssistenciaEstudantilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoAtoAutorizativoDAO', 'org.sigaept.edu.negocio.ejb.ManterCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FaltaDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DataAcademicaDAO', 'org.sigaept.edu.negocio.ejb.ManterCalendarioAcademicoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConvenioEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConjuntoRegrasAcademicasMatrizDAO', 'org.sigaept.edu.negocio.ejb.ManterConjuntoRegrasAcademicasEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterAproveitamentoAceleracaoeDispensaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CategoriaProjetoExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoEstagioRegularDAO', 'org.sigaept.edu.negocio.ejb.ManterSupervisaoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.OrgaosExternosDAO', 'org.sigaept.edu.negocio.ejb.ManterOrgaosExternos', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoArquivoRelatorioFinalEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioFinalEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CancelamentoMatriculaClasseDAO', 'org.sigaept.edu.negocio.ejb.ManterTurmaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CancelamentoMatriculaCursoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DocenciaDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoSituacaoMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.VisitaTecnicaGerencialDAO', 'org.sigaept.edu.negocio.ejb.ManterVisitaTecnicaGerencialEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EtapaEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConjuntoTemplateRelatorioEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterConjuntoTemplateRelatorioEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoMatrizDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AmbienteAprendizagemDAO', 'org.sigaept.edu.negocio.ejb.ManterAmbienteAprendizagemEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConselhoClasseDAO', 'org.sigaept.edu.negocio.ejb.ManterConselhoClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.VersaoDAO', 'org.sigaept.edu.negocio.ejb.ManterVersaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SituacaoVisitaTecnicaGerencialDAO', 'org.sigaept.edu.negocio.ejb.ManterVisitaTecnicaGerencialEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AditivoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RespostaAvaliacaoDocenteDAO', 'org.sigaept.edu.negocio.ejb.ManterAvaliacaoDocenteEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ServidorDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TurmaDAO', 'org.sigaept.edu.negocio.ejb.ManterTurmaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PeriodoAcompanhamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterPeriodoAcompanhamentoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AtividadeComplementarMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterSituacaoAlunoCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoLogradouroDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ModalidadeCursoDAO', 'org.sigaept.edu.negocio.ejb.ManterModalidadeCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.UnidadeOrganizacionalDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RegimeJuridicoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PessoaExternaDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaExternaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PerguntasProgramasAssistenciaEstudantilDAO', 'org.sigaept.edu.negocio.ejb.ManterPerguntasProgramasAssistenciaEstudantilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EixoTecnologicoCursoSuperiorDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.OrgaoExpedidorDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CriterioClassificacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterPedidoRenovacaoMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SituacaoEquipamentoEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterEquipamentoEnsinoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoOcorrenciaDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoAcessoDAO', 'org.sigaept.edu.negocio.ejb.ManterUsuarioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ResponsavelDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FormulaCriterioClassificacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterCriterioClassificacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.OrgaoPublicoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SexoDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DisciplinaDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FuncionarioDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ClasseDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ParticipacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterParticipacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.UnidadeEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RelatorioPentahoDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioPentahoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CategoriaProgramaDAO', 'org.sigaept.edu.negocio.ejb.ManterProgramaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoEletivaDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoParticipanteDAO', 'org.sigaept.edu.negocio.ejb.ManterParticipacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SupervisaoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterPlanoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProgramaEducacaoSuperiorDAO', 'org.sigaept.edu.negocio.ejb.ManterProgramaEducacaoSuperiorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoEquipamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterReservaEquipamentoEnsinoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ModalidadeBolsaPesquisaExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConfiguracaoGeralDAO', 'org.sigaept.edu.negocio.ejb.EfetuarLoginEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PlanoEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterPlanoEnsinoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.UnidadeFederativaDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MatriculaDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CDUDAO', 'org.sigaept.edu.negocio.ejb.ManterCDUEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PerfilAcaoDAO', 'org.sigaept.edu.negocio.ejb.ManterPerfilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConceitoAvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoParentescoDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RegraAcademicaDAO', 'org.sigaept.edu.negocio.ejb.ManterRegraAcademicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EnturmacaoDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.NivelFuncionalServidorDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AreaConhecimentoDAO', 'org.sigaept.edu.negocio.ejb.ManterCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RelatorioEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PerfilDAO', 'org.sigaept.edu.negocio.ejb.ManterPerfilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CategoriaDataEspecialDAO', 'org.sigaept.edu.negocio.ejb.ManterCategoriaDataEspecialEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AbrangenciaProjetoExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EixoTecnologicoCursoNaoCatalagoDAO', 'org.sigaept.edu.negocio.ejb.ManterEixoTecnologicoCursoNaoCatalagoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoUnidadeEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FuncaoServidorDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AuditTipoOperacaoDAO', 'org.sigaept.edu.negocio.ejb.AuditTipoOperacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RelatorioAcompanhamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterAvaliarProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AtividadeComplementarDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.NivelRendaFamiliarDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AvaliacaoDocenteDAO', 'org.sigaept.edu.negocio.ejb.ManterAvaliacaoDocenteEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoRegistroLegalDAO', 'org.sigaept.edu.negocio.ejb.ManterTipoRegistroLegalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AuditoriaRecuperacaoSenhaDAO', 'org.sigaept.edu.negocio.ejb.ManterAuditoriaRecuperacaoSenhaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MotivoEnadeDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EducacensoDAO', 'org.sigaept.edu.negocio.ejb.ManterEducacensoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MaterialApoioPastaDAO', 'org.sigaept.edu.negocio.ejb.ManterMaterialApoioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AgenciaPagamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SituacaoCursoDAO', 'org.sigaept.edu.negocio.ejb.ManterSituacaoCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoStatusAlunoDAO', 'org.sigaept.edu.negocio.ejb.ManterStatusAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.GrupoCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DuracaoDAO', 'org.sigaept.edu.negocio.ejb.ManterPermissaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusAlunoPeriodoDAO', 'org.sigaept.edu.negocio.ejb.ManterInscricaoElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProgramaAssistenciaEstudantilDAO', 'org.sigaept.edu.negocio.ejb.ManterProgramaAssistenciaEstudantilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.InstituicaoParticipanteDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CategoriaTreinamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterTreinamentoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ElementoOrganizacionalDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EgressoDAO', 'org.sigaept.edu.negocio.ejb.ManterSituacaoAlunoCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RelatorioComumDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusTramiteRelatorioFinalEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioFinalEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoEixoTecnologicoDAO', 'org.sigaept.edu.negocio.ejb.ManterEixoTecnologicoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ValidaDocumentoDAO', 'org.sigaept.edu.negocio.ejb.ManterValidaDocumentoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.OfertaVagaDAO', 'org.sigaept.edu.negocio.ejb.ManterOfertaVagaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RegimeLetivoDAO', 'org.sigaept.edu.negocio.ejb.ManterCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoAvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterEtapaAvaliacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PeriodicidadeIngressoDAO', 'org.sigaept.edu.negocio.ejb.ManterCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PeriodoLetivoDAO', 'org.sigaept.edu.negocio.ejb.ManterPeriodoLetivoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProcedimentoTreinamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterProcedimentoTreinamentoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ClassificacaoTipoParentescoDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PCCDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ResultadoFinalConceitoDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoTelefoneDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TreinamentoDAO', 'org.sigaept.edu.negocio.ejb.ManterTreinamentoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AuditDadosDAO', 'org.sigaept.edu.negocio.ejb.AuditDadosEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TCCDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AlunoTrabalhadorDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoCertificadoMilitarDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AvaliacaoConceitoDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoDataEspecialDAO', 'org.sigaept.edu.negocio.ejb.ManterCalendarioAcademicoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusAlunoClasseDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoLancamentoDadosHistoricoDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusAlunoCursoDAO', 'org.sigaept.edu.negocio.ejb.FecharPeriodoLetivoClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConvenioDAO', 'org.sigaept.edu.negocio.ejb.ManterParticipacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RequisitoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SistemaEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterElementoOrganizacionalEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CategoriaAmbienteAprendizagemDAO', 'org.sigaept.edu.negocio.ejb.ManterAmbienteAprendizagemEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterEtapaAvaliacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoAbonoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CursoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.NivelEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RelatorioFinalEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioFinalEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ResultadoAvaliacaoConceitoDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TermoCompromissoDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PlanoEstudoClasseDAO', 'org.sigaept.edu.negocio.ejb.ManterPlanoEstudoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AcaoDAO', 'org.sigaept.edu.negocio.ejb.ManterPerfilEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.SituacaoAvaliacaoProjetoExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterAvaliarProjetoExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DescricaoCriterioClassificacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterDescricaoCriterioClassificacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AuditTabelaDAO', 'org.sigaept.edu.negocio.ejb.AuditTabelaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AreaProcedenciaDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PermissaoDAO', 'org.sigaept.edu.negocio.ejb.ManterPermissaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TurnoDAO', 'org.sigaept.edu.negocio.ejb.ManterSituacaoAlunoCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EquipamentoEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterEquipamentoEnsinoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoParticipacaoInstituicaoDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ContextoPermissaoAcessoDAO', 'org.sigaept.edu.negocio.ejb.ManterPermissaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ValidaTipoDocumentoDAO', 'org.sigaept.edu.negocio.ejb.ManterValidaDocumentoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoTermoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterTermoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RegimeMatriculaDAO', 'org.sigaept.edu.negocio.ejb.VincularAlunoAClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.MunicipioDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.FormaAvaliacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterEtapaAvaliacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PoloEadDAO', 'org.sigaept.edu.negocio.ejb.ManterPoloEadEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AuditSessaoDAO', 'org.sigaept.edu.negocio.ejb.AuditSessaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.GrupoDAO', 'org.sigaept.edu.negocio.ejb.ManterGrupoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PreProjetoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoSanguineoDAO', 'org.sigaept.edu.negocio.ejb.ManterPessoaFisicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.IngressoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AulaDAO', 'org.sigaept.edu.negocio.ejb.ManterClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.InstituicaoExternaDAO', 'org.sigaept.edu.negocio.ejb.ManterInstituicaoExternaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoFeriadoDAO', 'org.sigaept.edu.negocio.ejb.ManterTipoFeriadoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TemplateRelatorioEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterTemplateRelatorioEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RelatorioFinalEstagioTramiteDAO', 'org.sigaept.edu.negocio.ejb.ManterRelatorioFinalEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.GrauFormacaoDAO', 'org.sigaept.edu.negocio.ejb.ManterPlanoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AuditColecaoDAO', 'org.sigaept.edu.negocio.ejb.AuditColecaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.StatusAlunoDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ModalidadeEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterCursoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.OrganizacaoAcademicaDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProcedimentoElementoCurricularDao', 'org.sigaept.edu.negocio.ejb.ManterPedidoRenovacaoMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DocenteDAO', 'org.sigaept.edu.negocio.ejb.ManterConselhoClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TCCMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterTCCMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoEstagioObrigatorioDAO', 'org.sigaept.edu.negocio.ejb.ManterSupervisaoEstagioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AuditObjetoDAO', 'org.sigaept.edu.negocio.ejb.AuditObjetoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ConjuntoRegrasAcademicasDAO', 'org.sigaept.edu.negocio.ejb.ManterConselhoClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ReservaAmbienteDeAprendizagemDAO', 'org.sigaept.edu.negocio.ejb.ManterReservaAmbienteDeAprendizagemEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TermoAditivoDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ResultadoEtapaAvaliacaoConceitoDAO', 'org.sigaept.edu.negocio.ejb.ManterDiarioClasseEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EditalProcessoSeletivoDAO', 'org.sigaept.edu.negocio.ejb.ManterEditalProcessoSeletivoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EquivalenciaDAO', 'org.sigaept.edu.negocio.ejb.ManterMatrizCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ReservaEquipamentoEnsinoDAO', 'org.sigaept.edu.negocio.ejb.ManterReservaEquipamentoEnsinoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoParticipanteEnadeDAO', 'org.sigaept.edu.negocio.ejb.ManterEnadeEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PCCMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterPCCMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoAtividadeComplementarDAO', 'org.sigaept.edu.negocio.ejb.ManterTipoAtividadeComplementarEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoPendenciaMatriculaDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RegimeTrabalhoDAO', 'org.sigaept.edu.negocio.ejb.ManterRegimeTrabalhoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.RGDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DataEspecialDAO', 'org.sigaept.edu.negocio.ejb.ManterInscricaoElementoCurricularEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.EditalProjetoPesquisaExtensaoDAO', 'org.sigaept.edu.negocio.ejb.ManterEditalProjetoPesquisaExtensaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.VerificacaoCasoDAO', 'org.sigaept.edu.negocio.ejb.ManterVerificacaoCasoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.UsuarioDAO', 'org.sigaept.edu.negocio.ejb.ManterUsuarioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TipoIngressoDAO', 'org.sigaept.edu.negocio.ejb.ManterMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ProgramaDAO', 'org.sigaept.edu.negocio.ejb.ManterParticipacaoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.PessoaFisicaDAO', 'org.sigaept.edu.negocio.ejb.ManterUsuarioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.InstituicaoOrigemDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AtoAutorizativoDAO', 'org.sigaept.edu.negocio.ejb.ManterRegraAcademicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.TermoEstagioDAO', 'org.sigaept.edu.negocio.ejb.ManterEstagioMatriculaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.AuditAcessoDAO', 'org.sigaept.edu.negocio.ejb.AuditAcessoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ParentescoDAO', 'org.sigaept.edu.negocio.ejb.ManterAlunoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.ServidorPentahoDAO', 'org.sigaept.edu.negocio.ejb.ManterServidorPentahoEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.GradeHorariaMatrizCurricularDAO', 'org.sigaept.edu.negocio.ejb.ManterGradeHorariaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.CategoriaConvenioDAO', 'org.sigaept.edu.negocio.ejb.ManterConvenioEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).

analysis_api:analysis_result('persistence_call', _, Result) :-  
persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness, 'org.sigaept.edu.dao.DescricaoRegraDAO', 'org.sigaept.edu.negocio.ejb.ManterRegraAcademicaEJB', 'org.sigaept.nucleo.dao.GenericDAO') ,
Description = 'Call to DAO',
make_result_term(persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, NotBusiness), Description, Result).


    
    
:- multifile(transformation_api:transformation/5).     % Don't forget the declaration!

% linking the ct to the System.out.println detector
transformation_api:transformation(
     _,                                        % Individual result (No group)
     persistence_call(CallId, MethodCall, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters, DAO, Business, BusinessTarget),                 % RoleTerm
     [ 
      addEJBAnnotation(Business, BusinessTarget),
      addNotVoidMethods(DAO, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters),
      addVoidMethods(DAO, BusinessTarget, MethodCalled, MethodCalledName, MethodCalledParameters, MethodCalledReturnType, MethodCalledExceptions, MethodCalledTypeParameters, CallParameters),
      replaceCalls(CallId, Business, BusinessTarget),
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