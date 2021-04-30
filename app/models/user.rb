class User < ApplicationRecord

  # has_one_attached :image

  mount_uploader :image_name, ImageUploader

  validates :name,{presence: true}
  validates :circle_id,{presence: true, uniqueness: true}
  validates :password, {presence:true}
  validates :user_content, {length:{maximum:300}}
  validates :kind,{presence: true}

  def posts
    # return Post.where(user_id: self.id)
    @try=Post.where(user_id: self.id)
    return @try.all.order(created_at: :desc)

  end
end
