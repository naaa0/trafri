class Group < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  with_options presence: true do
    validates :image
    validates :name
    validates :introduction
    validates :city
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  end
end
