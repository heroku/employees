class Title < ActiveRecord::Base
  attr_accessible :employee, :from_date, :to_date
  
  belongs_to :employee, :order => "from_date ASC" 
end
