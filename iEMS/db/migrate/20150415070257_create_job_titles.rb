class CreateJobTitles < ActiveRecord::Migration
  def change
    create_table :job_titles do |t|
      t.string :title
      t.datetime :date_created
      t.text :description
      t.references :jobLevel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
