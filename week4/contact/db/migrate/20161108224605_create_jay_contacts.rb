class CreateJayContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :jay_contacts do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    	end
  end
end
