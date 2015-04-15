class RemoveColumnsFromOfficialBusinesses < ActiveRecord::Migration
  def change
    remove_column :official_businesses, :dateStart, :string
    remove_column :official_businesses, :dateEnd, :string
    remove_column :official_businesses, :timeDeparture, :string
    remove_column :official_businesses, :timeArrival, :string
  end
end
