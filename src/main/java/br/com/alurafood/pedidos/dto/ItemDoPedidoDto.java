package br.com.alurafood.pedidos.dto;

import lombok.Data;

@Data
public class ItemDoPedidoDto {
    private Long id;
    private Integer quantidade;
    private String descricao;
}
