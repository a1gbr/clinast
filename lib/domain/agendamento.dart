class Agendamento {
    Exame | Consulta procedimento;
    Paciente paciente;
    Medico medico;
    DateTime data;
    AgendamentoTipo tipo;
    Agendamento status;
    Fatura? fatura;
}

enum AgendamentoStatus {
    agendado,
    faturaPendente,
    cancelado,
    concluido,
}

enum AgendamentoTipo {
    consulta, 
    exame,
    outros,
}