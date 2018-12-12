class AddPagamentoCaixaToCashier < ActiveRecord::Migration[5.2]
  def change
    add_reference :cashiers, :pagamento_caixa, foreign_key: true
  end
end
