class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Article.find(params[:name])
    @tag.delete
    flash.notice = "Tag '#{@tag.name}' Deleted!"
    redirect_to "/tags"
  end

end
