class ErrorsController < ApplicationController
  skip_before_action :require_login

  def not_found
    respond_to do |format|
      format.html { render status: 404 }
      format.json { render json: { error: "Recurso não encontrado" }, status: 404 }
    end
  end

  def unacceptable
    respond_to do |format|
      format.html { render status: 422 }
      format.json { render json: { error: "Parâmetros inaceitáveis" }, status: 422 }
    end
  end

  def internal_error
    respond_to do |format|
      format.html { render status: 500 }
      format.json { render json: { error: "Erro Interno de Servidor" }, status: 500 }
    end
  end
end
