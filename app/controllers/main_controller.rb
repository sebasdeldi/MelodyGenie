class MainController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:get_external]

	require 'rspotify'

  def index

    @artist = ' '

  	@search_value = " "
    if params[:artist_search].present?
      @search_value = params[:artist_search]
    end

  	artists = RSpotify::Artist.search(@search_value)

  	@artist = artists.first
  			
  	if @artist == nil 
      
  	else

  		@relateds_array = @artist.related_artists
  	end


    if params[:mySelf].present?
      @show_ad = true
      @h1 = params[:h]
      @a1 = params[:a]
    end
  end

  def get_external

    if params[:initzarqkr].present?
      redirect_to root_path(h: params[:h], a: params[:a], mySelf: true)
    end
  end
end




  	
