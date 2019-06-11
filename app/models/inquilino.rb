class Inquilino < ApplicationRecord
  has_many :pagamentos
  validates :nome, :rg, :telefone, :ap, :codigoEletrobras,
   :dataInicio, :dataFim, :dataVencimento, presence: true

   validates :cpf, presence: true, length: { maximum: 14 }
end
