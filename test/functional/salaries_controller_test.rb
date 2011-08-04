require 'test_helper'

class SalariesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Salary.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Salary.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Salary.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to salary_url(assigns(:salary))
  end

  def test_edit
    get :edit, :id => Salary.first
    assert_template 'edit'
  end

  def test_update_invalid
    Salary.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Salary.first
    assert_template 'edit'
  end

  def test_update_valid
    Salary.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Salary.first
    assert_redirected_to salary_url(assigns(:salary))
  end

  def test_destroy
    salary = Salary.first
    delete :destroy, :id => salary
    assert_redirected_to salaries_url
    assert !Salary.exists?(salary.id)
  end
end
