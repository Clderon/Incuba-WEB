class CreateParticipacionEventos < ActiveRecord::Migration[7.1]
  def change
    create_table :participacion_eventos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.references :equipo, foreign_key: { to_table: :teams } # referencia a la tabla teams
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
