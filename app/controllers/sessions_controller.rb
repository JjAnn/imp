class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new
  end

  def create
    if login(params[:email], params[:password], params[:remember_me])
<<<<<<< HEAD
      flash[:success] = 'Bem-Vindo!'
      redirect_back_or_to sign_up_path
    else
      flash.now[:warning] = 'E-mail/Senha Incorretos!'
=======
      flash[:success] = 'Welcome back!'
      redirect_back_or_to sign_up_path
    else
      flash.now[:warning] = 'E-mail and/or password is incorrect.'
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
      render 'new'
    end
  end

  def destroy
    logout
    flash[:success] = 'See you!'
<<<<<<< HEAD
    redirect_to root_path
=======
    redirect_to secret_path
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
  end
end
