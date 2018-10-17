class AddEncuestadortoEncuestum < ActiveRecord::Migration[5.2]
  def change
  	add_column :encuesta, :encuestador, :string
  	add_column :encuesta, :coordinador, :string
  	add_column :encuesta, :supervisor, :string
  end
end
