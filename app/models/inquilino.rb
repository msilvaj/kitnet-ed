class Inquilino < ApplicationRecord
  has_many :pagamentos
  has_many :mensalidades
  validates :nome, presence: true


end
