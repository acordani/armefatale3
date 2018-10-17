class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :mail
      t.string :type
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
