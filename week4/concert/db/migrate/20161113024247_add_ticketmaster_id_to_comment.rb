class AddTicketmasterIdToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :ticketmaster_id, :integer
  end
end
