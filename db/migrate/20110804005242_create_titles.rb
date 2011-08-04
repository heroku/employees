class CreateTitles < ActiveRecord::Migration
  def self.up
    create_table :titles do |t|
      t.references :employee
      t.date :from_date
      t.date :to_date
      t.timestamps
    end
  end

  def self.down
    drop_table :titles
  end
end
