class UsersController < ApplicationController
  before_action :logged_in_user
  before_action :correct_user

  def show
    @user = User.find(params[:id])
    @events = @user.events.paginate(page: params[:page])
  end

  private

    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # 正しいユーザーかどうか確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
