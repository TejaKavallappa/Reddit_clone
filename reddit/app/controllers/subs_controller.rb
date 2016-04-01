class SubsController < ApplicationController

  def index

  end

  def new
    render :new
  end

  def create
    @sub = Sub.new(sub_params)
    if @sub.save
      redirect_to
    else

    end
  end

  def show
    render :show
  end

  def edit

  end

  private

  def sub_params
    params.require(:sub).permit(:title, :description, :moderator_id)
  end


end
