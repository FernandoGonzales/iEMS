class RemoveStatusFromOfficialBusinesses < ActiveRecord::Migration
  def change
    remove_column :official_businesses, :status, :string
  end
end
