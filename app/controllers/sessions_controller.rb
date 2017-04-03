class SessionsController < ApplicationController
  def new
    session[:return_to] ||= request.referer unless request.referer.nil? || (request.referer.include?("new") || request.referer.include?("create") || request.referer.include?("login")) || request.referer.include?("password") || request.referer.include?("edit")
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user.nil?
      redirect_to login_url, error: "Email não existe, por favor, cadastre-se"
    elsif @user && @user.authenticate(params[:session][:password])
      cookies[:auth_token] = @user.auth_token
      redirect_to root_url, notice: "Login realizado com sucesso!"
    else
      redirect_to login_url, error: "Email ou senha inválidos!"
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url, notice: "Você finalizou a sua sessão!"
  end
end
