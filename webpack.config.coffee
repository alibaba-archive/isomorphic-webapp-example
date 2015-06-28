
webpack = require 'webpack'

module.exports =
  entry:
    alpha: './src/page/alpha'
    beta: './src/page/beta'
  debug: true
  output:
    path: 'build'
    publicPath: 'http://localhost:8080/assets/'
    filename: '[name].js'
  module:
    loaders: [
      test: /\.coffee$/, loader: 'coffee-loader'
    ,
      test: /\.css$/, loader: 'style!css'
    ]
  resolve:
    extensions: ['', '.js', '.coffee']
  plugins: [
    new webpack.HotModuleReplacementPlugin(),
    new webpack.optimize.CommonsChunkPlugin('common.js')
  ]
