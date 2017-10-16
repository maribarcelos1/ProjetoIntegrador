/* Tabela de Função */
CREATE TABLE FUNCAO (
	COD_FUNCAO NUMBER(3) NOT NULL,				/* CÓDIGO DO FUNCIONÁRIO */
	NOM_FUNCAO VARCHAR2(50) NOT NULL,			/* NOME DO FUNCIONÁRIO */
	CONSTRAINT PK_FUNCAO PRIMARY KEY(COD_FUNCAO)
);

/* Sequência de Função */
CREATE SEQUENCE SEQ_FUNCAO
START WITH 1
INCREMENT BY 1;

INSERT INTO FUNCAO (COD_FUNCAO, NOM_FUNCAO) VALUES (SEQ_FUNCAO.NEXTVAL, 'Recepcionista');
INSERT INTO FUNCAO (COD_FUNCAO, NOM_FUNCAO) VALUES (SEQ_FUNCAO.NEXTVAL, 'Professor');

/* Tabela de Grupos Musculares */
CREATE TABLE GRUPO_MUSCULAR (
	COD_GRUPOMUSCULAR NUMBER(4) NOT NULL,		/* CÓDIGO DO GRUPO MUSCULAR */
	NOM_GRUPOMUSCULAR VARCHAR2(20) NOT NULL,	/* NOME DO GRUPO MUSCULAR */
	CONSTRAINT PK_GRUPO_MUSCULAR PRIMARY KEY(COD_GRUPOMUSCULAR)
);

/* Sequêcia de Grupos Musculares */
CREATE SEQUENCE SEQ_GRUPOMUSCULAR
START WITH 1
INCREMENT BY 1;

INSERT INTO GRUPO_MUSCULAR (COD_GRUPOMUSCULAR, NOM_GRUPOMUSCULAR) VALUES (SEQ_GRUPOMUSCULAR.NEXTVAL, 'Grupo Muscular 1');
INSERT INTO GRUPO_MUSCULAR (COD_GRUPOMUSCULAR, NOM_GRUPOMUSCULAR) VALUES (SEQ_GRUPOMUSCULAR.NEXTVAL, 'Grupo Muscular 2');

/* Tabela de Cadastro objetivos */
CREATE TABLE CADASTRO_OBJETIVO (
	COD_OBJETIVO NUMBER(5) NOT NULL,			/* CÓDIGO DO OBJETIVO */
	NOM_OBJETIVO VARCHAR2(50) NOT NULL,			/* NOME DO OBJETIVO */
	CONSTRAINT PK_CADASTRO_OBJETIVO PRIMARY KEY(COD_OBJETIVO)
);

/* Sequência Cadastro Objetivos */
CREATE SEQUENCE SEQ_CADASTRO_OBJETIVO
START WITH 1
INCREMENT BY 1;

INSERT INTO CADASTRO_OBJETIVO (COD_OBJETIVO, NOM_OBJETIVO) VALUES (SEQ_CADASTRO_OBJETIVO.NEXTVAL, 'Objetivo 1');
INSERT INTO CADASTRO_OBJETIVO (COD_OBJETIVO, NOM_OBJETIVO) VALUES (SEQ_CADASTRO_OBJETIVO.NEXTVAL, 'Objetivo 2');

/* Tabela Pessoa */
CREATE TABLE PESSOA (
	CPF_PESSOA NUMBER(11) NOT NULL, 	/* CPF */
	NOM_PESSOA VARCHAR2(50) NOT NULL, 	/* NOME */
	SNO_PESSOA VARCHAR2(30) NOT NULL, 	/* SOBRENOME */
	DNA_PESSOA DATE NOT NULL,		  	/* DATA DE NASCIMENTO */
	DCA_PESSOA DATE NOT NULL,		  	/* DATA CADASTRO */
	SEX_PESSOA CHAR(1) NOT NULL,	  	/* SEXO */
	PAI_PESSOA VARCHAR2(50) NOT NULL, 	/* PAÍS */
	CID_PESSOA VARCHAR2(50) NOT NULL,  	/* CIDADE */
	BAI_PESSOA VARCHAR2(50) NOT NULL, 	/* BAIRRO */
	END_PESSOA VARCHAR2(50) NOT NULL,  	/* ENDEREÇO */
	NEN_PESSOA NUMBER(5) NOT NULL,  	/* NÚMERO DE ENDEREÇO */
	CEP_PESSOA NUMBER(8) NOT NULL,	  	/* CEP */
	TEL_PESSOA NUMBER(10) NOT NULL,	  	/* TELEFONE */
	TEM_PESSOA NUMBER(10) NOT NULL,	  	/* TELEFONE DE EMERGÊNCIA */
	RG_PESSOA NUMBER(9) NOT NULL,	  	/* RG */
	SEN_PESSOA VARCHAR2(32) NOT NULL,  	/* SENHA */
	EMA_PESSOA VARCHAR2(50) NOT NULL,  	/* EMAIL */
	FPE_PESSOA VARCHAR2(36),			/* FOTO DO PERFIL */
	CONSTRAINT PK_PESSOA PRIMARY KEY(CPF_PESSOA)
);

