class AddOtroToTabla3 < ActiveRecord::Migration[5.2]
  def change
  	add_column :encuesta, :p9_17a_13_otra, :string
  	add_column :encuesta, :p9_17b_13_otra, :string
  	add_column :encuesta, :p9_17c_13_otra, :string
  end
end
