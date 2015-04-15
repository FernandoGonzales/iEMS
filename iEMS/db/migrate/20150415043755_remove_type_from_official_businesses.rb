class RemoveTypeFromOfficialBusinesses < ActiveRecord::Migration
  def change
    remove_column :official_businesses, :type, :string
  end
end
