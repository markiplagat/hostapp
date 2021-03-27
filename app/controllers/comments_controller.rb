class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    # @comment = @post.comments.create(params[:comment])
    @comment = @post.comments.create!(params.require(:comment).permit!)
    # @comment = @post.comments.create!(params.require(:comment).permit(:comment_text,:link))
    redirect_to post_path(@post)
  end
  def destroy
    @post = Post.find_by(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
