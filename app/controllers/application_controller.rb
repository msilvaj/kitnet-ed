class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :authenticate_user!
  load_and_authorize_resource

  def set_locale
    session[:locale] = params[:locale] if params[:locale].present?
    I18n.locale = session[:locale] || I18n.default_locale
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to '/', :alert => exception.message
  end
end
