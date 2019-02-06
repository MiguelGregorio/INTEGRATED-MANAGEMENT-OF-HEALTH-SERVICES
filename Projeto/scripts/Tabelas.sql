USE Projeto

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Utente]') )
begin
  CREATE TABLE Utente (
	UtenteID int NOT NULL 
	     CHECK (UtenteID >= 1),                    -- constraint type: check
    Nome nvarchar(100) NOT NULL, 
    BI nvarchar(30) NOT NULL,

    CONSTRAINT PK_UtenteID PRIMARY KEY (UtenteID) -- constraint type: primary key
    /*CONSTRAINT U_Nome UNIQUE (Nome)            -- constraint type: unique*/        
  ); 
    
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[AreaClinica]') )
begin
  CREATE TABLE AreaClinica (
	  AreaClinicaID int NOT NULL 
	     CONSTRAINT PK_AreaClinicaID PRIMARY KEY (AreaClinicaID)
	     CHECK (AreaClinicaID >= 1),
	  Nome nvarchar(100) NOT NULL, 
  ); 
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[CorpoClinico]') )
begin
  CREATE TABLE CorpoClinico (
	  CorpoClinicoID int NOT NULL 
	     CONSTRAINT PK_CorpoClinicoID PRIMARY KEY (CorpoClinicoID)
	     CHECK (CorpoClinicoID >= 1),
	  AreaClinicaID int NOT NULL 
	     CONSTRAINT FK_AreaClinicaID FOREIGN KEY (AreaClinicaID)
	     REFERENCES AreaClinica(AreaClinicaID)
  ); 
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Medico]') )
begin
  CREATE TABLE Medico (
	  MedicoID int NOT NULL 
	     CONSTRAINT PK_MedicoID PRIMARY KEY (MedicoID)
	     CHECK (MedicoID >= 1),
	  Nome nvarchar(100) NOT NULL,
	  CorpoClinicoID int NOT NULL 
	  CONSTRAINT FK_CorpoClinicoID FOREIGN KEY (CorpoClinicoID) 
	     REFERENCES CorpoClinico(CorpoClinicoID) 
  ); 
end


-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[RegiaoSaude]') )
begin
  CREATE TABLE RegiaoSaude (
	  RegiaoID int NOT NULL 
	     CONSTRAINT PK_RegiaoID PRIMARY KEY (RegiaoID)
	     CHECK (RegiaoID >= 1),
	  Nome nvarchar(100) NOT NULL	  
  ); 
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[CentroHospitalar]') )
begin
  CREATE TABLE CentroHospitalar (
	  CentroHospitalarID int NOT NULL 
	     CONSTRAINT PK_CentroHospitalarID PRIMARY KEY (CentroHospitalarID)
	     CHECK (CentroHospitalarID >= 1),
	  RegiaoID int NOT NULL 
	  CONSTRAINT FK_RegiaoID FOREIGN KEY (RegiaoID) 
	     REFERENCES RegiaoSaude(RegiaoID),
	  Nome nvarchar(100) NOT NULL
  ); 
end

-- ............................................................................
if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Hospital]') )
begin
  CREATE TABLE Hospital (
	  HospitalID int NOT NULL 
	     CONSTRAINT PK_HospitalID PRIMARY KEY (HospitalID)
	     CHECK (HospitalID >= 1),
	  CentroHospitalarID int NOT NULL 
	  CONSTRAINT FK_CentroHospitalarID FOREIGN KEY (CentroHospitalarID) 
	     REFERENCES CentroHospitalar(CentroHospitalarID),
	  Nome nvarchar(100) NOT NULL
  ); 
end

-- ............................................................................
if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[ServicoSaude]') )
begin
  CREATE TABLE ServicoSaude (
	  ServicoSaudeID int NOT NULL 
	     CONSTRAINT PK_ServicoSaudeID PRIMARY KEY (ServicoSaudeID)
	     CHECK (ServicoSaudeID >= 1),
	  Nome nvarchar(100) NOT NULL
  ); 
end

-- ............................................................................
if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Sala]') )
begin
  CREATE TABLE Sala (
	  SalaID int NOT NULL 
	     CONSTRAINT PK_SalaID PRIMARY KEY (SalaID)
	     CHECK (SalaID >= 1),
	  ServicoSaudeID int NOT NULL 
	  CONSTRAINT FK_ServicoSaudeID FOREIGN KEY (ServicoSaudeID) 
	     REFERENCES ServicoSaude(ServicoSaudeID)
  ); 
end

-- ............................................................................
if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Recursos]') )
begin
  CREATE TABLE Recursos (
	  RecursosID int NOT NULL 
	     CONSTRAINT PK_RecursosID PRIMARY KEY (RecursosID)
	     CHECK (RecursosID >= 1),
	  Nome nvarchar(100) NOT NULL,
	  Validade Date NOT NULL
  ); 
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Ocorrencia]') )
begin
  CREATE TABLE Ocorrencia (
	  OcorrenciaID int NOT NULL 
	     CONSTRAINT PK_OcorrenciaID PRIMARY KEY (OcorrenciaID)
	     CHECK (OcorrenciaID >= 1),
	  Tipo nvarchar(10) NOT NULL,
	  UtenteID int NOT NULL 
	  CONSTRAINT FK_UtenteID FOREIGN KEY (UtenteID) 
	     REFERENCES Utente(UtenteID),
	  Descricao nvarchar(500) NOT NULL
  ); 
