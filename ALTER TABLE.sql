-- Chaves estrangeiras para garantir a integridade referencial 
ALTER TABLE enderecos 
ADD CONSTRAINT fk_enderecos_cliente_id FOREIGN KEY (cliente_id) REFERENCES usuarios(id);

ALTER TABLE produtos
ADD CONSTRAINT fk_produtos_cliente_id FOREIGN KEY (categoria_id) REFERENCES categorias(id);

ALTER TABLE pedidosADD CONSTRAINT fk_pedidos_clientes_id FOREING KEY (cliente_id) REFERENCES usuarios

ALTER TABLE itens_pedido
ADD CONSTRAINT fk_itens_pedidos_pedido_id FOREIGN KEY (pedido_id) REFERENCES pedidos(id);

ALTER TABLE itens_pedido
ADD CONSTRAINT fk_itens_pedidos_produto_id FOREIGN KEY (produto_id) REFERENCES produtos(id);
