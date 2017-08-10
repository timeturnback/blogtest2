class PostsController < ApplicationController
  def new
  end

  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params.require(:post).permit(:title, :content))
      render plain: 'success'
    end
  end

  def destroy
  @post = Post.find(params[:id])
  @post.destroy

  render plain: 'Deleted'
end

  def create
    render plain: params[:post].inspect
  	# render text: => "<html><body>Hello</body></html>".html_safe
  end
end
