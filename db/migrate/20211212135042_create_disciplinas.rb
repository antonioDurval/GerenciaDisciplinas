class CreateDisciplinas < ActiveRecord::Migration[6.1]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :ano_letivo

      t.timestamps
    end
  end
end
