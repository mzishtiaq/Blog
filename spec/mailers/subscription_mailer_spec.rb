require "rails_helper"

RSpec.describe SubscriptionMailer, type: :mailer do
  describe "send_notification" do
    let(:mail) { SubscriptionMailer.send_notification(subscriber,article) }
    let(:subscriber) { Subscriber.create(email: "to@example.org") }
    let(:article) { Article.create(title: "First article") }

    it "renders the headers" do
      expect(mail.subject).to eq("First article")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("First article")
    end
  end

end
