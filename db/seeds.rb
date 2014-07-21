User.destroy_all
SubscriptionEvent.destroy_all

User.create!(
  name: 'Some User',
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

user_0 = User.create!(
  name: "Scarlett Stark II",
  email: 'user0@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_0,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 11.months,
  price_per_month_in_cents: 700,
)
SubscriptionEvent.create!(
  user: user_0,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 8.months,
  price_per_month_in_cents: 1100,
)
SubscriptionEvent.create!(
  user: user_0,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 6.months,
  price_per_month_in_cents: 800,
)
SubscriptionEvent.create!(
  user: user_0,
  event_type: 'unsubscribed',
  date: Date.today.beginning_of_month - 2.months,
  price_per_month_in_cents: 0,
)

user_1 = User.create!(
  name: "Theo Weber",
  email: 'user1@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_1,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 7.months,
  price_per_month_in_cents: 700,
)

user_2 = User.create!(
  name: "Dr. Triston Weimann",
  email: 'user2@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_2,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 4.months,
  price_per_month_in_cents: 400,
)

user_3 = User.create!(
  name: "Marlee Harber",
  email: 'user3@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_3,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 18.months,
  price_per_month_in_cents: 800,
)

user_4 = User.create!(
  name: "Sonny Bechtelar Sr.",
  email: 'user4@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_4,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 13.months,
  price_per_month_in_cents: 700,
)
SubscriptionEvent.create!(
  user: user_4,
  event_type: 'unsubscribed',
  date: Date.today.beginning_of_month - 4.months,
  price_per_month_in_cents: 0,
)

user_5 = User.create!(
  name: "Dan Haag",
  email: 'user5@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_5,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 17.months,
  price_per_month_in_cents: 700,
)

user_6 = User.create!(
  name: "Amya Wintheiser",
  email: 'user6@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_6,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 14.months,
  price_per_month_in_cents: 700,
)

user_7 = User.create!(
  name: "Damion Olson",
  email: 'user7@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_7,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 17.months,
  price_per_month_in_cents: 700,
)
SubscriptionEvent.create!(
  user: user_7,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 10.months,
  price_per_month_in_cents: 800,
)
SubscriptionEvent.create!(
  user: user_7,
  event_type: 'unsubscribed',
  date: Date.today.beginning_of_month - 6.months,
  price_per_month_in_cents: 0,
)

user_8 = User.create!(
  name: "Sid Mertz MD",
  email: 'user8@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_8,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 14.months,
  price_per_month_in_cents: 800,
)
SubscriptionEvent.create!(
  user: user_8,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 10.months,
  price_per_month_in_cents: 300,
)
SubscriptionEvent.create!(
  user: user_8,
  event_type: 'unsubscribed',
  date: Date.today.beginning_of_month - 3.months,
  price_per_month_in_cents: 0,
)

user_9 = User.create!(
  name: "Jonas Heller",
  email: 'user9@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_9,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 6.months,
  price_per_month_in_cents: 900,
)

user_10 = User.create!(
  name: "Julio Hessel",
  email: 'user10@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_10,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 20.months,
  price_per_month_in_cents: 500,
)
SubscriptionEvent.create!(
  user: user_10,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 7.months,
  price_per_month_in_cents: 700,
)
SubscriptionEvent.create!(
  user: user_10,
  event_type: 'unsubscribed',
  date: Date.today.beginning_of_month - 2.months,
  price_per_month_in_cents: 0,
)

user_11 = User.create!(
  name: "Miss Kip Torp",
  email: 'user11@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_11,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 6.months,
  price_per_month_in_cents: 700,
)

user_12 = User.create!(
  name: "Gretchen Langosh",
  email: 'user12@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_12,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 14.months,
  price_per_month_in_cents: 1000,
)
SubscriptionEvent.create!(
  user: user_12,
  event_type: 'unsubscribed',
  date: Date.today.beginning_of_month - 13.months,
  price_per_month_in_cents: 0,
)
SubscriptionEvent.create!(
  user: user_12,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 11.months,
  price_per_month_in_cents: 700,
)

user_13 = User.create!(
  name: "Henriette Tremblay",
  email: 'user13@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_13,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 7.months,
  price_per_month_in_cents: 800,
)
SubscriptionEvent.create!(
  user: user_13,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 4.months,
  price_per_month_in_cents: 600,
)

user_14 = User.create!(
  name: "Shannon Ward",
  email: 'user14@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_14,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 13.months,
  price_per_month_in_cents: 700,
)
SubscriptionEvent.create!(
  user: user_14,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 8.months,
  price_per_month_in_cents: 800,
)
SubscriptionEvent.create!(
  user: user_14,
  event_type: 'unsubscribed',
  date: Date.today.beginning_of_month - 7.months,
  price_per_month_in_cents: 0,
)

user_15 = User.create!(
  name: "Dorothea Marks PhD",
  email: 'user15@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_15,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 17.months,
  price_per_month_in_cents: 700,
)
SubscriptionEvent.create!(
  user: user_15,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 2.months,
  price_per_month_in_cents: 900,
)

user_16 = User.create!(
  name: "Brooke Lueilwitz",
  email: 'user16@example.com',
  password: 'password',
  password_confirmation: 'password'
)

SubscriptionEvent.create!(
  user: user_16,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 28.months,
  price_per_month_in_cents: 700,
)
SubscriptionEvent.create!(
  user: user_16,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 21.months,
  price_per_month_in_cents: 900,
)
SubscriptionEvent.create!(
  user: user_16,
  event_type: 'unsubscribed',
  date: Date.today.beginning_of_month - 18.months,
  price_per_month_in_cents: 0,
)
SubscriptionEvent.create!(
  user: user_16,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 15.months,
  price_per_month_in_cents: 700,
)
SubscriptionEvent.create!(
  user: user_16,
  event_type: 'changed',
  date: Date.today.beginning_of_month - 10.months,
  price_per_month_in_cents: 300,
)
SubscriptionEvent.create!(
  user: user_16,
  event_type: 'unsubscribed',
  date: Date.today.beginning_of_month - 6.months,
  price_per_month_in_cents: 0,
)
SubscriptionEvent.create!(
  user: user_16,
  event_type: 'subscribed',
  date: Date.today.beginning_of_month - 3.months,
  price_per_month_in_cents: 1200,
)

