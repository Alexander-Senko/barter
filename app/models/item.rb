class Item < Entity
	def name
		articles.map(&:name) * ', '
	end
end
