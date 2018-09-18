class AddcolumntoencuestaCambio2 < ActiveRecord::Migration[5.2]
  def change

  	remove_column :encuesta, :p1_12b1_1, :string
  	remove_column :encuesta, :p1_12b2_1, :string
  	remove_column :encuesta, :p1_12b3_1, :string
  	remove_column :encuesta, :p1_12b4_1, :string
  	remove_column :encuesta, :p1_12b5_1, :string
  	remove_column :encuesta, :p1_12b6_1, :string
  	remove_column :encuesta, :p1_12b7_1, :string

  	add_column :encuesta, :p1_12b1_1, :string
  	add_column :encuesta, :p1_12b1_2, :string
  	add_column :encuesta, :p1_12b1_3, :string
  	add_column :encuesta, :p1_12b1_4, :string
  	add_column :encuesta, :p1_12b1_5, :string
  	add_column :encuesta, :p1_12b1_6, :string
  	add_column :encuesta, :p1_12b1_7, :string
  	add_column :encuesta, :p1_12b2_1, :string
  	add_column :encuesta, :p1_12b2_2, :string
  	add_column :encuesta, :p1_12b2_3, :string
  	add_column :encuesta, :p1_12b2_4, :string
  	add_column :encuesta, :p1_12b2_5, :string
  	add_column :encuesta, :p1_12b2_6, :string
  	add_column :encuesta, :p1_12b2_7, :string
  	add_column :encuesta, :p1_12b3_1, :string
  	add_column :encuesta, :p1_12b3_2, :string
  	add_column :encuesta, :p1_12b3_3, :string
  	add_column :encuesta, :p1_12b3_4, :string
  	add_column :encuesta, :p1_12b3_5, :string
  	add_column :encuesta, :p1_12b3_6, :string
  	add_column :encuesta, :p1_12b3_7, :string
  end
end
