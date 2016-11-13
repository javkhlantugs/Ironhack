class AddDescriptionToTicketmasters < ActiveRecord::Migration[5.0]
  def change
    add_column :ticketmasters, :description, :string
  end
end
