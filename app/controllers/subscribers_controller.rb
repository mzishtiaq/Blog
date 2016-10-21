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
      flash[:alert] = "You couldn't subsribe"
      render 'new'
    end
  end

private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end

end
