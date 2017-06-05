class SessionsController < ApplicationController
  def new
    session[:return_to] ||= request.referer unless request.referer.nil? || (request.referer.include?("new") || request.referer.include?("create") || request.referer.include?("login")) || request.referer.include?("password_digest") || request.referer.include?("edit")
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user.nil?
      redirect_to login_url, notice: "Email não existe, por favor, cadastre-se"
    # elsif @user.password.nil?
    #   redirect_to login_url, error: "Senha em branco!!!!!"
    elsif @user && @user.authenticate(params[:session][:password_digest])
      # if params[:remember_me]
      #   cookies.permanent[:auth_token] = @user.auth_token
      # else
        cookies[:auth_token] = @user.auth_token
        redirect_to index_url, notice: "Login realizado com sucesso!"
      # end
      
    else
      redirect_to login_url, notice: "Email ou senha inválidos!"
    end
  end

  # def update
  #   @user = User.find(params[:id])
  #   respond_to do |format|
  #       if @user.authenticate(params[:current_password])
  #           if @user.update(user_params)
  #               format.html { redirect_to edit_user_path, notice: "Senha atualizada com sucesso!"}
  #           else
  #               render 'edit'
  #           end
  #       elsif !params[:current_password].nil? && @user.authenticate(params[:current_password]) == false
  #           format.html { redirect_to edit_user_path, error: "Senha antiga errada!" }
  #       end
  #   end
  # end

  def destroy
    cookies.delete(:auth_token)
    redirect_to index_url, notice: "Você finalizou a sua sessão!"
  end
end
