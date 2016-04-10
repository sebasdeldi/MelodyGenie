class MainController < ApplicationController

	require 'rspotify'

  def index



  	@search_value = " "
    if params[:artist_search].present?
      	@search_value = params[:artist_search]
    end
    


  	artists = RSpotify::Artist.search(@search_value)

  	@artist = artists.first
  			
  	if @artist == nil 
  		flash[:notice] = " "
  	else

  		@relateds_array = get_related_artists_info
  	end

  	# respond_to do |format|
  	# 	format.html
  	#    format.js   
  	# end

  	
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
  	
