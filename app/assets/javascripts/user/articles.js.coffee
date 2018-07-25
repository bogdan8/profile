document.addEventListener 'turbolinks:load', ->
  $input = $('[data-behavior=\'autocomplete\']')
  options =
    getValue: 'title'
    url: (phrase) ->
      '/users/search.json?q=' + phrase
    categories: [ {
      listLocation: 'articles'
      header: '<strong>Articles</strong>'
    } ]
    list: onChooseEvent: ->
      url = $input.getSelectedItemData().url
      $input.val ''
      Turbolinks.visit url
      return
  $input.easyAutocomplete options
  return
