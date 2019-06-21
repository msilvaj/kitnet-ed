class CreateMensalidades < ActiveRecord::Migration[5.2]
  def change
    create_table :mensalidades do |t|
      t.references :inquilino, foreign_key: true
      t.date :mes
      t.boolean :pago

      t.timestamps
    end
  end
end
