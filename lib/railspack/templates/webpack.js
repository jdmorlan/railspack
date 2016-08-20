import path from 'path'
import webpack from 'webpack'

module.exports = {
  entry: {
    app: path.join(__dirname, 'frontend', 'index.js')
  },

  output: {
    path: path.join(__dirname, 'app', 'assets', 'javascripts'),
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
