class SubscriptionMailer < ApplicationMailer

  def send_notification(subscriber,article)
    @article = article
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: @article.title)
  end
  
end
