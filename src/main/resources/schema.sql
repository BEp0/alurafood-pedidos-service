DROP TABLE IF EXISTS pedido;
DROP TABLE IF EXISTS item_do_pedido;

CREATE TABLE IF NOT EXISTS pedido(
    id BIGSERIAL PRIMARY KEY,
    data_hora TIMESTAMP NOT NULL,
    status VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS item_do_pedido(
    id BIGSERIAL PRIMARY KEY,
    descricao VARCHAR(255) DEFAULT NULL,
    quantidade INT NOT NULL,
    pedido_id BIGINT NOT NULL,

    CHECK(quantidade > 0)
);

INSERT INTO pedido(data_hora, status)
    VALUES (current_timestamp, 'REALIZADO');

INSERT INTO item_do_pedido(quantidade, pedido_id)
    VALUES (12, 1);
INSERT INTO item_do_pedido(descricao, quantidade, pedido_id)
    VALUES ('Descrição', 5, 1);