# Tookan

Tookan Ruby API Wrapper

Tookan API Docs: https://tookanapi.docs.apiary.io/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tookan_ruby_api', github: "buttercloud/tookan_ruby_api", branch: "master"
```

And then execute:

    $ bundle

## Usage

Initialize the class

    c = Tookan::Client.new

Use any of the endpoints in the API as Ruby methods. Any data required by the endpoint can be passed as a Ruby hash in the first argument.
    
    c.get_tasks_details({ job_id: "25753278" })
    # OR
    c.get_available_agents

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tookan_ruby_api.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
