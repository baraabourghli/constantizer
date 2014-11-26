[![Gem Version](https://badge.fury.io/rb/constantizer.svg)](http://badge.fury.io/rb/constantizer) [![Code Climate](https://codeclimate.com/github/baraabourghli/constantizer/badges/gpa.svg)](https://codeclimate.com/github/baraabourghli/constantizer) [![Test Coverage](https://codeclimate.com/github/baraabourghli/constantizer/badges/coverage.svg)](https://codeclimate.com/github/baraabourghli/constantizer)

# Constantizer

Constantizer helps you manage your ruby constants to be used through out your application.

### Features

- Constants are added using YAML files.
- Constants files support ERB.

## Installation

Add this line to your application's Gemfile:

    gem 'constantizer'

And then execute:

    $ bundle

And then execute:

    $ bundle exec constantizer install

Constants directory will be created: 

    └── config
        └── constants
            └── common.yml

## Configurations

You can configure the gem to use a specific directory other than the default. To achive that, in constantizer.rb file add the following:

```ruby
Constantizer.configure do |config|
  config.directory = 'special_directory'
end
```  
now put the YAML files contaning the constants under that `special_directory`

## Usage

Constantizer allow you to create constants that are accessible from everywhere in your app.

Given the following YAML file

```yml
currencies:
  - USD
  - EUR
default_currency: <%= CURRENCIES.first %>
```

You can go to anywhere in your app and do the following:

```ruby
CURRENCIES.include?('USD')
```

## Contributing

1. [Fork it]( https://github.com/baraabourghli/constantizer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
