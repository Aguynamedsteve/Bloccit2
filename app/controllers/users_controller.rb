class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.visible_to(current_user)
  end

  def update
    if current_user.update_attributes(user_params)
      flash[:notice] = "User information updated"
      redirect_to edit_registration_path(current_user)
    else
      render "devise/registration/edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email_favorites)
  end
end