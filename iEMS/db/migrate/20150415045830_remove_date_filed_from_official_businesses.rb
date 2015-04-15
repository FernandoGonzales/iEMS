class RemoveDateFiledFromOfficialBusinesses < ActiveRecord::Migration
  def change
    remove_column :official_businesses, :dateFiled, :string
  end
end
