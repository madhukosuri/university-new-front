class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :index
  def index
    if current_user.role=="Student"
    	 #if(Student.find_by_email("#{current_user.email}")!= nil)
          
      		redirect_to(:controller => 'students',:action => 'index')
        else
          redirect_to(:controller => 'teachers', :action => 'index')
        end
  end

  def image_preview
  	puts params[:data]
  	@image_key=params[:id]

   #	render :text => @image_key
  end 


end
