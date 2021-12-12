class Turma < ApplicationRecord
  has_many :disciplinas, dependent: :destroy
  has_many :alunos, dependent: :destroy

  validates :letra, length: { is: 1 }
  validates :ano, presence: true, length: { maximum: 2}
  validates :ano_letivo, presence: true, length: { minimum: 4}
end
