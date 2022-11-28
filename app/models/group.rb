class Group < ApplicationRecord
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }

  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
end
