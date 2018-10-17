class CreateLands < ActiveRecord::Migration[5.2]
  def change
    create_table :lands do |t|
      t.string :number
      t.integer :surface
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :file
      t.references :city, foreign_key: true
      t.references :citysearch, foreign_key: true

      t.timestamps
    end
  end
end
