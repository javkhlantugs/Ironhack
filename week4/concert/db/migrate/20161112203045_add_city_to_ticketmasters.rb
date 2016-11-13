class AddCityToTicketmasters < ActiveRecord::Migration[5.0]
  def change
    add_column :ticketmasters, :city, :string
  end
end
