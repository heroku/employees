class Salary < ActiveRecord::Base
  attr_accessible :employee, :salary, :from_date, :to_date

  belongs_to :employee
end
