class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :request_type
      t.string :status
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
