class CreateRuns < ActiveRecord::Migration[5.1]
  def change
    create_table :runs do |t|
      t.string :name
      t.string :description
      t.string :distance
      t.string :expected_pace
      t.string :start_time
      t.string :expected_end_time
      t.string :date
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
