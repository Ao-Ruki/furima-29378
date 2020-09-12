class UsersController < ApplicationController



  def new
    @user = User.new
   
end

def create
  @user = User.new(user_params)
  if @user.save
    redirect_to users_path
  else
    render :new
  end
end

private
  def user_params
    params.require(:user).permit(:nickname, :family_name, :first_name, :family_name_kana, :first_name_kana, :birthday)
  end

end
