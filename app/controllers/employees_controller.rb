class EmployeesController < ApplicationController
  def index
    @employees = Employee.paginate(:page => params[:page], :per_page => 30).order('hire_date DESC')
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      redirect_to @employee, :notice => "Successfully created employee."
    else
      render :action => 'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(params[:employee])
      redirect_to @employee, :notice  => "Successfully updated employee."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_url, :notice => "Successfully destroyed employee."
  end
end
