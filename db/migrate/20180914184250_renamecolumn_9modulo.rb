class Renamecolumn9modulo < ActiveRecord::Migration[5.2]
  def change


  	rename_column :encuesta, :p9_8_1_1, :p9_8_1
  	rename_column :encuesta, :p9_8_1_2, :p9_8_2
  	rename_column :encuesta, :p9_8_1_3, :p9_8_3
  	rename_column :encuesta, :p9_8_1_4, :p9_8_4
  	rename_column :encuesta, :p9_8_1_5, :p9_8_5
  	rename_column :encuesta, :p9_8_2_1, :p9_8_6
  	rename_column :encuesta, :p9_8_2_2, :p9_8_7
  	rename_column :encuesta, :p9_8_2_3, :p9_8_8
  	rename_column :encuesta, :p9_8_2_4, :p9_8_9
  	rename_column :encuesta, :p9_8_2_5, :p9_8_10




  end
end
