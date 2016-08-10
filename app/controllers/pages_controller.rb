class PagesController < ApplicationController
  def info
    if params[:initzarqkr].present?
      @h1 = params[:h]
      @a1 = params[:a]
    end
  end
end




  	
