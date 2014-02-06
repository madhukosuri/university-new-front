class StudentsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @students=Student.new
  end

  def edit
    @students=Student.find_by_email("#{current_user.email}")
  end
  
  def index
    @students=Student.all
  end

  def show
    key=params[:id]
    @student=Student.find(key)
  end

  def update

  end

  def create
    @student=Student.new(stu_params)
    if @student.save
      redirect_to :action => 'index'
    else
      render :text => "error occured"
    end
  end

  def destroy
  end
end
private
def stu_params
    params.require(:student).permit(:name,:fname,:dob,:gender,:phone,:standard)
end