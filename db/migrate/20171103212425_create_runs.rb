class CreateRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :runs do |t|
      t.string :name

      t.string :description
      t.string :distance
      t.string :expected_pace

      t.datetime :run_day
      
      t.time :expected_end_time


      t.string :lat
      t.string :lng

      t.string :dist_from_location

      t.timestamps
    end
  end
end
