class PagesController < ApplicationController
	skip_before_action :verify_authenticity_token, only: [:info]
	protect_from_forgery :except => :info
	layout "second"

	def info
		if params[:initzarqkr].present?
		  @h1 = params[:h]
		  @a1 = params[:a]
		  @h1_i = @h1.to_i
		  @a1_i = @a1.to_i
		end
	end
end




  	
