class Addcodetoencueta < ActiveRecord::Migration[5.2]
  def change

  	add_column :encuesta, :codigo, :string
  	
  end
end
