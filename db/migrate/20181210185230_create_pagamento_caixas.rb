class CreatePagamentoCaixas < ActiveRecord::Migration[5.2]
  def change
    create_table :pagamento_caixas do |t|
      t.references :pagamento, foreign_key: true
      t.references :cashier, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
