class Inquiry < ApplicationRecord
  validates :circle_name,{presence: true, uniqueness: true}
  validates :email,{presence: true}
  validates :person_name, {presence:true}
  validates :kind, {presence: true}
end
