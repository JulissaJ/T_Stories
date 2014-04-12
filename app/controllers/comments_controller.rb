class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to post_path(@post), notice: 'Comment was successfully added.'
    else
      flash[:alert] = 'Comment unsuccessful'
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end

end
