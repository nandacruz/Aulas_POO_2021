
/*Tabela Usuarios*/
/*DROP TABLE users;*/
CREATE TABLE users(
    id BIGINT not null primary key
    GENERATED ALWAYS AS IDENTITY
    (START WITH 1, INCREMENT BY 1)
    , role VARCHAR(200) NOT NULL
    , name VARCHAR(200) NOT NULL
    , login VARCHAR(20) NOT NULL
    , passwordHash BIGINT NOT NULL

);

INSERT INTO users VALUES
(default, 'ADMIN','Administrador','admin',1509442);

INSERT INTO users VALUES
(default, 'OPERADOR','Fulano da Silva', 'fulano',1509442);


/*Tabela preços*/
/*DROP TABLE prices;*/
CREATE TABLE prices(

    id BIGINT NOT NULL PRIMARY KEY
    GENERATED ALWAYS AS IDENTITY
    (START WITH 1, INCREMENT BY 1)
    , timestamp TIMESTAMP NOT NULL
    , new_price DOUBLE PRECISION NOT NULL

);


/*Tabela periodos*/
/*DROP TABLE parking_periods;*/
CREATE TABLE parking_periods(
    id BIGINT NOT NULL PRIMARY KEY
    GENERATED ALWAYS AS IDENTITY
    (START WITH 1, INCREMENT BY 1)
    , model VARCHAR(50) NOT NUL
    , plate VARCHAR(7) NOT NULL
    , begin_period TIMESTAMP NOT NULL
    , end_period TIMESTAMP
    price DOUBLE PRECISION
);


