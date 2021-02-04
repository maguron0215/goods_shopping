class Good < ApplicationRecord
  belongs_to :user
  attachment :image

  with_options presence: true do

    validates :title
    validates :body
    validates :image


  end

  def self.search(search)
    if search
      where(["title LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
