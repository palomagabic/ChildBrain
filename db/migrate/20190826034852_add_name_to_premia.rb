class AddNameToPremia < ActiveRecord::Migration[5.2]
  def change
    add_column :premia, :name, :string
  end
end
