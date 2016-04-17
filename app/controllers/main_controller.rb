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
  	   # respond_to do |format|
      #     format.html
      #     format.js {render inline: "location.reload();" }
      #  end
  	else

  		@relateds_array = @artist.related_artists
  	end

  	# respond_to do |format|
  	# 	format.html
  	#    format.js   
  	# end

  	
  end

  # private
  # 	def get_related_artists_info

  # 		relateds = @artist.related_artists
  # 		arr = []
  # 		relateds.each do |related|
  # 			# name = related.name
  # 			arr << related
  # 		end
  # 		arr
  # 	end


end
  	
