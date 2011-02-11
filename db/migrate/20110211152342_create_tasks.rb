class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.integer :days_total
      t.integer :days_complete

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
