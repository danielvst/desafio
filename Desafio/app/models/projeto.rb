class Projeto < ApplicationRecord
    has_many :atividades, dependent: :destroy
    
    validates :nome, presence: true, length: { minimum: 1 }
    validates :datainicio, presence: true
    validates :datafim, presence: true
end
