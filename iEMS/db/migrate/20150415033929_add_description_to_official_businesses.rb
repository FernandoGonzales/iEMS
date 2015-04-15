class AddDescriptionToOfficialBusinesses < ActiveRecord::Migration
  def change
    add_column :official_businesses, :description, :text
  end
end
