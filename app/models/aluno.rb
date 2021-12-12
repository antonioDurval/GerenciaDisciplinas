class Aluno < ApplicationRecord
  belongs_to :turma
  has_many :avaliacaos

  validates :nome, presence: true, length: {in: 5..30}
end
