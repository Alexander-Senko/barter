class API::EntitiesController < APIController
	belongs_to :user, :articles, :messages, :lists, :optional => true
end
