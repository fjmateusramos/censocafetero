class AddToDeletecolumns < ActiveRecord::Migration[5.2]
  def change
  	remove_column :encuesta, :p1_12b1_4, :string
  	remove_column :encuesta, :p1_12b2_4, :string
  	remove_column :encuesta, :p1_12b3_4, :string
  end
end
