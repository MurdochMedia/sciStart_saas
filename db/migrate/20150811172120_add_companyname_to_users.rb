class AddCompanynameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Company_Name, :string
  end
end
