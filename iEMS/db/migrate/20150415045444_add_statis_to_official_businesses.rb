class AddStatisToOfficialBusinesses < ActiveRecord::Migration
  def change
    add_column :official_businesses, :status, :string
  end
end
