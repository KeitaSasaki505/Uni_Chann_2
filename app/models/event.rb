class Event < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_many :joins
  has_one_attached :image
  
end