INSERT INTO PESSOA (CPF_PESSOA, NOM_PESSOA, SNO_PESSOA, DNA_PESSOA, DCA_PESSOA, SEX_PESSOA, PAI_PESSOA, CID_PESSOA, BAI_PESSOA, END_PESSOA, NEN_PESSOA, CEP_PESSOA, TEL_PESSOA, TEM_PESSOA, RG_PESSOA, SEN_PESSOA, EMA_PESSOA) VALUES (11111111111, 'Paulo Eduardo', 'Rezende', TO_DATE('1997/12/17', 'yyyy/mm/dd'), TO_DATE('2017/08/06', 'yyyy/mm/dd'), 'M', 'Brasil', 'Sales Oliveira', 'Centro', 'Rua São José', 169, 14660000, 1611111111, 1611111111, 111111111, '81dc9bdb52d04dc20036dbd8313ed055', 'paulo@gmail.com');
INSERT INTO PESSOA (CPF_PESSOA, NOM_PESSOA, SNO_PESSOA, DNA_PESSOA, DCA_PESSOA, SEX_PESSOA, PAI_PESSOA, CID_PESSOA, BAI_PESSOA, END_PESSOA, NEN_PESSOA, CEP_PESSOA, TEL_PESSOA, TEM_PESSOA, RG_PESSOA, SEN_PESSOA, EMA_PESSOA) VALUES (22222222222, 'Danilo', 'Rodrigues', TO_DATE('1985/03/11', 'yyyy/mm/dd'), TO_DATE('2017/08/06', 'yyyy/mm/dd'), 'M', 'Brasil', 'Ribeirão Preto', 'Centro', 'Rua Aquidaban', 187, 14665000, 1622222222, 1622222222, 222222222, '81dc9bdb52d04dc20036dbd8313ed055', 'danilo@gmail.com');

/* Tabela Funcionário */
CREATE TABLE FUNCIONARIO (
	CPF_PESSOA NUMBER(11) NOT NULL,			/* CPF */
	COD_FUNCAO NUMBER(3) NOT NULL,			/* CÓDIGO DA FUNÇÃO */
	CTP_PESSOA VARCHAR2(14) NOT NULL,		/* CTPS */
	PIS_FUNCIONARIO NUMBER(11) NOT NULL,	/* PIS */
	RES_FUNCIONARIO NUMBER(12) NOT NULL,	/* RESERVISTA */
	CRE_FUNCIONARIO NUMBER(12) NOT NULL,	/* CREF */
	STA_FUNCIONARIO NUMBER(1) NOT NULL,		/* STATUS (ATIVO: 1 / INATIVO: 0) */
	CONSTRAINT PK_CPF_PESSOA PRIMARY KEY(CPF_PESSOA),
	CONSTRAINT FK_CPF_PESSOA FOREIGN KEY(CPF_PESSOA) REFERENCES PESSOA,
	CONSTRAINT FK_FUNCIONARIO_FUNCAO FOREIGN KEY(COD_FUNCAO) REFERENCES FUNCAO
);


INSERT INTO FUNCIONARIO (CPF_PESSOA, COD_FUNCAO, CTP_PESSOA, PIS_FUNCIONARIO, RES_FUNCIONARIO, CRE_FUNCIONARIO, STA_FUNCIONARIO) VALUES (22222222222, 2, '11111111111111', 11111111111, 111111111111, 111111111111, 1);

