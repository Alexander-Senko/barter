class User::Staff < User
	# Include default devise modules. Others available are:
	# :registerable, :rememberable, :trackable, :validatable,
	# :token_authenticatable, :encryptable and :confirmable
	devise :database_authenticatable, :recoverable, :lockable, :timeoutable#, :omniauthable

	# Setup accessible (or protected) attributes for your model
end
