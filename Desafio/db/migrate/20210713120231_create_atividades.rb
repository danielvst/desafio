class CreateAtividades < ActiveRecord::Migration[6.1]
  def change
    create_table :atividades do |t|
      t.string :nome
      t.date :datainicio
      t.date :datafim
      t.boolean :finalizada
      t.references :projeto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
