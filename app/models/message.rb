class Message < Node
	alias_attribute :title, :name
	alias_attribute :lead,  :summary
	alias_attribute :body,  :content
end
