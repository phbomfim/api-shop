class Record < ApplicationRecord
    belongs_to :order, optional: true
    belongs_to :product, optional: true
end

## Não preciso criar nada na tabela order
## Na criação da record, devo realizar um find_or_crete para a order
## Devo sempre selecionar a Order.last (verificar se funciona para tabela order vazia)
## Cada linha de Records será para 1 produto (Record x Produto)
## Na tabela order, caso a order ja exista, devo acrescentar aquele produto naquela order e atualizar o total_price da order
## Lembrando que meu record tem um valor total feito pela Product.price * this.amount
## E este valor deve ser acrescentado ao valor total_price da Order