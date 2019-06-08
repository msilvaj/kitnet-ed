class CreateInquilinos < ActiveRecord::Migration[5.2]
  def change
    create_table :inquilinos do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :telefone
      t.string :ap
      t.string :codigoEletrobras
      t.date :dataInicio
      t.date :dataFim
      t.date :dataVencimento
      t.boolean :pago

      t.timestamps
    end
  end
end
