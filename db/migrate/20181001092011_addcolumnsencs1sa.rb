class Addcolumnsencs1sa < ActiveRecord::Migration[5.2]
  def change
  	add_column :encuesta1s, :p12_b_12_b, :string
  	add_column :encuesta1s, :p12_b_12_c, :string
  	add_column :encuesta1s, :p12_b_12_d, :string
  end
end
