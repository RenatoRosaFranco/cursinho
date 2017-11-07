class Newsletter < ApplicationRecord
	
	self.table_name = 'newsletters'
	self.primary_key = 'id'

	before_create :signup

	def signup
		self.status = true
		self.token = SecureRandom.urlsafe_base64(32)
	end
	def cancel
		self.token = nil
		self.status = false
	end

	validates :name,
	          presence: true,
	          uniqueness: false,
	          allow_blank: false,
	          length: {minimum: 3, maximum: 30}

	validates :email,
	          presence: true,
	          uniqueness: true,
	          allow_blank: false,
	          length: {minimum: 3, maximum: 245}

	validates :token,
	          uniqueness: true


end
