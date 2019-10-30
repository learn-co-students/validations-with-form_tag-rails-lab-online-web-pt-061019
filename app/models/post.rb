class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250}
  validates :category, inclusion: { in: %w(Non-Fiction Fiction)}
end
