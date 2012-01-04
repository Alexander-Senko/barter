class List < Entity
	alias_attribute :description, :content

#	def to_param
#		[ id, name ].compact * '-'
#	end
end
