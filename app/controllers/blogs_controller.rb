class BlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(title: params[:title], body: [:body])

    if @blog && @blog.save
      @blog.user_id = @blog.id
      redirect_to blogs_path
    end
  end

  def index
    @blogs = Blog.all
  end

end
