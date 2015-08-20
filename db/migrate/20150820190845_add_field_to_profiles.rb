class AddFieldToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :field, :string
  end
end
