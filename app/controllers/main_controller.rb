class MainController < ApplicationController

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

    if params[:initzarqkr].present?
      @initzarqkr = params[:initzarqkr]
      @h = params[:h]
      @a = params[:a]
      @url = params[:url]
      @ref = params[:ref]

      gon.initzarqkr = @initzarqkr
      gon.h = @h
      gon.a = @a
      gon.url = @url
      gon.ref = @ref
    end

    if params[:mySelf].present?
      @mySelf = params[:mySelf]
      @h1 = params[:h]
      @a1 = params[:a]
    
      gon.h1 = @h1
      gon.a1= @a1
    end
  end
end




  	
