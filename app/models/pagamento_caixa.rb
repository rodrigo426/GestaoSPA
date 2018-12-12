class PagamentoCaixa < ApplicationRecord
  belongs_to :pagamento
  belongs_to :cashier
end
