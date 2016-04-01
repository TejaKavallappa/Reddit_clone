class PostsController < ApplicationController
  def new
    render :new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_url(@post)
    else
      render :new
    end
  end

  def show

  end

  def edit
    @post = Post.find_by_id(params[:id])
    if current_user.id == @post.author_id
      render :edit
    else
      redirect_to sub_url(@post.sub_id)
    end
  end

  def update

  end

  private
  def post_params
    params.require(:post).permit(:title, :author_id, :url, :content, :sub_id)
  end


end
