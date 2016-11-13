class CreateTicketmasters < ActiveRecord::Migration[5.0]
  def change
    create_table :ticketmasters do |t|
    	t.text :artist
    	t.text :venue
    	t.datetime :datetime
    	
      t.timestamps
    end
  end
end
