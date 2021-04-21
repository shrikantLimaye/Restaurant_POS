class AddFnameLnameToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :fname, :string
    add_column :orders, :lname, :string
  end
end
