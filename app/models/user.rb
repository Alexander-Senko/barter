class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :database_authenticatable, :registerable, :recoverable, :token_authenticatable, :encryptable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :rememberable, :trackable, :validatable

	# Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation,
	                :remember_me,
	                :roles

	has_many :relations, :as => :source, :conditions => { :target => nil }
	has_many :roles,     :through => :relations
end
