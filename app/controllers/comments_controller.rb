class CommentsController < ApplicationController

  def create

    @place=Place.find(params[:place_id])
    @comment = @place.comments.create(comment_params)

    if @comment
    redirect_to place_path(@place)
    else
      render :show
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
