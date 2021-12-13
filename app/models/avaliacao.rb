class Avaliacao < ApplicationRecord
  belongs_to :aluno
  belongs_to :atividade

  validates :pontos,presence: true, :inclusion => 0..10
end
