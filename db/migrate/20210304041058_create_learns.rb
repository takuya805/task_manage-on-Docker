class CreateLearns < ActiveRecord::Migration[5.2]
  def change
    create_table :learns do |t|
      t.integer :user_id, null: false
      t.integer :learn_time, null: false
      t.string :language, null: false
      t.string :content, null: false
      t.string :site
      t.datetime :start_time

      t.timestamps
    end
  end
end
