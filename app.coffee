
express = require 'express'
React = require 'react'
configs = require './src/configs'
path = require 'path'

html = require './src/html'
Alpha = React.createFactory require './src/component/alpha'
Beta = React.createFactory require './src/component/beta'

app = express()

app.get '/page/alpha', (req, res) ->
  data =
    production: configs.production
    title: 'alpha'
    body: React.renderToString (Alpha {})
    common: configs.common
    main: configs.alpha
    style: configs.style
  res.end (html data)

app.get '/page/beta', (req, res) ->
  data =
    production: configs.production
    title: 'beta'
    body: React.renderToString (Beta {})
    common: configs.common
    main: configs.beta
    style: configs.style
  res.end (html data)

app.use '/build', express.static path.join __dirname, 'build'

app.listen 3000
console.log 'listen at localhost:3000'
