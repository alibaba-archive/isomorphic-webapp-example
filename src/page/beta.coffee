
React = require 'react'
require '../styles/main.css'

Beta = React.createFactory require '../component/beta'

data = {}

React.render (Beta data), document.body
