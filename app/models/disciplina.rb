class Disciplina < ApplicationRecord
  belongs_to :turma
  has_many :atividades, dependent: :destroy

  validates :nome, presence: true, length: {in: 4..30}
  validates :ano_letivo, presence: true, length: { minimum: 4}
end
