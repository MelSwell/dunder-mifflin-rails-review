class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def create
  @x = Employee.create(params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url))
  
  redirect_to employee_path(@x)
  end

  def new
    @new_employee=Employee.new
  end 

end
