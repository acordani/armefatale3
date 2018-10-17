class CreateCitysearches < ActiveRecord::Migration[5.2]
  def change
    create_table :citysearches do |t|
      t.string :name

      t.timestamps
    end
  end
end
