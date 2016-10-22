class Comment < ActiveRecord::Base
  belongs_to :article
  validates :user_name, presence: true,
                  length: { minimum: 5 }
end
