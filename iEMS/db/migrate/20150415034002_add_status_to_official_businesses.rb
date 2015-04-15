class AddStatusToOfficialBusinesses < ActiveRecord::Migration
  def change
  	change_column :official_businesses, :status, :string
  end
end
