class ContactController < ApplicationController
	def create
		@contact = Contact.new(contact_params)
	end

	private
	  def contact_params
	    params.require(:contact).permit(:name, :phone, :email, :message)
	  end
end