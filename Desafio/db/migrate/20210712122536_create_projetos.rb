class CreateProjetos < ActiveRecord::Migration[6.1]
  def change
    create_table :projetos do |t|
      t.string :nome
      t.date :datainicio
      t.date :datafim

      t.timestamps
    end
  end
end
