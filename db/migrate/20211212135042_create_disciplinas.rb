class CreateDisciplinas < ActiveRecord::Migration[6.1]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :ano_letivo
      t.references :turma, null: false, foreign_key: true,  on_delete: :cascade

      t.timestamps
    end
  end
end
