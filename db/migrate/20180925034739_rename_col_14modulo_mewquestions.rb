class RenameCol14moduloMewquestions < ActiveRecord::Migration[5.2]
  def change

  	rename_column :encuesta1s, :p14_7a, :p14_7
  	rename_column :encuesta1s, :p14_9, :p14_9a
  	add_column :encuesta1s, :p14_9b, :string
  	add_column :encuesta1s, :p14_15b, :string
  	rename_column :encuesta1s, :p14_39a, :p14_42a
  	rename_column :encuesta1s, :p14_40a, :p14_43a
  	add_column :encuesta1s, :p14_44a, :string
  	add_column :encuesta1s, :p14_47, :string
  	add_column :encuesta1s, :p14_48, :string
  	rename_column :encuesta1s, :p14_47a, :p14_51a
  	rename_column :encuesta1s, :p14_47b, :p14_51b
  	rename_column :encuesta1s, :p14_47c, :p14_51c
  	rename_column :encuesta1s, :p14_47d, :p14_51d
  	rename_column :encuesta1s, :p14_47e, :p14_51e
  	rename_column :encuesta1s, :p14_47f, :p14_51f
  	rename_column :encuesta1s, :p14_48a, :p14_52a
  	rename_column :encuesta1s, :p14_48b, :p14_52b
  	rename_column :encuesta1s, :p14_48c, :p14_52c
  	rename_column :encuesta1s, :p14_48d, :p14_52d
  	rename_column :encuesta1s, :p14_55_1, :p14_55
  	rename_column :encuesta1s, :p14_51, :p14_59a
  	rename_column :encuesta1s, :p14_73_1, :p14_73
  	rename_column :encuesta1s, :p14_73_2, :p14_74
  	rename_column :encuesta1s, :p14_52, :p14_75
  	rename_column :encuesta1s, :p14_52_2, :p14_76
  	add_column :encuesta1s, :p14_77a, :string
  	add_column :encuesta1s, :p14_77b, :string
  	rename_column :encuesta1s, :p14_74_a, :p14_78a
  	rename_column :encuesta1s, :p14_74_b, :p14_78b
  	rename_column :encuesta1s, :p14_74_c, :p14_78c
  	rename_column :encuesta1s, :p14_74_d, :p14_78d
  	rename_column :encuesta1s, :p14_74_e, :p14_78e
  	rename_column :encuesta1s, :p14_74_f, :p14_78f
  	rename_column :encuesta1s, :p14_74_g, :p14_78g



  end
end
