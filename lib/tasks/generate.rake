desc "Generate a script to generate test data"
task :generate do
  I18n.enforce_available_locales = false

  patterns = [
    [
      [:subscribed, { :price => 700, months: 3 }],
      [:increased, { :price => 1100, months: 2 }],
      [:decreased, { :price => 800, months: 4 }],
      [:unsubscribed, { months: 2 }]
    ],
    [
      [:subscribed, { :price => 700, months: 7 }]
    ],
    [
      [:subscribed, { :price => 400, months: 4 }]
    ],
    [
      [:subscribed, { :price => 800, months: 18 }]
    ],
    [
      [:subscribed, { :price => 700, months: 9 }],
      [:unsubscribed, { months: 4 }]
    ],
    [
      [:subscribed, { :price => 700, months: 17 }]
    ],
    [
      [:subscribed, { :price => 700, months: 14 }]
    ],
    [
      [:subscribed, { :price => 700, months: 7 }],
      [:increased, { :price => 800, months: 4 }],
      [:unsubscribed, { months: 6 }]
    ],
    [
      [:subscribed, { :price => 800, months: 4 }],
      [:decreased, { :price => 300, months: 7 }],
      [:unsubscribed, { months: 3 }]
    ],
    [
      [:subscribed, { :price => 900, months: 6 }]
    ],
    [
      [:subscribed, { :price => 500, months: 13 }],
      [:increased, { :price => 700, months: 5 }],
      [:unsubscribed, { months: 2 }]
    ],
    [
      [:subscribed, { :price => 700, months: 6 }]],
    [
      [:subscribed, { :price => 1000, months: 1 }],
      [:unsubscribed, { months: 2 }],
      [:subscribed, { :price => 700, months: 11 }]
    ],
    [
      [:subscribed, { :price => 800, months: 3 }],
      [:decreased, { :price => 600, months: 4 }]
    ],
    [
      [:subscribed, { :price => 700, months: 5 }],
      [:increased, { :price => 800, months: 1 }],
      [:unsubscribed, { months: 7 }]
    ],
    [
      [:subscribed, { :price => 700, months: 15 }],
      [:increased, { :price => 900, months: 2 }]
    ],
    [
      [:subscribed, { :price => 700, months: 7 }],
      [:increased, { :price => 900, months: 3 }],
      [:unsubscribed, { months: 3 }],
      [:subscribed, { :price => 700, months: 5 }],
      [:decreased, { :price => 300, months: 4 }],
      [:unsubscribed, { months: 3 }],
      [:subscribed, { :price => 1200, months: 3 }]
    ]
  ]

  names = patterns.map do
    Faker::Name.name
  end

  max_length = names.map(&:length).max

  totals = patterns.map do |pattern|
    pattern.map(&:last).map { |h|
      if h[:price] && h[:months]
        h[:price] * h[:months]
      else
        0
      end
    }.inject(:+)
  end

  puts "Writing seed data to db/seeds.rb"

  File.open("db/seeds.rb", "w") do |f|
    f.puts "User.destroy_all"
    f.puts "SubscriptionEvent.destroy_all"
    f.puts
    f.puts "User.create!("
    f.puts "  name: 'Some User',"
    f.puts "  email: 'user@example.com',"
    f.puts "  password: 'password',"
    f.puts "  password_confirmation: 'password'"
    f.puts ")"
    f.puts

    names.each_with_index do |name, index|
      f.puts "user_#{index} = User.create!("
      f.puts %Q|  name: "#{names[index]}",|
      f.puts "  email: 'user#{index}@example.com',"
      f.puts "  password: 'password',"
      f.puts "  password_confirmation: 'password'"
      f.puts ")"
      f.puts

      months = patterns[index].map { |event| event.last[:months] }.reverse
      months_ago = months.inject([]) do |array, item|
        array << (array.last ? (array.last + item) : months.first)
        array
      end.reverse

      mappings = {
        increased: :changed,
        decreased: :changed
      }

      patterns[index].each_with_index do |pattern, r|
        f.puts "SubscriptionEvent.create!("
        f.puts %Q|  user: user_#{index},|
        f.puts %Q|  event_type: '#{mappings.fetch(pattern.first, pattern.first)}',|
        f.puts %Q|  date: Date.today.beginning_of_month - #{months_ago[r]}.months,|
        f.puts %Q|  price_per_month_in_cents: #{pattern.last[:price] || 0},|
        f.puts ")"
      end
      f.puts
    end
  end

  puts "Writing answers to ./ANSWERS.md"

  lifetime_value = "Lifetime Value"
  label_length = lifetime_value.length
  results = names.map.with_index do |name, index|
    [
      totals[index],
      "#{name.ljust(max_length, " ")} | #{Money.new(totals[index]).format.rjust(label_length, " ")}"
    ]
  end

  File.open("ANSWERS.md", "w") do |f|
    f.puts "# Answers"
    f.puts
    f.puts "## Lifetime Values"
    f.puts
    f.puts "#{"Name".ljust(max_length, " ")} | #{lifetime_value} "
    f.puts ["-"* max_length, "-" * label_length].join(" | ")
    results.sort_by(&:first).reverse.map(&:last).each do |result|
      f.puts result
    end
    f.puts
    f.puts "## Current Members"
    f.puts
    f.puts "Name".ljust(max_length, " ")
    f.puts "-" * max_length

    current = []
    patterns.each_with_index do |pattern, index|
      unless pattern.last.first == :unsubscribed
        current << names[index].ljust(max_length, " ")
      end
    end

    current.sort.each do |name|
      f.puts name
    end

  end

end