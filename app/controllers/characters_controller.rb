class CharactersController < ApplicationController
  def index
    @personagens = Character.all
  end

  def show
    @personagem = Character.find(params[:id])
  end

  def new
    @personagem = Character.new
  end

  def create
    @personagem = Character.new(char_params)

    if @personagem.save
      redirect_to @personagem
    else
      render :new
    end
  end

  def edit
    @personagem = Character.find(params[:id])
  end

  def update 
    @personagem = Character.find(params[:id])
    if @personagem.update(char_params)
      redirect_to @personagem
    else
      render :edit
    end
  end  

  def destroy
    @personagem = Character.find(params[:id])
    @personagem.destroy

    redirect_to root_path
  end

  private
    def char_params
      params.require(:character).permit(:name,:desc,:points,:hp,:fp)
    end
end
