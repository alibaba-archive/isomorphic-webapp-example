
configs =
  production: false
  common: 'http://localhost:8080/assets/common.js'
  alpha: 'http://localhost:8080/assets/alpha.js'
  beta: 'http://localhost:8080/assets/beta.js'

if process.env.NODE_ENV is 'production'
  assets = require '../build/assets'
  configs =
    production: true
    common: "/build/#{assets['common.[hash:6].js'][0]}"
    alpha: "/build/#{assets.alpha}"
    beta: "/build/#{assets.beta}"
    style: "/build/#{assets['common.[hash:6].js'][1]}"

module.exports = configs
