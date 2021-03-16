class Post < ApplicationRecord
  validates :content, {presence: true,length:{maximum:140}}
  validates :user_id, {presence: true}
  validates :title,{presence: true, length:{maximum:30}}

  def user
    return User.find_by(id: self.user_id)
  end
end
