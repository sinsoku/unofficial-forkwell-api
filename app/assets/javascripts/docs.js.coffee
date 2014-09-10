$(document).on 'ready page:load', ->
    $('pre code').each (i, block) ->
      hljs.highlightBlock block
