class ComentariosController < ApplicationController
  def create
    @personagem = Character.find(params[:character_id])
    @comentario = @personagem.comentarios.create(comentario_params)

    redirect_to character_path(@personagem)
  end

  private

  def comentario_params
    params.require(:comentario).permit(:autor, :body)
  end
end
