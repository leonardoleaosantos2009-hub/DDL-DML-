-- Define qual banco de dados será maniulado
USE clinica_medica_db;

-- Deleta a tabela de convênio que não está sendo útil.
DROP TABLE IF EXISTS convenio;

-- Crie uma nova coluna na tabela de paciente.
ALTER TABLE paciente
ADD COLUMN convenio VARCHAR (80) NULL;

-- Remove uma coluna da tabela de agendamento.
ALTER TABLE agendamento
DROP COLUMN observacoes;

-- Modifica o tipo de dado da coluna de valor do agendamento.
ALTER TABLE agendamento
MODIFY COLUMN valor DECIMAL (10,2) NOT NULL;

-- Renomeia uma coluna da tabela de agendamento
ALTER TABLE agendamento
RENAME COLUMN sala TO consultorio;

-- Renomeia a tabela de agendamento para consulta
RENAME TABLE agendamento TO consulta;
