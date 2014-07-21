class SubscriptionEventsController < ApplicationController

  def index
    @subscription_events = SubscriptionEvent.includes(:user).order(:date)
  end

end