class GuestSessionsController < ApplicationController
  def create
        user = User.find_or_create_by!(email: "guest@example.com") do |user|
          user.password = SecureRandom.urlsafe_base64
        end
        sign_in(user)
        flash[:notice] = 'ゲストユーザーとしてログインしました'
        redirect_to goods_path
  end
end
