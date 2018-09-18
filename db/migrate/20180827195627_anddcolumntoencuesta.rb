class Anddcolumntoencuesta < ActiveRecord::Migration[5.2]
  def change
  	add_column :encuesta, :p1_1, :string
  	add_column :encuesta, :p1_2, :string
  	add_column :encuesta, :p1_3, :string
  	add_column :encuesta, :p1_4, :string
  	add_column :encuesta, :p1_5, :string
  	add_column :encuesta, :p1_6, :string
  	add_column :encuesta, :p1_7, :string
  	add_column :encuesta, :p1_8, :string
  	add_column :encuesta, :p1_9a, :string
  	add_column :encuesta, :p1_9b, :string
  	add_column :encuesta, :p1_10, :string
  	add_column :encuesta, :p1_11, :string
  	add_column :encuesta, :p1_12a, :string
  	add_column :encuesta, :p1_12b1_1, :string
  	add_column :encuesta, :p1_12b2_1, :string
  	add_column :encuesta, :p1_12b3_1, :string
  	add_column :encuesta, :p1_12b4_1, :string
  	add_column :encuesta, :p1_12b5_1, :string
  	add_column :encuesta, :p1_12b6_1, :string
  	add_column :encuesta, :p1_12b7_1, :string

  end
end
