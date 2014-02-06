class TeachersController < ApplicationController
  before_filter :authenticate_user!
  def new
  end

  def edit
  end

  def index
    @teachers=Teacher.all
   # @teachers=Teacher.find_by_email("#{current_user.email}")
  end

  def show
    key=params[:id]
    @teacher=Teacher.find(key)
  end

  def update
  end

  def create
  end

  def destroy
  end
end
