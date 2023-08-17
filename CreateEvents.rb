# Load gems
require 'dotenv/load'
require 'nylas'

# Initialize Nylas client
nylas = Nylas::Client.new(
	api_key: ENV["V3_TOKEN"],
	host: ENV["V3_HOST"]
)

# Query parameters
query_params = {
    calendar_id: ENV["GRANT_ID"]
}

# Get today’s date
today = Date.today
# Define the time of the event
start_time = Time.local(today.year, today.month, today.day, 10, 0,0).strftime("%s")
end_time = Time.local(today.year, today.month, today.day, 12, 0,0).strftime("%s")

# Request Body
request_body = {
	when: {
		start_time: start_time.to_i,
		end_time: end_time.to_i
	},
	title: "Let's learn some Nylas Ruby SDK!",
	location: "Blag's Den!",
	description: "Using the Nylas API with the Ruby SDK is easy. Come join us!\"",
	participants: [{
        name: "Blag",
        email: "xxx@xxx.com", 
        status: 'noreply'
      }]
}

# Read events from our main calendar in the specified date and time
events, _request_ids = nylas.events.create(identifier: ENV["GRANT_ID"], query_params: query_params, request_body: request_body)
if _request_ids != "" 
	puts "Event created successfully"
else
   puts "There was an error creating the event"
end
