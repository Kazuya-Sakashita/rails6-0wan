class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      flash[:notice] = '投稿しました！'
      redirect_to root_path
    else
      flash.now[:alert] = '保存できませんでした'
      render :index
    end

  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to root_path
    else
      render :index
    end

  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def destroy

  end

  private

  def pet_params
    # params.require(:pet).permit(:name, :age, :castration, :category, :character, :avairable_area, :animal_type, :description, :image1, :image2, :image3, :image4, :gender)
    params.require(:pet).permit(:name, :description, :image1, :image2, :image3, :image4, :castration, :category, :character, :avairable_area, :animal_type, :gender)
  end
end
