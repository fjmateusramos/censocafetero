class CreateEncuesta1s < ActiveRecord::Migration[5.2]
  def change
    create_table :encuesta1s do |t|
      t.string :encuesta

      t.timestamps
    end
  end
end
