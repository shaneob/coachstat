class Profile < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :firstname, :presence => true
  validates :lastname, :presence => true
  
  belongs_to :user
  has_many :clubs
  attr_accessible :address, :firstname, :lastname, :mobile, :user_id, :image, :avatar
  has_attached_file :avatar, :default_url => "/assets/profile/profile-img.jpg"
end
