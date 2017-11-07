class Edital < ApplicationRecord

  self.table_name = 'editals'
  self.primary_key = 'id'
  
  belongs_to :edition
end
