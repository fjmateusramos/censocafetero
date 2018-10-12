class AddToColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :encuesta, :p1_11_otra, :string
  end
end
