class TitlesController < ApplicationController
  def index
    @titles = Title.all
  end

  def show
    @title = Title.find(params[:id])
  end

  def new
    @title = Title.new
  end

  def create
    @title = Title.new(params[:title])
    if @title.save
      redirect_to @title, :notice => "Successfully created title."
    else
      render :action => 'new'
    end
  end

  def edit
    @title = Title.find(params[:id])
  end

  def update
    @title = Title.find(params[:id])
    if @title.update_attributes(params[:title])
      redirect_to @title, :notice  => "Successfully updated title."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @title = Title.find(params[:id])
    @title.destroy
    redirect_to titles_url, :notice => "Successfully destroyed title."
  end
end
