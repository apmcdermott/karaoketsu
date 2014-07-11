# Karao-ke-tsu
## Song chooser for the indecisive vocalist.

[http://karaoketsu.herokuapp.com](http://karaoketsu.herokuapp.com)

### Clone down this repo

`$ git clone git@github.com:apmcdermott/karaoketsu.git`

### You'll need an Echonest API key

You can sign up for a developer account [here](https://developer.echonest.com/account/register).

Git yoself an API key.

Put your keys in your `.env` file:
```ruby
# .env
API_KEY=(your_echonest_api_key)
CONSUMER_KEY=(your_echonest_consumer_key)
SHARED_SECRET=(your_echonest_shared_secret)
```

### Set up & seed database
Run these:
``` bash
$ rake db:create
$ rake db:migrate
$ rake db:seed
```
The admin user is "mandy@example.com".
The regular user is "joe@example.com".
Both are seeded with passwords of "password".

### Testing

There are no tests at the moment; I had a hard time figuring out how testing with polymorphic associations, and ran out of time. Happy path it up!
