class Turma < ApplicationRecord
  has_many :disciplinas, dependent: :destroy
end
