import path from 'path'
import webpack from 'webpack'

module.exports = {
  context: __dirname,

  entry: {
    app: path.join(__dirname, 'src', 'index.js')
  },

  output: {
    path: path.join(__dirname, 'assets', 'javascripts'),
    filename: 'frontend.js'
  },

  module: {
    loaders: [
      { test: /\.js?$/, exclude: /(node_modules)/, loader: 'babel' }
    ]
  },

  resolve: {
     root: path.resolve('./frontend'),
     extensions: ['', '.js', '.jsx']
  }
}
