class Approved < ApplicationRecord
  
  self.table_name = 'approveds'
  self.primary_key = 'id'

  belongs_to :edition
end
