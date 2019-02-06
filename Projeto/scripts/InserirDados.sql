
USE Projeto

INSERT INTO Utente(UtenteID, Nome, BI)
Values (1, 'João', 12345);

INSERT INTO Utente(UtenteID, Nome, BI)
Values (2, 'Rita', 54321);

INSERT INTO Utente(UtenteID, Nome, BI)
Values (3, 'Pedro', 87654);

INSERT INTO Utente(UtenteID, Nome, BI)
Values (4, 'Joana', 34856);




INSERT INTO AreaClinica(AreaClinicaID, Nome) 
Values (1, 'Psiquiatria');

INSERT INTO AreaClinica(AreaClinicaID, Nome)
Values (2, 'Neurologia');

INSERT INTO AreaClinica(AreaClinicaID, Nome)
Values (3, 'Ortopedia');

INSERT INTO AreaClinica(AreaClinicaID, Nome)
Values (4, 'Dermatologia');

INSERT INTO AreaClinica(AreaClinicaID, Nome)
Values (5, 'Cardiologia');

INSERT INTO AreaClinica(AreaClinicaID, Nome)
Values (6, 'Pediatria');

INSERT INTO AreaClinica(AreaClinicaID, Nome)
Values (7, 'Urologia');




INSERT INTO CorpoClinico(CorpoClinicoID, AreaClinicaID)
Values (1, 3);

INSERT INTO CorpoClinico(CorpoClinicoID, AreaClinicaID)
Values (2, 4);

INSERT INTO CorpoClinico(CorpoClinicoID, AreaClinicaID)
Values (3, 1);

INSERT INTO CorpoClinico(CorpoClinicoID, AreaClinicaID)
Values (4, 2);

INSERT INTO CorpoClinico(CorpoClinicoID, AreaClinicaID)
Values (5, 6);

INSERT INTO CorpoClinico(CorpoClinicoID, AreaClinicaID)
Values (6, 5);

INSERT INTO CorpoClinico(CorpoClinicoID, AreaClinicaID)
Values (7, 7);




INSERT INTO Medico(MedicoID, Nome, CorpoClinicoID)
Values (1, 'Alberto', 2);

INSERT INTO Medico(MedicoID, Nome, CorpoClinicoID)
Values (2, 'Ana', 1);

INSERT INTO Medico(MedicoID, Nome, CorpoClinicoID)
Values (3, 'Miguel', 4);

INSERT INTO Medico(MedicoID, Nome, CorpoClinicoID)
Values (4, 'André', 3);

INSERT INTO Medico(MedicoID, Nome, CorpoClinicoID)
Values (5, 'Patrícia', 6);

INSERT INTO Medico(MedicoID, Nome, CorpoClinicoID)
Values (6, 'António', 2);

INSERT INTO Medico(MedicoID, Nome, CorpoClinicoID)
Values (7, 'Tiago', 1);




INSERT INTO RegiaoSaude(RegiaoID, Nome)
Values (1, 'Região Centro');

INSERT INTO RegiaoSaude(RegiaoID, Nome)
Values (2, 'Região Norte');




INSERT INTO CentroHospitalar(CentroHospitalarID, RegiaoID, Nome)
Values (1, 1, 'CH Cova da Beira');

INSERT INTO CentroHospitalar(CentroHospitalarID, RegiaoID, Nome)
Values (2, 1, 'CH Beira Interior');

INSERT INTO CentroHospitalar(CentroHospitalarID, RegiaoID, Nome)
Values (3, 2, 'CH Alto Douro');




INSERT INTO Hospital(HospitalID, CentroHospitalarID, Nome)
Values (1, 1, 'Santa Maria');

INSERT INTO Hospital(HospitalID, CentroHospitalarID, Nome)
Values (2, 1, 'Sousa Martins');

INSERT INTO Hospital(HospitalID, CentroHospitalarID, Nome)
Values (3, 3, 'São João');

INSERT INTO Hospital(HospitalID, CentroHospitalarID, Nome)
Values (4, 2, 'Trindade');




INSERT INTO ServicoSaude(ServicoSaudeID, Nome)
Values (1, 'Centro de Saúde');

