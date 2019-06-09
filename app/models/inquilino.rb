class Inquilino < ApplicationRecord
  validates :nome, :rg, :telefone, :ap, :codigoEletrobras,
   :dataInicio, :dataFim, :dataVencimento, presence: true

   validates :cpf, presence: true, length: { maximum: 11 }
end
