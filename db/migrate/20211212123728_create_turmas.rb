class CreateTurmas < ActiveRecord::Migration[6.1]
  def change
    create_table :turmas do |t|
      t.string :letra
      t.integer :ano
      t.integer :ano_letivo

      t.timestamps
    end
  end
end
