class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, presence: true,
                  length: { minimum: 5 }
  has_many :comments
end
