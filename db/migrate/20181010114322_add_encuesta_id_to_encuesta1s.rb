class AddEncuestaIdToEncuesta1s < ActiveRecord::Migration[5.2]
  def change
    add_reference :encuesta1s, :encuesta, foreign_key: true
  end
end
