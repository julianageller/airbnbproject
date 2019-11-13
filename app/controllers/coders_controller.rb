class CodersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_coder, only: [:show, :edit, :update, :destroy]

  def index
    @coders = Coder.all
  end

  def show
  end

  def new
    @coder = Coder.new
  end

  def edit
  end

  def create
    @coder = Coder.new(coder_params)
    if @coder.save
      redirect_to edit_coder_path(@coder)
    else
      render :new
    end
  end

  def update
    @coder.update(coder_params)

    redirect_to coder_path(@coder)
  end

  def destroy
    @coder.destroy

    redirect_to coders_path
  end

  private
  def set_coder
    @coder = Coder.find(params[:id])
  end

  def coder_params
    params.require(:coder).permit(:name, :language, :location, :bio, :price, :image)
  end
end
