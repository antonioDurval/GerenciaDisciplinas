class Aluno < ApplicationRecord
  belongs_to :turma
  has_many :avaliacaos
end
