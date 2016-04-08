class MainController < ApplicationController

	require 'rspotify'

  def index

  	@search_value = "holder"
    if params[:artist_search].present?
      @search_value = params[:artist_search]
    end
    


  	artists = RSpotify::Artist.search(@search_value)
  	

  	@artist = artists.first
  	@relateds_array = get_related_names
  end

  private
  	def get_related_names
  		relateds = @artist.related_artists
  		arr = []
  		relateds.each do |related|
  			name = related.name
  			arr << name
  		end
  		arr
  	end
end
  	
