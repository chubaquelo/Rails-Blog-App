class TagsController < ApplicationController
  include TagsHelper
  before_action :require_login, only: [:destroy]

  def index
    @tags = Tag.all
  end
  
  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    Tag.find(params[:id]).destroy
    flash.notice = "The tag is been deleted!"

    redirect_to tags_path
  end
end
