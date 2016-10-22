class SubscribersController < ApplicationController
  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      flash[:notice] = "Thank you for subscribing"
      redirect_to root_path
    else
      flash[:alert] = "You couldn't subscribe"
      render 'new'
    end
  end

  def unsubscribe
    @subscriber = Subscriber.exists?(params[:id])
    if @subscriber
      @subscriber = Subscriber.find(params[:id])
      @subscriber.destroy
      flash[:notice] = "You have successfully unsubscribed"
      redirect_to root_path
    else
      flash[:alert] = "You have already unsubscribed"
      redirect_to root_path
    end
  end

private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end

end
