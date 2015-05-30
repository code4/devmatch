class Profile < ActiveRecord::Base
  belongs_to :user
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	#validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 1.megabytes, :default_url => "/images/missing.png"
  	validates_attachment_content_type :avatar, :content_type =>  /\Aimage\/.*\Z/
end