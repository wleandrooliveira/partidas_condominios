class CreateParticipantes < ActiveRecord::Migration[5.1]
  def change
    create_table :participantes do |t|
      t.references :user, foreign_key: true
      t.references :partida, foreign_key: true

      t.timestamps
    end
  end
end
