class Avaliacao < ApplicationRecord
  belongs_to :aluno, dependent: :destroy
end
