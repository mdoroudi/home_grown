class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :invitable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable
  validates_uniqueness_of :email
  validates_presence_of :email
  validates_uniqueness_of :invitation_token, :allow_blank => true
end
