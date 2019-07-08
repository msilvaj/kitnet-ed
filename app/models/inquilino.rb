class Inquilino < ApplicationRecord
  has_many :pagamentos
  has_many :mensalidades
  has_one :whatsapp
  validates :nome, presence: true


end
