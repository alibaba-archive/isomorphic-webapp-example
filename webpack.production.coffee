
webpack = require 'webpack'
fs = require 'fs'
ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports =
  entry:
    alpha: './src/page/alpha'
    beta: './src/page/beta'
  debug: false
  output:
    path: 'build'
    publicPath: '/build/'
    filename: '[name].[hash:6].js'
  module:
    loaders: [
      test: /\.coffee$/, loader: 'coffee-loader'
    ,
      test: /\.css$/, loader: ExtractTextPlugin.extract('style-loader', 'css-loader')
    ]
  resolve:
    extensions: ['', '.js', '.coffee']
  plugins: [
    new webpack.DefinePlugin
      "process.env":
        NODE_ENV: JSON.stringify("production")
    new webpack.optimize.CommonsChunkPlugin('common.[hash:6].js')
    new ExtractTextPlugin('css/common.[chunkhash:6].css')
    new webpack.optimize.UglifyJsPlugin
        compress: { warnings: false}
        sourceMap: false
    -> @plugin 'done', (stats) ->
      fs.writeFileSync 'build/assets.json', JSON.stringify(stats.toJson().assetsByChunkName)
  ]
