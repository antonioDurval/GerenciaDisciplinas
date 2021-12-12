class CreateAlunos < ActiveRecord::Migration[6.1]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.references :turma, null: false, foreign_key: true,  on_delete: :cascade

      t.timestamps
    end
  end
end
