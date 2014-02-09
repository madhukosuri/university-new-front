class Teacher < ActiveRecord::Base
	# has_one :address, :as => :addressable, :dependent => :destroy
	accepts_nested_attributes_for :address
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment_presence :image
	validates_presence_of :name, :fname, :dob,:phone
	before_save :email_create
	after_save :devise_email

	def email_create
		if(self.email==nil)
		self.email=self.name+self.fname.split("").first+"te"+self.id.to_s+rand(1234..9999).to_s+"@university.in"
		end
	end

	def devise_email
		puts "zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
		User.create(:email => "#{self.email}", :password => "12345678", :role => "#{self.class}")
	end
end
