class CreateSubscriptionEvents < ActiveRecord::Migration
  def change
    create_table :subscription_events do |t|
      t.belongs_to :user, null: false
      t.string :event_type, null: false
      t.date :date, null: false
      t.integer :price_per_month_in_cents, default: 0, null: false
    end
  end
end
