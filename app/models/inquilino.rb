class Inquilino < ApplicationRecord
  has_many :pagamentos
  validates :nome, presence: true

   
end