end

-- ............................................................................
if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[Marcacao]') )
begin
  CREATE TABLE Marcacao (
	  MarcacaoID int NOT NULL 
	     CONSTRAINT PK_MarcacaoID PRIMARY KEY (MarcacaoID)
	     CHECK (MarcacaoID >= 1),
	  OcorrenciaID int NOT NULL
	  CONSTRAINT FK_OcorrenciaID FOREIGN KEY (OcorrenciaID)
		REFERENCES Ocorrencia(OcorrenciaID),
	  ServicoSaudeID int NOT NULL
	  CONSTRAINT SK_ServicoSaudeID FOREIGN KEY (ServicoSaudeID)
		REFERENCES ServicoSaude(ServicoSaudeID),
	  AreaClinicaID int NOT NULL
	  CONSTRAINT SK_AreaClinicaID FOREIGN KEY (AreaClinicaID)
		REFERENCES AreaClinica(AreaClinicaID),
	  MedicoID int NOT NULL 
	  CONSTRAINT FK_MedicoID FOREIGN KEY (MedicoID) 
	     REFERENCES Medico(MedicoID),
	  Dia Date NOT NULL,
	  Hora Time NOT NULL,
	  SalaID int NOT NULL 
	  CONSTRAINT FK_SalaID FOREIGN KEY (SalaID) 
	     REFERENCES Sala(SalaID),
	  RecursosID int NOT NULL 
	  CONSTRAINT FK_RecursosID FOREIGN KEY (RecursosID) 
	     REFERENCES Recursos(RecursosID)
  ); 
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[EpisodioClinico]') )
begin
  CREATE TABLE EpisodioClinico (
	  EpisodioClinicoID int NOT NULL 
	     CONSTRAINT PK_EpisodioClinicoID PRIMARY KEY (EpisodioClinicoID)
	     CHECK (EpisodioClinicoID >= 1),
	  MarcacaoID int NOT NULL 
	  CONSTRAINT FK_MarcacaoID FOREIGN KEY (MarcacaoID) 
	     REFERENCES Marcacao(MarcacaoID),
	  OcorrenciaID int NOT NULL 
	  CONSTRAINT SK_OcorrenciaID FOREIGN KEY (OcorrenciaID) 
	     REFERENCES Ocorrencia(OcorrenciaID),
	  Descricao nvarchar(500) NOT NULL
  ); 
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[MeiosComplementares]') )
begin
  CREATE TABLE MeiosComplementares (
	  MeiosComplementaresID int NOT NULL 
	     CONSTRAINT PK_MeiosComplementaresID PRIMARY KEY (MeiosComplementaresID)
	     CHECK (MeiosComplementaresID >= 1),
	  EpisodioClinicoID int NOT NULL 
	  CONSTRAINT FK_EpisodioClinicoID FOREIGN KEY (EpisodioClinicoID) 
	     REFERENCES EpisodioClinico(EpisodioClinicoID),
	  Nome nvarchar(20) NOT NULL,
	  Resultado nvarchar(500) NOT NULL
  ); 
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[AtribuicaoServicoArea]') )
begin
  CREATE TABLE AtribuicaoServicoArea (
	  ServicoSaudeID int  
	    CONSTRAINT nn_ServicoSaudeID NOT NULL,
	  AreaClinicaID int 
	    CONSTRAINT nn_AreaClinicaID NOT NULL,
	  	         -- nn -> NOT NULL
	  
	  CONSTRAINT PK_AtribuicaoServicoArea 
	    PRIMARY KEY (ServicoSaudeID, AreaClinicaID),           -- constraint type: primary key
	  
	  CONSTRAINT UK_ServicoSaudeID FOREIGN KEY (ServicoSaudeID) 
	    REFERENCES ServicoSaude(ServicoSaudeID), 
		    
	  CONSTRAINT UK_AreaClinicaID FOREIGN KEY (AreaClinicaID) 
	    REFERENCES AreaClinica(AreaClinicaID)
  ); 
end

-- ............................................................................

if not exists (select * from dbo.sysobjects 
               where id = object_id(N'[dbo].[AtribuicaoHospitalServico]') )
begin
  CREATE TABLE AtribuicaoHospitalServico (
	  HospitalID int  
	    CONSTRAINT nn_HospitalID NOT NULL,
	  ServicoSaudeID int 
	    CONSTRAINT nn_ServicoSaudeID NOT NULL,
	  	         -- nn -> NOT NULL
	  
	  CONSTRAINT PK_AtribuicaoHospitalServico 
	    PRIMARY KEY (HospitalID, ServicoSaudeID),           -- constraint type: primary key
	  
	  CONSTRAINT FK_HospitalID FOREIGN KEY (HospitalID) 
	    REFERENCES Hospital(HospitalID), 
		    
	  CONSTRAINT TK_ServicoSaudeID FOREIGN KEY (ServicoSaudeID) 
	    REFERENCES ServicoSaude(ServicoSaudeID) 
  ); 
end