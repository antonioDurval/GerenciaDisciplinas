class Avaliacao < ApplicationRecord
  belongs_to :aluno, dependent: :destroy
  belongs_to :atividade, dependent: :destroy
end
