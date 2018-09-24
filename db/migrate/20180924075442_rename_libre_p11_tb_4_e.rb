class RenameLibreP11Tb4E < ActiveRecord::Migration[5.2]
  def change

  	rename_column :encuesta, :libre_2, :p11_tb_4_e
  end
end
