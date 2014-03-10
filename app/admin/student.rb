# ActiveAdmin.register Student do
  
#   permit_params :name, :fname, :dob, :gender, :phone, :standard, :image
#   form :html => { :multipart=>true } do |f|
#       f.inputs "Personal Profile" do
#         f.input :name, :input_html => { :maxlength => 20, :place_holder => 'place_holder' }, :label => "Name"
#         f.input :fname, :label => "Father's Name"
#         f.input :dob, :label => "Date-Of-Birth", :as => :date_select, :start_year => 1990, :end_year => Date.current.year
#         f.input :gender, :label => "Gender", :as => :radio, :collection => ["Male", "Female"]
#         f.input :phone, :label => "Phone", :as => :phone, :input_html => { :maxlength => 10 }
#         f.input :standard, :label => "Class", :as => :select, :collection => ["5th", "6th", "7th", "8th", "9th", "10th"]
#         f.input :image, :as => :file, :label => "Image"
#       end
      
#       f.inputs "Address Details", :for => [:address, f.object.address || Address.new] do |t|
#         t.input :district, :as => :select, :include_blank => "--select--", :collection => District.all.map { |district| [district.name]}
#         t.input :city, :as => :select, :include_blank => "--select--", :collection => City.all.map{|cities| [cities.name]}
#         t.input :desc, :as => :text, :label => "Description", input_html: { rows: "5" }
#         t.input :pincode
#       end

#       f.actions
#     end


#     show do |f|

#       attributes_table do
#         row :id
#         row :name
#         row :Fathername do
#               f.fname
#         end
#         row :Date_Of_Birth do
#             f.dob
#         end 
#         row :gender 
#         row :phone
#         row :email do
#           strong{f.email}
#         end
#         row :standard
#         row :district do
#             f.address.district
#         end
#         row :city do
#           (f.address.city)
#         end
#         row :pincode do
#           (f.address.pincode)
#         end
#         row :description do
#           (f.address.desc)
#         end
#         row :image do
#           image_tag(f.image.url(:thumb))
#         end
        
#       end
      
#       active_admin_comments
#     end


#     index do 
#       column :id
#       column :name
#       column :standard
#       column :phone
#       column :email do|f|
#         strong{f.email}
#       end
#       column :gender
#       column :city do|f|
#         f.address.city
#       end
#       default_actions
#      # actions do|t|
#         #link_to "trail"
#      # end

#     end

#     controller do
#       def permitted_params
#         params.permit!
#      end
#    end

#    filter :id, :label => 'Id'
#    filter :name, :label => 'Name'
#    filter :standard, :label => 'Standard'
#    filter :address, :label => 'City', :collection => Address.all.map(&:city).uniq
#    #filter :address, :label => 'City', :collection => proc {(Address.all).map{|c| [c.city, c.id]}}
#   # See permitted parameters documentation:
#   # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#   #
#   # permit_params :list, :of, :attributes, :on, :model
#   #
#   # or
#   #
#  # permit_params do
#   #  permitted = [:permitted, :attributes]
#   #  permitted << :other if resource.something?
#   #  permitted
#   # end
  
# end
