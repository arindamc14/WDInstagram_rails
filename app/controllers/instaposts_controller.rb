class InstapostsController < ApplicationController
  def index
    @instaposts = Instapost.all
  end

  def show
    @instapost = Instapost.find(params[:id])
  end

  def new
  end

  def edit
    @instapost = Instapost.find(params[:id])
  end

  def create
    @instapost = Instapost.new(instapost_params)

    @instapost.save
    redirect_to @instapost
  end

  def update
    @instapost = Instapost.find(params[:id])
    @instapost.update(instapost_params)
    redirect_to @instapost
  end

  def destroy
    @instapost = Instapost.find(params[:id])
    @instapost.destroy
  end

  private
  def instapost_params
    params.require(:instapost).permit(:title, :author_name, :photo_url)
  end
end