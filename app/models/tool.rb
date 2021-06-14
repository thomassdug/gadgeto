class Tool < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :tool_name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :tool_description, presence: true,length: {minimum:10}
end
