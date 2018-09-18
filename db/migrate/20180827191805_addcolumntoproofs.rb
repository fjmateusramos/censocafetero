class Addcolumntoproofs < ActiveRecord::Migration[5.2]
  def change
  	add_column :proofs, :departamento, :string
  	add_column :proofs, :municipio, :string
  	remove_column :proofs, :name
  	
  end

end
