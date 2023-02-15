# alurafood-pedidos-service

Microsserviço de pedidos

--- 

## Chamadas implementadas:

`GET localhost:8083/pedidos-ms/pedidos`

`GET localhost:8083/pedidos-ms/pedidos/1`

`POST localhost:8083/pedidos-ms/pedidos`
- Cria um pedido
- Exemplo de body:

```JSON
{
    "id": 3,
    "dataHora": "2023-02-14T18:06:43.714161",
    "status": "REALIZADO",
    "itens": [
        {
            "id": 1,
            "quantidade": 12,
            "descricao": "Teste"
        }
    ]
}
```

`PUT localhost:8083/pedidos-ms/pedidos/1/status`
- Altera o status do pedido para qualquer outro cadastrado
- Exemplo de body:

```JSON
{
    "status": "REALIZADO"
}
```

`PUT localhost:8083/pedidos-ms/pedidos/1/pago`
- Altera o status do pedido para pago
- É o endpoint chamado no pagamento para alterar o status
