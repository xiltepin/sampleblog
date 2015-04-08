class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comments_params)
    # could redirect using id's path
    redirect_to @post
  end

  def comments_params
    params.require(:comment).permit(:post, :post_id, :body)
  end
end
