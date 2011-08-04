class CreateSalaries < ActiveRecord::Migration
  def self.up
    create_table :salaries do |t|
      t.refereces :employee
      t.integer :salary
      t.date :from_date
      t.date :to_date
      t.timestamps
    end
  end

  def self.down
    drop_table :salaries
  end
end
