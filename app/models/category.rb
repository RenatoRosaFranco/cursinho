class Category < ApplicationRecord
  
  self.table_name = 'category'
  self.primary_key = 'id'

  belongs_to :post
end
