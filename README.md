# Capybartender
[![Gem Version](https://badge.fury.io/rb/capybartender.svg)](http://badge.fury.io/rb/capybartender)

Don't stress, let Capybartender serve you your desired Selenium profile!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capybartender'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybartender

## Usage

Work in progress, but as of right now, you can get two profiles, Chrome and Firefox with a few handful of options.

1.) Firefox

```ruby
Capybartender::Serve.firefox_driver!('custom_driver_name', {})

session = Capybara::Session.new(:custom_driver_name)
session.visit "http://www.google.com"
```

Options, at the moment, include:

* `:use_cache => [true|false]`
* `:test_mode => [true|false]`
* `:timeout   => Integer`

2.) Chrome

```ruby
Capybartender::Serve.chrome_driver!('custom_driver_name', {})

session = Capybara::Session.new(:custom_driver_name)
session.visit "http://www.google.com"
```

Options, at the moment, include:

* `:timeout   => Integer`

## Notes

Must have latest Chrome driver installed in order to use the Chrome profile<br>
( http://chromedriver.storage.googleapis.com/index.html )

## Contributing

1. Fork it ( https://github.com/alexanderbez/capybartender/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
