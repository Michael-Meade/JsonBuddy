# JsonBuddy

More information can be found at. 
https://michael-meade.github.io/Projects/JsonBuddy.html

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'JsonBuddy'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install JsonBuddy

    $ gem install jsonbuddy-0.1.1.gem

## Usage



```ruby
require 'JsonBuddy'
j = Json.new("test.json")

j.add_key("cheese", 67)

j.add_number("cheese", 33)

j.subtract_number("cheese", 22)

j.change_value("cheese", 34)

jj = Json.new("test.json") # {"0": "https://google.com"}

jj.next_key("https://yahoo.com") # {"0": "https://google.com", "1": "https://yahoo.com"}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
