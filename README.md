# Voxmail

API wrapper for VoxMail

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'voxmail'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install voxmail

## Setup

the gem uses environment variables stored in .env file to connect to Voxmail APIs.
You can put them in a .env file at the root of your project.

```
VOXMAILHOST = 'your voxmail hostname'
VOXMAILSECRETKEY = 'your secret key'
VOXMAILPUBLICKEY = 'your publickey'
```
you can obtain API keys through Voxmail account dashboard.

## Usage

```
voxmail.info
```
will return informations about your voxmail account

you can use all the methods provided by voxmail in this way:

```
@myvoxmail = Voxmail.lookup(method, *args)
```
Check [Voxmail website](http://www.voxmail.it) to see available methods


## Todo
1. integrate errors from APIs

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/voxmail/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
