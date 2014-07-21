class SubscriptionEvent < ActiveRecord::Base

  belongs_to :user
  validates :date, presence: true
  validates :event_type, inclusion: {in: %w(subscribed unsubscribed changed)}
  validates :user, presence: true
  validates :price_per_month_in_cents, presence: true

  monetize :price_per_month_in_cents, as: :price_per_month

end