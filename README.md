# Railspack

A CLI tool that assists in getting [Webpack](https://webpack.github.io/) setup
in your [Rails](http://rubyonrails.org/) application.

## Prerequisites

Make sure that you have `node` installed

The gem will install just fine without node, but you won't be able to
install any of dependencies listed in your new `package.json` file without
`node` and `npm`

## Installation

Add this line to your application's Gemfile:

```
$ gem install railspack
```

## Usage

1. Go to the root directory of your Rails project.
2. Run `railspack generate`

Make sure that you run `npm install` after running the `railspack generate`
command. This will install all the dependencies defined in the `package.json`
file.

Take a look at the [Generated Files Guide](docs/generated_files) page to see
a full description of all the files that are generated.

## Contributing

Please check out the [Contributing Guide](docs/contributing)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
