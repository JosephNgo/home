class PicturesController < ApplicationController

	def add_picture
	end

	def create
		p = Picture.new
		p.url = params["sample_text_field"]
		p.comments = params["comment_text_field"]
		p.save
		redirect_to '/pictures'
	end
	
	def index
		@picture_urls = Picture.all.reverse!

	end

	def show
		id_number = params["id"].to_i
		@url = image_library[id_number-1]
	end

	def image_library
		return Picture.all
	end
end