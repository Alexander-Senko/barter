# RailsAdmin config file. Generated on January 20, 2013 21:55
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|
	################  Global configuration  ################

	# Set the admin name here (optional second array element will appear in red). For example:
	config.main_app_name = %w(Barter Admin)
	# or for a more dynamic name:
	# config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

	# RailsAdmin may need a way to know who the current user is]
	config.current_user_method { current_staff } # auto-generated

	# If you want to track changes on your models:
	# config.audit_with :history, 'User'

	# Or with a PaperTrail: (you need to install it first)
	# config.audit_with :paper_trail, 'User'

	# Display empty fields in show views:
	# config.compact_show_view = false

	# Number of default rows per-page:
	# config.default_items_per_page = 20

	# Exclude specific models (keep the others):
	# config.excluded_models = %w[ Article Entity Item List Message Relation Role User User::Corporate User::Customer User::Staff ]

	# Include specific models (exclude the others):
	# config.included_models = %w[ Article Entity Item List Message Relation Role User User::Corporate User::Customer User::Staff ]

	# Label methods for model instances:
	# config.label_methods << :description # Default is [:name, :title]


	################  Model configuration  ################

	# Each model configuration can alternatively:
	#   - stay here in a `config.model 'ModelName' do ... end` block
	#   - go in the model definition file in a `rails_admin do ... end` block

	# This is your choice to make:
	#   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
	#   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


	# Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
	# Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:


	###  Article  ###

	# config.model 'Article' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your article.rb model definition

	#   # Found associations:

	#     configure :source_relations,   :has_many_association
	#     configure :children,           :has_many_association
	#     configure :editors,            :has_many_association
	#     configure :creators,           :has_many_association
	#     configure :admins,             :has_many_association
	#     configure :moderators,         :has_many_association
	#     configure :target_relations,   :has_many_association
	#     configure :parents,            :has_many_association
	#     configure :specifiers,         :has_many_association
	#     configure :packages,           :has_many_association
	#     configure :items,              :has_many_association
	#     configure :specified_articles, :has_many_association
	#     configure :packaged_articles,  :has_many_association

	#   # Found columns:

	#     configure :id,         :integer
	#     configure :type,       :string
	#     configure :name,       :string
	#     configure :summary,    :string
	#     configure :content,    :text
	#     configure :starts_at,  :datetime
	#     configure :ends_at,    :datetime
	#     configure :created_at, :datetime
	#     configure :updated_at, :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  Entity  ###

	# config.model 'Entity' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your entity.rb model definition

	#   # Found associations:

	#     configure :source_relations, :has_many_association
	#     configure :children,         :has_many_association
	#     configure :editors,          :has_many_association
	#     configure :creators,         :has_many_association
	#     configure :admins,           :has_many_association
	#     configure :moderators,       :has_many_association
	#     configure :target_relations, :has_many_association
	#     configure :parents,          :has_many_association

	#   # Found columns:

	#     configure :id,         :integer
	#     configure :type,       :string
	#     configure :name,       :string
	#     configure :summary,    :string
	#     configure :content,    :text
	#     configure :starts_at,  :datetime
	#     configure :ends_at,    :datetime
	#     configure :created_at, :datetime
	#     configure :updated_at, :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  Item  ###

	# config.model 'Item' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your item.rb model definition

	#   # Found associations:

	#     configure :source_relations, :has_many_association
	#     configure :children,         :has_many_association
	#     configure :editors,          :has_many_association
	#     configure :creators,         :has_many_association
	#     configure :admins,           :has_many_association
	#     configure :moderators,       :has_many_association
	#     configure :target_relations, :has_many_association
	#     configure :parents,          :has_many_association
	#     configure :providers,        :has_many_association
	#     configure :demanders,        :has_many_association
	#     configure :articles,         :has_many_association

	#   # Found columns:

	#     configure :id,         :integer
	#     configure :type,       :string
	#     configure :name,       :string
	#     configure :summary,    :string
	#     configure :content,    :text
	#     configure :starts_at,  :datetime
	#     configure :ends_at,    :datetime
	#     configure :created_at, :datetime
	#     configure :updated_at, :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  List  ###

	# config.model 'List' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your list.rb model definition

	#   # Found associations:

	#     configure :source_relations, :has_many_association
	#     configure :children,         :has_many_association
	#     configure :editors,          :has_many_association
	#     configure :creators,         :has_many_association
	#     configure :admins,           :has_many_association
	#     configure :moderators,       :has_many_association
	#     configure :target_relations, :has_many_association
	#     configure :parents,          :has_many_association

	#   # Found columns:

	#     configure :id,         :integer
	#     configure :type,       :string
	#     configure :name,       :string
	#     configure :summary,    :string
	#     configure :content,    :text
	#     configure :starts_at,  :datetime
	#     configure :ends_at,    :datetime
	#     configure :created_at, :datetime
	#     configure :updated_at, :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  Message  ###

	# config.model 'Message' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your message.rb model definition

	#   # Found associations:

	#     configure :source_relations, :has_many_association
	#     configure :children,         :has_many_association
	#     configure :editors,          :has_many_association
	#     configure :creators,         :has_many_association
	#     configure :admins,           :has_many_association
	#     configure :moderators,       :has_many_association
	#     configure :target_relations, :has_many_association
	#     configure :parents,          :has_many_association

	#   # Found columns:

	#     configure :id,         :integer
	#     configure :type,       :string
	#     configure :name,       :string
	#     configure :summary,    :string
	#     configure :content,    :text
	#     configure :starts_at,  :datetime
	#     configure :ends_at,    :datetime
	#     configure :created_at, :datetime
	#     configure :updated_at, :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  Relation  ###

	# config.model 'Relation' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your relation.rb model definition

	#   # Found associations:

	#     configure :source, :polymorphic_association
	#     configure :target, :polymorphic_association
	#     configure :role,   :belongs_to_association

	#   # Found columns:

	#     configure :id,          :integer
	#     configure :source_id,   :integer  # Hidden
	#     configure :source_type, :string   # Hidden
	#     configure :target_id,   :integer  # Hidden
	#     configure :target_type, :string   # Hidden
	#     configure :role_id,     :integer  # Hidden
	#     configure :created_at,  :datetime
	#     configure :updated_at,  :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  Role  ###

	# config.model 'Role' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your role.rb model definition

	#   # Found associations:

	#     configure :relations, :has_many_association
	#     configure :users,     :has_many_association

	#   # Found columns:

	#     configure :id,         :integer
	#     configure :name,       :string
	#     configure :created_at, :datetime
	#     configure :updated_at, :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  User  ###

	# config.model 'User' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your user.rb model definition

	#   # Found associations:

	#     configure :target_relations, :has_many_association
	#     configure :edited_entities,  :has_many_association
	#     configure :created_entities, :has_many_association
	#     configure :relations,        :has_many_association
	#     configure :roles,            :has_many_association

	#   # Found columns:

	#     configure :id,                     :integer
	#     configure :type,                   :string
	#     configure :email,                  :string
	#     configure :password,               :password # Hidden
	#     configure :password_confirmation,  :password # Hidden
	#     configure :reset_password_token,   :string   # Hidden
	#     configure :reset_password_sent_at, :datetime
	#     configure :remember_created_at,    :datetime
	#     configure :sign_in_count,          :integer
	#     configure :current_sign_in_at,     :datetime
	#     configure :last_sign_in_at,        :datetime
	#     configure :current_sign_in_ip,     :string
	#     configure :last_sign_in_ip,        :string
	#     configure :confirmation_token,     :string
	#     configure :confirmed_at,           :datetime
	#     configure :confirmation_sent_at,   :datetime
	#     configure :failed_attempts,        :integer
	#     configure :unlock_token,           :string
	#     configure :locked_at,              :datetime
	#     configure :created_at,             :datetime
	#     configure :updated_at,             :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  User::Corporate  ###

	# config.model 'User::Corporate' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your user/corporate.rb model definition

	#   # Found associations:

	#     configure :target_relations, :has_many_association
	#     configure :provided_items,   :has_many_association
	#     configure :demanded_items,   :has_many_association

	#   # Found columns:

	#     configure :id,                     :integer
	#     configure :type,                   :string
	#     configure :email,                  :string
	#     configure :password,               :password # Hidden
	#     configure :password_confirmation,  :password # Hidden
	#     configure :reset_password_token,   :string   # Hidden
	#     configure :reset_password_sent_at, :datetime
	#     configure :remember_created_at,    :datetime
	#     configure :sign_in_count,          :integer
	#     configure :current_sign_in_at,     :datetime
	#     configure :last_sign_in_at,        :datetime
	#     configure :current_sign_in_ip,     :string
	#     configure :last_sign_in_ip,        :string
	#     configure :confirmation_token,     :string
	#     configure :confirmed_at,           :datetime
	#     configure :confirmation_sent_at,   :datetime
	#     configure :failed_attempts,        :integer
	#     configure :unlock_token,           :string
	#     configure :locked_at,              :datetime
	#     configure :created_at,             :datetime
	#     configure :updated_at,             :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  User::Customer  ###

	# config.model 'User::Customer' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your user/customer.rb model definition

	#   # Found associations:

	#     configure :target_relations, :has_many_association
	#     configure :provided_items,   :has_many_association
	#     configure :demanded_items,   :has_many_association

	#   # Found columns:

	#     configure :id,                     :integer
	#     configure :type,                   :string
	#     configure :email,                  :string
	#     configure :password,               :password # Hidden
	#     configure :password_confirmation,  :password # Hidden
	#     configure :reset_password_token,   :string   # Hidden
	#     configure :reset_password_sent_at, :datetime
	#     configure :remember_created_at,    :datetime
	#     configure :sign_in_count,          :integer
	#     configure :current_sign_in_at,     :datetime
	#     configure :last_sign_in_at,        :datetime
	#     configure :current_sign_in_ip,     :string
	#     configure :last_sign_in_ip,        :string
	#     configure :confirmation_token,     :string
	#     configure :confirmed_at,           :datetime
	#     configure :confirmation_sent_at,   :datetime
	#     configure :failed_attempts,        :integer
	#     configure :unlock_token,           :string
	#     configure :locked_at,              :datetime
	#     configure :created_at,             :datetime
	#     configure :updated_at,             :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end


	###  User::Staff  ###

	# config.model 'User::Staff' do

	#   # You can copy this to a 'rails_admin do ... end' block inside your user/staff.rb model definition

	#   # Found associations:

	#     configure :target_relations,   :has_many_association
	#     configure :admined_entities,   :has_many_association
	#     configure :moderated_entities, :has_many_association

	#   # Found columns:

	#     configure :id,                     :integer
	#     configure :type,                   :string
	#     configure :email,                  :string
	#     configure :password,               :password # Hidden
	#     configure :password_confirmation,  :password # Hidden
	#     configure :reset_password_token,   :string   # Hidden
	#     configure :reset_password_sent_at, :datetime
	#     configure :remember_created_at,    :datetime
	#     configure :sign_in_count,          :integer
	#     configure :current_sign_in_at,     :datetime
	#     configure :last_sign_in_at,        :datetime
	#     configure :current_sign_in_ip,     :string
	#     configure :last_sign_in_ip,        :string
	#     configure :confirmation_token,     :string
	#     configure :confirmed_at,           :datetime
	#     configure :confirmation_sent_at,   :datetime
	#     configure :failed_attempts,        :integer
	#     configure :unlock_token,           :string
	#     configure :locked_at,              :datetime
	#     configure :created_at,             :datetime
	#     configure :updated_at,             :datetime

	#   # Cross-section configuration:

	#     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
	#     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
	#     # label_plural 'My models'      # Same, plural
	#     # weight 0                      # Navigation priority. Bigger is higher.
	#     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
	#     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

	#   # Section specific configuration:

	#     list do
	#       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
	#       # items_per_page 100    # Override default_items_per_page
	#       # sort_by :id           # Sort column (default is primary key)
	#       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
	#     end
	#     show do; end
	#     edit do; end
	#     export do; end
	#     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
	#     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
	#     # using `field` instead of `configure` will exclude all other fields and force the ordering
	# end
end
