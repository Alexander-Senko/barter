class API::NodesController < APIController
	belongs_to :user, :articles, :messages, :lists, :optional => true
end
