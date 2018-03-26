CREATE TABLE empresa () WITHOUT OIDS;
ALTER TABLE empresa ADD COLUMN id BIGSERIAL NOT NULL PRIMARY KEY;
ALTER TABLE empresa ADD COLUMN razaoSocial VARCHAR;
ALTER TABLE empresa ADD COLUMN cnpj VARCHAR;
ALTER TABLE empresa ADD COLUMN data_cadastro TIMESTAMP(4) WITHOUT TIME ZONE;
ALTER TABLE empresa ADD COLUMN data_atualizacao TIMESTAMP(4) WITHOUT TIME ZONE;


CREATE TABLE funcionario () WITHOUT OIDS;
	ALTER TABLE funcionario ADD COLUMN id BIGSERIAL NOT NULL PRIMARY KEY;
	ALTER TABLE funcionario ADD COLUMN nome VARCHAR NOT NULL;
	ALTER TABLE funcionario ADD COLUMN email VARCHAR NOT NULL;
	ALTER TABLE funcionario ADD COLUMN senha VARCHAR NOT NULL;
	ALTER TABLE funcionario ADD COLUMN cpf VARCHAR NOT NULL;
	ALTER TABLE funcionario ADD COLUMN valor_hora decimal(19,2) DEFAULT NULL;
	ALTER TABLE funcionario ADD COLUMN qtd_horas_trabalho_dia float DEFAULT NULL;
	ALTER TABLE funcionario ADD COLUMN qtd_horas_almoco float DEFAULT NULL;
	ALTER TABLE funcionario ADD COLUMN perfil VARCHAR(255) DEFAULT NULL;
	ALTER TABLE funcionario ADD COLUMN data_cadastro TIMESTAMP(4) WITHOUT TIME ZONE;
	ALTER TABLE funcionario ADD COLUMN data_atualizacao TIMESTAMP(4) WITHOUT TIME ZONE;
	ALTER TABLE funcionario ADD COLUMN id_empresa BIGINT NOT NULL;
	
	ALTER TABLE funcionario ADD CONSTRAINT funcionario_0_fk FOREIGN KEY (id_empresa) REFERENCES empresa ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
	
	private Long id;
	private Date data;
	private String descricao;
	private String localizacao;
	private Date dataCadastro;
	private Date dataAtualizacao;
	private TipoEnum tipo;
	private Funcionario funcionario;
	
	CREATE TABLE lancamento () WITHOUT OIDS;
	ALTER TABLE lancamento ADD COLUMN id BIGSERIAL NOT NULL PRIMARY KEY;
	ALTER TABLE lancamento ADD COLUMN data TIMESTAMP(4) WITHOUT TIME ZONE;
	ALTER TABLE lancamento ADD COLUMN descricao VARCHAR NOT NULL;
	ALTER TABLE lancamento ADD COLUMN localizacao VARCHAR NOT NULL;
	ALTER TABLE lancamento ADD COLUMN data_cadastro TIMESTAMP(4) WITHOUT TIME ZONE;
	ALTER TABLE lancamento ADD COLUMN data_atualizacao TIMESTAMP(4) WITHOUT TIME ZONE;
	ALTER TABLE lancamento ADD COLUMN tipo VARCHAR(255) DEFAULT NULL;
	ALTER TABLE lancamento ADD COLUMN id_funcionario BIGINT NOT NULL;
	
	ALTER TABLE lancamento ADD CONSTRAINT lancamento_0_fk FOREIGN KEY (id_funcionario) REFERENCES funcionario ON DELETE NO ACTION ON UPDATE NO ACTION NOT DEFERRABLE;
	