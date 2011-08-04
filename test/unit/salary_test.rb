require 'test_helper'

class SalaryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Salary.new.valid?
  end
end
