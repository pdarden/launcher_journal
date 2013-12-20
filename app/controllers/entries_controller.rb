class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
    @entry.title.build
    @entry.body.build
    @entry.category_id.build
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to @entry, notice: 'Entry was successfully created.'
    else
      render action: 'new'
    end
  end

  private
  def entry_params
    params.require(:entries).permit(:title, :body, :category_id)
  end
end
