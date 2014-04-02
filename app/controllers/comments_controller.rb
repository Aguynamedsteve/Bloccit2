class CommentsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @post = current_user.posts.build(params[:post_id])
    @comments = @posts.comments
    @comment.post = @post
    @comment = current_user.comments.build(params[:comment])
    
    
    if @post.save
      flash[:notice] = "Comment was saved."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render 'posts/show'
    end
  end
end
