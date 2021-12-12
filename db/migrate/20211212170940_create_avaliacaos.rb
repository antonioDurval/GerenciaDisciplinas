class CreateAvaliacaos < ActiveRecord::Migration[6.1]
  def change
    create_table :avaliacaos do |t|
      t.float :pontos
      t.string :observacoes

      t.timestamps
    end
  end
end
