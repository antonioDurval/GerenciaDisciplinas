class Atividade < ApplicationRecord
  belongs_to :disciplina
  has_many :avaliacaos

  validates :titulo, presence: true, length: {in: 5..20}
  validates :bimestre, length: { is: 1 }
  validates :data, presence: true
  validate :verifica_data

  def verifica_data
    if data.present? && data < Time.zone.today
      errors.add(:data, "nao pode ser no passado")
    end
  end
end
