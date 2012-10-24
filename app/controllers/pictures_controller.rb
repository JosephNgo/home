class PicturesController < ApplicationController

	def add_picture
	end

	def create
		p = Picture.new
		p.url = params["url"]
		p.comments = params["comments"]
		p.title = params["title"]
		p.save
		redirect_to '/pictures'
	end
	
	def index
		@picture_urls = Picture.all.reverse!

	end

	def show
		@picture = Picture.find_by_id(params["id"])
	end

	def image_library
		return Picture.all
	end

	def destroy
		p = Picture.find_by_id(params["id"])
    	p.destroy
    	redirect_to '/pictures'
	end

	def edit
		@picture = Picture.find_by_id(params["id"])
		
	end

	def update
		picture = Picture.find_by_id(params[:id])
	    picture.url = params[:url]
	    picture.title = params[:title]
	    picture.comments = params[:comments]
	    picture.save
	    redirect_to index_url

	end

	
end