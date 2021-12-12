class CreateAvaliacaos < ActiveRecord::Migration[6.1]
  def change
    create_table :avaliacaos do |t|
      t.float :pontos
      t.string :observacoes
      t.references :aluno, null: false, foreign_key: true,  on_delete: :cascade
      t.references :atividade, null: false, foreign_key: true,  on_delete: :cascade

      t.timestamps
    end
  end
end
