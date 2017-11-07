class NewsletterController < ApplicationController
	def create
	end
	def destroy
	end

	private
	 def newsletter_params
	 	params.require(:newsletter).permit(:name, :email)
	 end
end