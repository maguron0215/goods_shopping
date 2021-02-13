class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
         attachment :profile_image
         has_many :goods, dependent: :destroy

# validates :username, presence:true

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.username = "ゲスト"
      user.profile = "どうもゲストユーザーです"
      user.profile_image_id = "images/no-image.png"
    end
  end

end
