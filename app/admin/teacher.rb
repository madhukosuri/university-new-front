ActiveAdmin.register Teacher do
form :html => { :multipart=>true } do |f|
      f.inputs "Personal Profile" do
        f.input :name, :input_html => { :maxlength => 20 }, :label => "Name"
        f.input :fname, :label => "Father's Name"
        f.input :dob, :label => "Date-Of-Birth", :as => :date_select, :start_year => 1990, :end_year => Date.current.year
        f.input :gender, :label => "Gender", :as => :radio, :collection => ["Male", "Female"]
        f.input :phone, :label => "Phone", :as => :phone, :input_html => { :maxlength => 10 }
        f.input :subjects, :label => "Subjects", :as => :select, :collection => ["Telugu", "Hindi", "Englsih", "Maths", "Science", "Social"]
        f.input :image, :as => :file, :label => "Image"
      end
      
      f.inputs "Address Details", :for => [:address, f.object.address || Address.new] do |t|
        t.input :district
        t.input :city
        t.input :pincode, :input_html => { :maxlength => 6 }
        t.input :desc, :as => :text, :label => "Description", input_html: { rows: "5" }
      end

      f.actions
    end
    show do |f|
      attributes_table do
        row :id
        row :name
        row :Fathername do
              f.fname
        end
        row :Date_Of_Birth do
            f.dob
        end 
        row :gender 
        row :phone
        row :subjects
        row :email do|t|
          strong{t.email}
        end
        row :district do
            f.address.district
        end
        row :city do
          (f.address.city)
        end
        row :pincode do
          (f.address.pincode)
        end
        row :description do
          (f.address.desc)
        end
        row :image do
          image_tag(f.image.url(:thumb))
        end
          #image_tag()
      end
      active_admin_comments
    end
    index do 
      column :id
      column :name
      column :subjects
      column :gender
      column :email do|f|
        strong{f.email}
      end
      column :city do|f|
        f.address.city
      end
      default_actions
    end

    controller do
      def permitted_params
        params.permit!
     end
   end
   filter :id, :label => 'Id'
   filter :name, :label => 'Name'
   filter :subjects, :label => 'Subjects'
   filter :address, :label => 'City', :collection => proc {(Address.all).map{|c| [c.city, c.id]}}
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
