document.addEventListener 'turbolinks:load', ->
  $('#sortable').sortable update: (e, ui) ->
    $.ajax
      url: $(this).data('url')
      type: 'PATCH'
      data: $(this).sortable('serialize')

