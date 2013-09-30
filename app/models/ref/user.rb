class User < ActiveRecord::Base
  belongs_to :profil, polymorphic: true
  attr_accessible :active, :email, :password_digest, :profil_id, :profil_type, :username, :profil, :profil_id,
                  :profil_type, :password


  validates :email, presence:true, uniqueness:true
  validates :username, presence:true, uniqueness:true
  has_secure_password


end
