class Disciplina < ApplicationRecord
  belongs_to :turma
  has_many :atividades, dependent: :destroy

  validates :nome, presence: true, length: {in: 4..30}
  validates :ano_letivo, presence: true, length: { minimum: 4}
  validate :verifica_ano

  def verifica_ano
    if ano_letivo < 2020
      errors.add(:ano_letivo, "a partir de 2020")
    end
  end
end
