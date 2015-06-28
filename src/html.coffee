
stir = require 'stir-template'

{div, html, head, title, link, body, script, meta, doctype} = stir

module.exports = (data) ->

  stir.render stir.doctype(),
    html null,
      head null,
        title null, data.title
        meta charset: 'utf-8'
        if data.production
          link rel: 'stylesheet', href: data.style
        script defer: true, src: data.common
        script defer: true, src: data.main
      body null, data.body
