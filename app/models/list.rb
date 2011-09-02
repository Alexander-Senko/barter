class List < Node
	alias_attribute :description, :content

#	def to_param
#		[ id, name ].compact * '-'
#	end
end
