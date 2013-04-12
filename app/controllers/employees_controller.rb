class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @employee.build_employee_profile
  end

  def create
    begin
      @employee = Employee.new(params[:employee])
      if @employee.save
        flash[:success] = "Succesfully Created new employee"
        redirect_to employees_path
      else
        flash[:error] ="Problem Occured in Making New Employee"
        render 'new'
      end
      rescue
        flash[:error] ="Problem Occured in Making New Employee"
        #redirect_to new_employee_path(@employee)
        render 'new'
    end
  end

  def show
  end

  def delete
    Employee.find(params[:id]).destroy
  end

  def destroy
  end
end
