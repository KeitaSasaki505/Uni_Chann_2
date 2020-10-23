class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :user
  belongs_to_active_hash :genre
  has_many :comments
  has_many :joins
  has_one_attached :image

end
