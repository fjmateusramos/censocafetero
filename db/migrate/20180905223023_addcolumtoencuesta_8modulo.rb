class Addcolumtoencuesta8modulo < ActiveRecord::Migration[5.2]
  def change

	add_column :encuesta, :p8_1a, :string
	add_column :encuesta, :p8_1b, :string
  	add_column :encuesta, :p8_2a, :string
	add_column :encuesta, :p8_2b, :string
  	add_column :encuesta, :p8_3a, :string
	add_column :encuesta, :p8_3b, :string
  	add_column :encuesta, :p8_4a, :string
	add_column :encuesta, :p8_4b, :string
  	add_column :encuesta, :p8_5a, :string
	add_column :encuesta, :p8_5b, :string
  	add_column :encuesta, :p8_6, :string
  	add_column :encuesta, :p8_7a, :string
	add_column :encuesta, :p8_7b, :string
  	add_column :encuesta, :p8_8a, :string
	add_column :encuesta, :p8_8b, :string
  	add_column :encuesta, :p8_9a_1, :string
	add_column :encuesta, :p8_9a_2, :string
	add_column :encuesta, :p8_9b_1, :string
	add_column :encuesta, :p8_9b_2, :string
	add_column :encuesta, :p8_9c_1, :string
	add_column :encuesta, :p8_9c_2, :string
	add_column :encuesta, :p8_9d_1, :string
	add_column :encuesta, :p8_9d_2, :string
	add_column :encuesta, :p8_10a, :string
	add_column :encuesta, :p8_10b, :string
	add_column :encuesta, :p8_11a, :string
	add_column :encuesta, :p8_11b, :string
	add_column :encuesta, :p8_12a, :string
	add_column :encuesta, :p8_12b, :string
	add_column :encuesta, :p8_13a, :string
	add_column :encuesta, :p8_13b, :string

  end
end
