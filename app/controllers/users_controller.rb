class UsersController < ApplicationController
	
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
    # binding.pry
  end
  
  def create  	
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to ToDo App!"
      # session[user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end


  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