/* Tabela Aluno */
CREATE TABLE ALUNO (
	CPF_ALUNO NUMBER(11) NOT NULL, 			/* CPF */
	CPF_FUNCIONARIO NUMBER(11) NOT NULL, 	/* CODIGO DO FUNCIONÁRIO */
	STA_ALUNO NUMBER(1) NOT NULL,			/* STATUS (ATIVO: 1 / INATIVO: 0) */
	CONSTRAINT PK_CPF_ALUNO PRIMARY KEY(CPF_ALUNO),
	CONSTRAINT FK_CPF_ALUNO FOREIGN KEY(CPF_ALUNO) REFERENCES PESSOA,
	CONSTRAINT FK_CPF_FUNCIONARIO FOREIGN KEY(CPF_FUNCIONARIO) REFERENCES FUNCIONARIO
);

INSERT INTO ALUNO (CPF_ALUNO, CPF_FUNCIONARIO, STA_ALUNO) VALUES (11111111111, 22222222222, 1);

/* Tabela Medição */
CREATE TABLE MEDICAO (
	CPF_ALUNO NUMBER(11) NOT NULL, 			/* MATRÍCULA DO ALUNO */
	DAT_MEDICAO DATE NOT NULL,				/* DATA DA MEDÇÃO */
	CPF_FUNCIONARIO NUMBER(11) NOT NULL,	/* CPF DA PESSOA */
	PES_MEDICAO NUMBER(3,2) NOT NULL,		/* PESO */
	ALT_MEDICAO NUMBER(3,2) NOT NULL,		/* ALTURA */
	BUS_MEDICAO NUMBER(3,2) NOT NULL,		/* BUSTO */
	TOR_MEDICAO NUMBER(3,2) NOT NULL,		/* TORAX */
	CIN_MEDICAO NUMBER(3,2) NOT NULL,		/* CINTURA */
	ABD_MEDICAO NUMBER(3,2) NOT NULL,		/* ABDOMEN */
	QUA_MEDICAO NUMBER(3,2) NOT NULL,		/* QUADRIL */
	COE_MEDICAO NUMBER(3,2) NOT NULL,		/* COXA ESQUERDA */
	COD_MEDICAO NUMBER(3,2) NOT NULL,		/* COXA DIREITA */
	PAE_MEDICAO NUMBER(3,2) NOT NULL,		/* PANTURRILHA ESQUERDA */
	PAD_MEDICAO NUMBER(3,2) NOT NULL,		/* PANTURRILHA DIREITA */
	BRE_MEDICAO NUMBER(3,2) NOT NULL,		/* BRAÇO ESQUERDO */
	BRD_MEDICAO NUMBER(3,2) NOT NULL,		/* BRAÇO DIREITO */
	ANE_MEDICAO NUMBER(3,2) NOT NULL,		/* ANTBRAÇO ESQUERDO */
	AND_MEDICAO NUMBER(3,2) NOT NULL,		/* ANTBRAÇO DIREITO */
	CONSTRAINT PK_CPF_MEDICAO PRIMARY KEY(CPF_ALUNO, DAT_MEDICAO),
	CONSTRAINT FK_CPF_MEDICAO FOREIGN KEY(CPF_ALUNO) REFERENCES ALUNO,
	CONSTRAINT FK_CPF_FUNCIONARIO_MEDICAO FOREIGN KEY(CPF_FUNCIONARIO) REFERENCES FUNCIONARIO
);

/* Tabela Aluno Objetivo */
CREATE TABLE ALUNO_OBJETIVO (
	COD_ALUOBJ NUMBER(8) NOT NULL,		/* CÓDIGO DO OBJETIVO DO ALUNO */
	COD_OBJETIVO NUMBER(5) NOT NULL, 	/* CÓDIGO DO OBJETIVO (PREVIAMENTE CADASTRADO) */
	CPF_ALUNO NUMBER(11) NOT NULL,		/* MATRÍCULA DO ALUNO */
	DIN_ALUOBJ DATE,					/* DATA DE INÍCIO */
	DFI_ALUOBJ DATE,					/* DATA DE CONCLUSÃO */
	STA_ALUOBJ NUMBER(1),				/* STATUS (ATIVO: 1 / INATIVO: 0) */
	CONSTRAINT PK_ALUNO_OBJETIVO PRIMARY KEY(COD_ALUOBJ, COD_OBJETIVO),
	CONSTRAINT FK_COD_OBJETIVO FOREIGN KEY(COD_OBJETIVO) REFERENCES CADASTRO_OBJETIVO,
	CONSTRAINT FK_CPF_ALUNO_AOBJETIVO FOREIGN KEY(CPF_ALUNO) REFERENCES ALUNO
);

