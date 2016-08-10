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

  end

end




  	
