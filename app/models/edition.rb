class Edition < ApplicationRecord
  
  self.table_name = 'editions'
  self.primary_key = 'id'

  has_one  :edital
  has_many :approveds
  has_many :subscriptions
end
