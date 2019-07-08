class CreateWhatsapps < ActiveRecord::Migration[5.2]
  def change
    create_table :whatsapps do |t|
      t.references :inquilino, foreign_key: true
      t.string :numero
      t.string :endereco

      t.timestamps
    end
  end
end
