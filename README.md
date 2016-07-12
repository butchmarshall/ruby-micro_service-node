[![Gem Version](https://badge.fury.io/rb/micro_service-node.svg)](http://badge.fury.io/rb/micro_service-node)
[![Build Status](https://travis-ci.org/butchmarshall/ruby-micro_service-node.svg?branch=master)](https://travis-ci.org/butchmarshall/ruby-micro_service-node)

# MicroService::Node

ActiveRecord MicroService implementation for nodes used in a clustered configuration.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'micro_service-node'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install micro_service-node

then run

```ruby
rails generate micro_service:node:active_record
bundle exec rake db:migrate
```

## Usage

To the ActiveRecord model:

```ruby
MicroService::Node.new(...)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/butchmarshall/ruby-micro_service-node.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

