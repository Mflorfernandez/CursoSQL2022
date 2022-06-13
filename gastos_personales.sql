-- Todos los delete
DROP TABLE IF EXISTS transacciones;
DROP TABLE IF EXISTS subcategoria;
DROP TABLE IF EXISTS categoria;
DROP TABLE IF EXISTS cuentas;
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS tipodemoneda;

-- Todos los create
CREATE TABLE usuario (
          id  INT AUTO_INCREMENT,
          firstname VARCHAR(60) NOT NULL,
          lastname VARCHAR(60) NOT NULL,
          user VARCHAR(60) NOT NULL,
          password VARCHAR(60) NOT NULL,
          email VARCHAR (60) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE categoria (
          id  INT AUTO_INCREMENT,
          name VARCHAR(60) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE subcategoria (
          id INT AUTO_INCREMENT ,
          id_category INT NOT NULL,
          name VARCHAR(60) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE cuentas (
          id INT AUTO_INCREMENT,
          id_currency INT NOT NULL,
          id_user INT NOT NULL,
          name VARCHAR(60) NOT NULL,
          description VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE tipodemoneda (
          id INT AUTO_INCREMENT,
          name VARCHAR(60) NOT NULL,
          short_name VARCHAR(3) NOT NULL,
          description VARCHAR (100) NOT NULL, 
    PRIMARY KEY (id)
);

CREATE TABLE transacciones (
          id INT AUTO_INCREMENT,
          date DATETIME NOT NULL,
          id_user INT NOT NULL,
          id_category INT NOT NULL,
          id_subcategory INT,
          id_account INT NOT NULL,
          detail VARCHAR (100) NOT NULL,
          amount DECIMAL NOT NULL,
    PRIMARY KEY (id)
);


-- Todos los FK
ALTER TABLE subcategoria 
    ADD CONSTRAINT fk_subcategoria_categoria 
    FOREIGN KEY (id_category) REFERENCES categoria(id);

ALTER TABLE cuentas 
    ADD CONSTRAINT fk_tipodemoneda_cuentas 
    FOREIGN KEY (id_currency) REFERENCES tipodemoneda (id);


ALTER TABLE cuentas 
    ADD CONSTRAINT fk_usuario_cuentas 
    FOREIGN KEY (id_user) REFERENCES usuario (id);

ALTER TABLE transacciones 
    ADD CONSTRAINT fk_usuario_transacciones 
    FOREIGN KEY (id_user) REFERENCES usuario (id);

ALTER TABLE transacciones 
    ADD CONSTRAINT fk_categoria_transacciones 
    FOREIGN KEY (id_category) REFERENCES categoria (id);

ALTER TABLE transacciones 
    ADD CONSTRAINT fk_subcategoria_transacciones 
    FOREIGN KEY (id_subcategory) REFERENCES subcategoria (id);

ALTER TABLE transacciones 
    ADD CONSTRAINT fk_cuentas_transacciones
    FOREIGN KEY (id_account) REFERENCES cuentas (id);


