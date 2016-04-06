class TodoList
	
	def initialize(things_to_do)
		@things_to_do = things_to_do
	end

	def get_items
		@things_to_do
	end

	def get_item(chore_index)
		@things_to_do[chore_index]
	end

	def add_item(new_chore)
		@things_to_do << new_chore
	end

	def delete_item(chore_done)
		@things_to_do.delete(chore_done)
	end
end