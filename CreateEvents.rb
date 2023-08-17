require 'dotenv/load'
require 'nylas'
require 'date'

nylas = Nylas::API.new(
    app_id: ENV["CLIENT_ID"],
    app_secret: ENV["CLIENT_SECRET"],
    access_token: ENV["ACCESS_TOKEN"]
)

today = Date.today

test = ["atejada@gmail.com","alvaro.t@nylas.com"]
emails = []

test.each { |event|
	emails.push({email: "#{event}"})
}

event = nylas.events.create(title: "Let's learn some Nylas Ruby API!", location: "Blag's Den!", 
							when: { start_time: Time.local(today.year, today.month, today.day, 13, 0,0).strftime("%s"), 
							end_time: Time.local(today.year, today.month, today.day, 14, 0,0).strftime("%s") },
							participants: emails,
							calendar_id: "d7o9zmx9f2yh6dxonxfrp8crb",
							notify_participants: true)

if event.id
	puts 'Event created successfully'
else
	puts 'There was an error creating the event'
end
