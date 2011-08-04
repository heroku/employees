require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Employee.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Employee.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Employee.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to employee_url(assigns(:employee))
  end

  def test_edit
    get :edit, :id => Employee.first
    assert_template 'edit'
  end

  def test_update_invalid
    Employee.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Employee.first
    assert_template 'edit'
  end

  def test_update_valid
    Employee.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Employee.first
    assert_redirected_to employee_url(assigns(:employee))
  end

  def test_destroy
    employee = Employee.first
    delete :destroy, :id => employee
    assert_redirected_to employees_url
    assert !Employee.exists?(employee.id)
  end
end
