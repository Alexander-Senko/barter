class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :database_authenticatable, :registerable, :recoverable, :token_authenticatable, :encryptable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :rememberable, :trackable, :validatable

	# Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation,
	                :remember_me,
	                :roles

	has_many :relations, :as      => :source
	has_many :roles,     :through => :relations

	if Relation.table_exists? then # needed for DB migrations & schema initializing
		for target in Relation.where(:source_id => nil).map(&:target_type).compact.uniq do
			(lambda do |association_name, target_class| # WTF?! remove lambda
				has_many association_name, :through => :relations, :source => :target, :source_type => target_class.name

				define_method "#{association_name}_with_roles" do |*roles|
					send(association_name).joins(:relations => :role).where(
						:relations => { :role => { :name => roles.flatten.map(&:to_s) } }
					)
				end
			end)[target.downcase.pluralize.to_sym, const_get(target)]
		end
	end
end
