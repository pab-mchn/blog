class Article < ApplicationRecord
  include Visible
  has_many :comments
  has_rich_text :body

  validates :title, :image_url, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