/* Sequência Aluno Objetivo */
CREATE SEQUENCE SEQ_ALUNO_OBJETIVO
START WITH 1
INCREMENT BY 1;

/* Tabela Exercício */
CREATE TABLE EXERCICIO (
	COD_EXERCICIO NUMBER(5) NOT NULL, 		/* CODIGO DO EXERCÍCIO */
	COD_GRUMUSC NUMBER(4) NOT NULL,			/* CODIGO DO GRUPO MUSCULAR */
	NOM_EXERCICIO VARCHAR2(20),				/* NOME DO EXERCÍCIO*/
	SIG_EXERCICIO VARCHAR2(6),				/* SIGLA DO EXERCÍCIO*/
	STA_EXERCICIO NUMBER(1),				/* STATUS (ATIVO: 1 / INATIVO: 0) */
	TIP_EXERCICIO VARCHAR2(15),				/* TIPO DO EXERCÍCIO */
	CONSTRAINT PK_COD_EXERCICIO PRIMARY KEY(COD_EXERCICIO),
	CONSTRAINT FK_COD_GRUPO_MUSCULAR FOREIGN KEY(COD_GRUMUSC) REFERENCES GRUPO_MUSCULAR
);

/* Sequência Exercício */
CREATE SEQUENCE SEQ_EXERCICIO
START WITH 1
INCREMENT BY 1;

INSERT INTO EXERCICIO (COD_EXERCICIO, COD_GRUMUSC, NOM_EXERCICIO, SIG_EXERCICIO, STA_EXERCICIO,  TIP_EXERCICIO) VALUES (SEQ_EXERCICIO.NEXTVAL, 1, 'Exercício 1', 'Exe. 1', 1, 'Anaerobico');
INSERT INTO EXERCICIO (COD_EXERCICIO, COD_GRUMUSC, NOM_EXERCICIO, SIG_EXERCICIO, STA_EXERCICIO,  TIP_EXERCICIO) VALUES (SEQ_EXERCICIO.NEXTVAL, 1, 'Exercício 2', 'Exe. 2', 1, 'Anaerobico');

/* Tabela Treinamento */
CREATE TABLE TREINAMENTO (
	DAT_TREINAMENTO DATE NOT NULL,		/* DATA DO TREINAMENTO */
	COD_EXERCICIO NUMBER(5) NOT NULL,	/* CÓDIGO DO EXERCÍCIO */
	CPF_ALUNO NUMBER(11) NOT NULL,		/* MATRÍCULA DO ALUNO */
	REP_TREINAMENTO NUMBER(4),			/* REPETIÇÕES */
	SER_TREINAMENTO NUMBER(4),			/* QUANTIDADE DE SÉRIES */
	CAR_TREINAMENTO NUMBER(4),			/* CARGA DE TREINAMENTO */
	TEM_TREINAMENTO NUMBER(4),			/* TEMPO DE TREINO */
	PON_TREINAMENTO NUMBER(5),			/* PONTOS */
	STA_TREINAMENTO NUMBER(1), 			/* STATUS (ATIVO: 1 / INATIVO: 0) */
	CONSTRAINT PK_TREINAMENTO PRIMARY KEY(DAT_TREINAMENTO, COD_EXERCICIO, CPF_ALUNO),
	CONSTRAINT FK_COD_EXERCICIO FOREIGN KEY(COD_EXERCICIO) REFERENCES EXERCICIO,
	CONSTRAINT FK_CPF_ALUNO_TREINAMENTO FOREIGN KEY(CPF_ALUNO) REFERENCES ALUNO
);

INSERT INTO TREINAMENTO (DAT_TREINAMENTO, COD_EXERCICIO, CPF_ALUNO, REP_TREINAMENTO, SER_TREINAMENTO, CAR_TREINAMENTO, TEM_TREINAMENTO, PON_TREINAMENTO, STA_TREINAMENTO) VALUES (TO_DATE('2017/08/06', 'yyyy/mm/dd'), 1, 11111111111, 20, 3, 50, 10, 1000, 1);