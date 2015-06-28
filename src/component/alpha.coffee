
React = require 'react'

div = React.createFactory 'div'

module.exports = React.createClass
  displayName: 'alpha'

  render: ->
    div null,
      'component alpha'
