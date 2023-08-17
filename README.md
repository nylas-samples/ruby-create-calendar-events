# ruby-create-calendar-events

This sample will show you to easily create your calendar events using the Nylas Ruby SDK.

## Setup

### System dependencies

- Ruby v3.x

### Gather environment variables

You'll need the following values:

```text
V3_TOKEN =
GRANT_ID =
V3_HOST = 
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

You will get a notification whether your event was created successfully or not

## Learn more

Visit our [Nylas Ruby SDK documentation](https://developer.nylas.com/docs/developer-tools/sdk/ruby-sdk/) to learn more.
