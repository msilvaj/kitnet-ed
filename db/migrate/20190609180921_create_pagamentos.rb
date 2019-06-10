class CreatePagamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :pagamentos do |t|
      t.string :mes
      t.boolean :pago
      t.references :inquilino, foreign_key: true

      t.timestamps
    end
  end
end
