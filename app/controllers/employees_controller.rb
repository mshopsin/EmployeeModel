class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @employee.build_employee_profile
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      redirect_to employees_path
    else
      render 'new'
    end
  end

  def show
  end

  def delete
  end

  def destroy
  end
end
