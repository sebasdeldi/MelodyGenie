class MainController < ApplicationController

	require 'rspotify'

  def index

  	@search_value = "holder"
    if params[:artist_search].present?
      @search_value = params[:artist_search]
    end
    


  	artists = RSpotify::Artist.search(@search_value)
  	

  	@artist = artists.first
  	@url = @artist.images.last["url"]
  	@relateds_array = get_related_artists_info
  end

  private
  	def get_related_artists_info
  		relateds = @artist.related_artists
  		arr = []
  		relateds.each do |related|
  			# name = related.name
  			arr << related
  		end
  		arr
  	end


end
  	
