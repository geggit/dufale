class CommentsController < ApplicationController
  def create
    @micropost=Micropost.find(params[:micropost_id])
    @comment=@micropost.comments.build(params[:comment])
    @comment.save
    
    redirect_to @micropost
  end

  def destroy
    @comment=Comment.find(params[:id])
    @comment.destroy
    
    redirect_to @comment.micropost
  end
end
