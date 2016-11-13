class AddPriceToTicketmasters < ActiveRecord::Migration[5.0]
  def change
    add_column :ticketmasters, :price, :integer
  end
end
