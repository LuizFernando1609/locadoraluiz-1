class CreateLocadoras < ActiveRecord::Migration[7.0]
  def change
    create_table :locadoras do |t|
      t.string :nome
      t.integer :contato
      t.string :endereco
      t.date :data_de_locacao
      t.date :data_de_devolucao
      t.float :valor_total

      t.timestamps
    end
  end
end
