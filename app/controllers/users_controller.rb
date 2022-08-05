class UsersController < ApplicationController
  def avatar_params
    params.require(:user).permit(:title, :body, :avatar)
  end
  
  def show
    @user = User.find(params[:id])
    @user_pages = @user.pages
  end

end
