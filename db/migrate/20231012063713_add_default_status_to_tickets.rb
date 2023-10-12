class AddDefaultStatusToTickets < ActiveRecord::Migration[6.1]
  def change
    change_column :tickets, :status, :string, default: "New"
  end
end
