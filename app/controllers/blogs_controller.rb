class BlogsController < ApplicationController
  def new
    @blogs = Blog.new
  end

  def create
    @blogs = Blog.new(blog_params)
    if @blogs.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :source, :link, :photo)
  end
end
