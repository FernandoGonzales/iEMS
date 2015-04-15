class AddTypeToOfficialBusinesses < ActiveRecord::Migration
  def change
    add_column :official_businesses, :type, :string
  end
end
