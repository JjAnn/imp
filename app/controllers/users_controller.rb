class UsersController < ApplicationController
  skip_before_action :require_login



  def new
    @user = User.new
<<<<<<< HEAD
   @users = User.all
 @user1 = Relato.where(user_id: User.all)

  end

def edit
    @user = User.new
end

=======

  end

>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
  def create
    @user = User.new(user_params)
    if @user.save
      login(params[:user][:email], params[:user][:password])
      flash[:success] = 'Welcome!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def activate
    if @user = User.load_from_activation_token(params[:id])
      @user.activate!
      flash[:success] = 'User was successfully activated.'
      redirect_to log_in_path
    else
      flash[:warning] = 'Cannot activate this user.'
      redirect_to root_path
    end
  end

<<<<<<< HEAD
 def update
@user = User.new

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to '/sign_up', notice: 'Relatório finalizado com sucesso!' }
        format.json { respond_with @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

=======
  private
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :celular, :role)
  end


end
