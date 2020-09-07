class RenameTypeColumnToMotorcycles < ActiveRecord::Migration[6.0]
  def change
    rename_column :motorcycles, :type, :car_type
  end
end
