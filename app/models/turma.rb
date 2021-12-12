class Turma < ApplicationRecord
  has_many :disciplinas, dependent: :destroy
  has_many :alunos, dependent: :destroy
end
