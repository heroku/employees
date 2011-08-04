class Employee < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :gender, :hire_date
  
  has_many :salaries, :order => "from_date ASC" 
  has_many :titles, :order => "from_date ASC" 
end
