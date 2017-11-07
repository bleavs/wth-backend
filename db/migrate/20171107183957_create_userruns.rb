class CreateUserruns < ActiveRecord::Migration[5.1]
  def change
    create_table :userruns do |t|
      t.references :user, foreign_key: true
      t.references :run, foreign_key: true
      t.boolean :leader

      t.timestamps
    end
  end
end
