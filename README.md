# ruby-read-calendar-events

This sample will show you to easily create your calendar events using the Nylas Ruby SDK.

You can follow along step-by-step in our blog post ["How to Manage Calendar Events with the Nylas Ruby SDK"](https://www.nylas.com/blog/how-to-manage-calendar-events-with-the-nylas-ruby-sdk/).

## Setup

### System dependencies

- Ruby v3.x

### Gather environment variables

You'll need the following values:

```text
ACCESS_TOKEN =
CLIENT_ID =
CLIENT_SECRET =
CALENDAR_ID =
```

Add the above values to a new `.env` file:

```bash
$ touch .env # Then add your env variables
```

### Install dependencies

```bash
$ gem install nylas
$ gem install dotenv
```

## Usage

Run the script using the `ruby` command:

```bash
$ ruby CreateEvents.rb
```

You will get a notification whether your event was successfully created or not

## Learn more

Visit our [Nylas Ruby SDK documentation](https://developer.nylas.com/docs/developer-tools/sdk/ruby-sdk/) to learn more.
