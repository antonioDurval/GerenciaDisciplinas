class Disciplina < ApplicationRecord
  belongs_to :turma
  has_many :atividades, dependent: :destroy
end
