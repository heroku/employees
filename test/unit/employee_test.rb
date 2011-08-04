require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Employee.new.valid?
  end
end