INSERT INTO ServicoSaude(ServicoSaudeID, Nome)
Values (2, 'Centro de Internamento');

INSERT INTO ServicoSaude(ServicoSaudeID, Nome)
Values (3, 'Centro de Tratamento Crónico');

INSERT INTO ServicoSaude(ServicoSaudeID, Nome)
Values (4, 'Centro Operatório');

INSERT INTO ServicoSaude(ServicoSaudeID, Nome)
Values (5, 'Centro de Análises');

INSERT INTO ServicoSaude(ServicoSaudeID, Nome)
Values (6, 'Centro de Maternidade');

INSERT INTO ServicoSaude(ServicoSaudeID, Nome)
Values (7, 'Centro Farmacêutico');

INSERT INTO ServicoSaude(ServicoSaudeID, Nome)
Values (8, 'Centro de Urgência');




INSERT INTO Sala(SalaID, ServicoSaudeID)
Values (1, 1);

INSERT INTO Sala(SalaID, ServicoSaudeID)
Values (2, 1);

INSERT INTO Sala(SalaID, ServicoSaudeID)
Values (3, 3);

INSERT INTO Sala(SalaID, ServicoSaudeID)
Values (4, 2);

INSERT INTO Sala(SalaID, ServicoSaudeID)
Values (5, 2);

INSERT INTO Sala(SalaID, ServicoSaudeID)
Values (6, 4);







INSERT INTO Ocorrencia(OcorrenciaID, Tipo, UtenteID, Descricao)
Values (1, 'Urgência', 3, 'Irritação no pé');

INSERT INTO Ocorrencia(OcorrenciaID, Tipo, UtenteID, Descricao)
Values (2, 'Normal', 3, 'Dor no peito');

INSERT INTO Ocorrencia(OcorrenciaID, Tipo, UtenteID, Descricao)
Values (3, 'Normal', 2, 'Dor de cabeça');

INSERT INTO Ocorrencia(OcorrenciaID, Tipo, UtenteID, Descricao)
Values (4, 'Urgência', 4, 'Braço partido');

INSERT INTO EpisodioClinico(EpisodioClinicoID, MarcacaoID, OcorrenciaID, Descricao)
Values (1, 3, 3, 'Encaminhamento Neurologia');

INSERT INTO EpisodioClinico(EpisodioClinicoID, MarcacaoID, OcorrenciaID, Descricao)
Values (2, 4, 3, 'Foi receitado Brufen');

INSERT INTO EpisodioClinico(EpisodioClinicoID, MarcacaoID, OcorrenciaID, Descricao)
Values (3, 5, 2, 'Será operado ao coração');

INSERT INTO EpisodioClinico(EpisodioClinicoID, MarcacaoID, OcorrenciaID, Descricao)
Values (4, 1, 1, 'Análises ao sangue');

INSERT INTO EpisodioClinico(EpisodioClinicoID, MarcacaoID, OcorrenciaID, Descricao)
Values (5, 2, 1, 'Eczema');


INSERT INTO MeiosComplementares(MeiosComplementaresID, EpisodioClinicoID, Nome, Resultado)
Values (1, 3, 'Operação', 'Óbito');

INSERT INTO MeiosComplementares(MeiosComplementaresID, EpisodioClinicoID, Nome, Resultado)
Values (2, 4, 'Análise', 'Nada a relatar');


INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (1, 6);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (1, 5);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (2, 1);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (2, 2);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (3, 7);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (3, 1);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (4, 7);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (4, 6);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (4, 5);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (5, 7);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (5, 3);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (6, 6);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (6, 4);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (7, 2);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (8, 5);

INSERT INTO AtribuicaoServicoArea(ServicoSaudeID, AreaClinicaID)
Values (8, 4);




INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (1, 1);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (1, 2);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (1, 4);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (2, 7);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (2, 8);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (2, 3);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (3, 4);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (3, 5);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (3, 8);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (4, 1);

INSERT INTO AtribuicaoHospitalServico(HospitalID, ServicoSaudeID)
Values (4, 3);