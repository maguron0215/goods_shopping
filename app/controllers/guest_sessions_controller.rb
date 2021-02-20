class GuestSessionsController < ApplicationController
  def create
        user = User.find_or_create_by!(email: 'guest@example.com')
        session[:user_id] = user.id
        # user.password = "password"
        flash[:success] = 'ゲストユーザーとしてログインしました'
        redirect_to goods_path
  end
end
