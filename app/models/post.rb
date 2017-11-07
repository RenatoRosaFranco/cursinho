class Post < ApplicationRecord
	
	self.table_name = 'posts'
	self.primary_key = 'id'

	scope :published, ->{where(published: true)}
	scope :unpublished, ->{where(published: false)}
end
