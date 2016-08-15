class PlacesController < ApplicationController
	before_action :find_place, only: [:show, :update, :edit, :destroy]
	def new
		@place = Place.new
		load_categories
	end

 	def index
   		@places = Place.all.order(:id)
 	end 

 	def show
   #@comments=@place.comments
		#@comment=Comment.new

 	end

 	def create
 		@place = Place.new(strong_params)

 		if @place.save
 			flash[:success] = 'Islem basariyla tamamlandi.'
 			redirect_to place_path(@place)
 		else
 			load_categories
 			render :new
 		end
 	end

 	def edit
 		load_categories
 	end

 	def update

 		if @place.update(strong_params)
 			flash[:success] = 'Islem basariyla tamamlandi.'
 			redirect_to place_path(@place)
 		else
 			load_categories
 			render :edit
 		end
 	end

 	def destroy
 		@place.destroy
 		redirect_to places_path
 	end

	private

	def strong_params
		params.require(:place).permit(:name, :address, :establishedAt, :phoneNumber, :email, :city, :description, :category_id)
	end

	def load_categories
		@categories = Category.all.collect {|c| [c.name, c.id] }
	end
	def find_place
    @place = Place.find(params[:id])
	end

end