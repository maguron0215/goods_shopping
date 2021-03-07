class GuestSessionsController < ApplicationController
  def create
        user = User.find_or_create_by!(email: "guest@example.com")
        if user.blank?
          user.password = "password"
          user.save!
        end
        sign_in(user)
        flash[:notice] = 'ゲストユーザーとしてログインしました'
        redirect_to goods_path
  end
end
