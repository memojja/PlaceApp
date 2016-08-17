class CommentsController < ApplicationController

  before_action :authenticate_customer!
  before_action :set_place
  before_action :set_comment, only: [:destroy]
  before_action :authorize_customer!, only: [:destroy]

  def create

    @comment = @place.comments.new(comment_params)
    @comment.customer=current_customer
    if @comment.save
      redirect_to @place ,notice: " başarılı"
    else
      redirect_to @place ,notice: " başarılı değil"
    end

  end

  def destroy

  end

  private
  def set_comment
    @comment=Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

  def authorize_customer!
    redirect_to @place, notice: "Not authorized" unless @comment.customer_id == current_customer.id
  end

  def set_place
    @place =Place.find(params[:place_id])
  end

end
