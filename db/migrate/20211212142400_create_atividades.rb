class CreateAtividades < ActiveRecord::Migration[6.1]
  def change
    create_table :atividades do |t|
      t.string :titulo
      t.string :descricao
      t.integer :bimestre
      t.date :data
      t.references :disciplina, null: false, foreign_key: true,  on_delete: :cascade

      t.timestamps
    end
  end
end
