class AddRequestTypeToOfficialBusinesses < ActiveRecord::Migration
  def change
    add_column :official_businesses, :requestType, :string
  end
end
