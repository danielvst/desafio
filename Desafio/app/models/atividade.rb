class Atividade < ApplicationRecord
  belongs_to :projeto

  validates :nome, presence: true, length: { minimum: 1 }
  validates :datainicio, presence: true
  validates :datafim, presence: true
end
