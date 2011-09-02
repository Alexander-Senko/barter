class User::Customer < User
	# Include default devise modules. Others available are:
	# :token_authenticatable, :rememberable, :trackable, :validatable,
	# :encryptable, :lockable and :timeoutable
	devise :database_authenticatable, :registerable, :recoverable, :confirmable#, :omniauthable

	# Setup accessible (or protected) attributes for your model
end
