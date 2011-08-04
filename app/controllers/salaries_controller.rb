class SalariesController < ApplicationController
  def index
    @salaries = Salary.all
  end

  def show
    @salary = Salary.find(params[:id])
  end

  def new
    @salary = Salary.new
  end

  def create
    @salary = Salary.new(params[:salary])
    if @salary.save
      redirect_to @salary, :notice => "Successfully created salary."
    else
      render :action => 'new'
    end
  end

  def edit
    @salary = Salary.find(params[:id])
  end

  def update
    @salary = Salary.find(params[:id])
    if @salary.update_attributes(params[:salary])
      redirect_to @salary, :notice  => "Successfully updated salary."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy
    redirect_to salaries_url, :notice => "Successfully destroyed salary."
  end
end
