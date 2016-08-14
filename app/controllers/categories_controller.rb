class CategoriesController < ApplicationController
	before_action :set_category, only: [:show]


 	def index
   		@categories = Category.all.order(:id)
 	end 

 	def show
    	@places = @category.places
 	end

	private

	def set_category
    @category = Category.find(params[:id])
	end

end

