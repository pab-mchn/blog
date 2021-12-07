class Article < ApplicationRecord
  include Visible
  has_many :comments

  validates :title, :image_url, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
