class CreateLearnTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :learn_times do |t|
      t.integer :user_id
      t.string :language
      t.integer :learn_time
      t.datetime :start_time

      t.timestamps
    end
  end
end
