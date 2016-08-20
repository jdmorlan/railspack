# Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jdmorlan/railspack.

# Development

1. Clone the repo `git clone jdmorlan/railspack`

2. Run `bin/setup` to install dependencies

3. Run `rake test` to run the tests 

Build and Install Locally

```
bundle exec rake install
```

Release a new version

1. Update the version number in `version.rb`
2. Run `bundle exec rake release`

This will create a git tag for the version, push git commits and tags, and push the
gem file to [rubygems.org](https://rubygems.org)
