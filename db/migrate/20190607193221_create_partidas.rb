class CreatePartidas < ActiveRecord::Migration[5.1]
  def change
    create_table :partidas do |t|
      t.string :title
      t.string :description
      t.string :local
      t.datetime :data_partida

      t.timestamps
    end
  end
end
