USE hotel_db;

RENAME TABLE reserva TO hospedagem;

ALTER TABLE quarto
RENAME COLUMN status TO situacao;

ALTER TABLE hospede
MODIFY COLUMN email VARCHAR (100) NOT NULL;

ALTER TABLE hospede
ADD COLUMN nacionalide_hospede VARCHAR (50) NULL;
