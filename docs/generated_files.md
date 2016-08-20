# Generated Files

This is a listing of all the files that are generated when you call
`railspack generate`:

## `package.json`

This file is similar to a `gemspec` or `gemfile` in Ruby. Some metadata
about the app is stored here, plus all the dependencies for your JS
environment.

## `webpack.config.babel.js`

This file configures your Webpack environment. Letting it know where to find
your JS files and where it should output a bundle after transpilation is
complete.

You can write ES6 syntax in the config file, since we provided `.babel`
name in the file. This basically tells Webpack to run the config file
through Babel before loading the Webpack envrionment.

## `.babelrc`

Babel works off the idea of presets, so if you want to write ES6 code, its
a preset, or if you want to write JSX (React) that is another preset. This
file tells babel which presets to load. The presets are determined by what
you have installed through the `package.json` file.

## `frontend/` Directory

The `frontend/` directory is your new home for Javascripts. A couple of files
are created for you in this directory as well:

### `index.js`

### `registerComponent.js`

This is a little Javascript code that allows you to use the `react_component`
view helper to load React components from a Rails view. Anytime that you
have a component that you want to be loaded through a Rails view, you will
need to register it in your `frontend/index.js` file.

## `helpers/react_helper.rb`

This is a view helper that allows you to load a React component within a
Rails view.

In your Rails view

```
  react_component 'container_name', props
```
