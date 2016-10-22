class Article < ActiveRecord::Base
  after_create :send_notification_to_subscribers
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, presence: true,
                  length: { minimum: 5 }
  has_many :comments

private

  def send_notification_to_subscribers
    Subscriber.all.each do |subscriber|
      SubscriptionMailer.send_notification(subscriber,self).deliver_now
    end
  end
  
end
