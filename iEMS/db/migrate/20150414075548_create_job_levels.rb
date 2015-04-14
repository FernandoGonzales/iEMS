class CreateJobLevels < ActiveRecord::Migration
  def change
    create_table :job_levels do |t|
      t.string :rank
      t.string :level
      t.string :grade

      t.timestamps null: false
    end
  end
end
