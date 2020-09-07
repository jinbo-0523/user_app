class CreateMotorcycles < ActiveRecord::Migration[6.0]
  def change
    create_table :motorcycles do |t|
      t.string :name ,null: false
      t.integer :displacement, null: false
      t.string :type, null: false
      t.text :content

      t.timestamps
    end
  end
end
