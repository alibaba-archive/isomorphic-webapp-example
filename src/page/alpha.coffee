
React = require 'react'
require '../styles/main.css'

Alpha = React.createFactory require '../component/alpha'

data = {}

React.render (Alpha data), document.body
