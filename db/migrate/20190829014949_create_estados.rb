class CreateEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :estados do |t|
      t.integer :id_estado
      t.text :tipo

      t.timestamps
    end
  end
end
