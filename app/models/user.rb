class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :database_authenticatable, :registerable, :recoverable, :token_authenticatable, :encryptable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :rememberable, :trackable, :validatable

	# Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation,
	                :remember_me,
	                :roles

	has_many :memberships, :as      => :member
	has_many :roles,       :through => :memberships

	if Membership.table_exists? then # needed for DB migrations & schema initializing
		for team in Membership.where(:member_id => nil).map(&:team_type).compact.uniq do
			(lambda do |association_name, team_class| # WTF?! remove lambda
				has_many association_name, :through => :memberships, :source => :team, :source_type => team_class.name

				define_method "#{association_name}_with_roles" do |*roles|
					send(association_name).joins(:memberships => :role).where(
						:memberships => { :role => { :name => roles.flatten.map(&:to_s) } }
					)
				end
			end)[team.downcase.pluralize.to_sym, const_get(team)]
		end
	end
end
