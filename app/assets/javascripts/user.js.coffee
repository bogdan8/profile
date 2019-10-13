#= require rails-ujs
#= require turbolinks
#= require jquery3
#= require jquery_ujs
#= require jquery-ui/widgets/sortable
#= require popper
#= require bootstrap-sprockets
#= require tinymce
#= require jquery.easy-autocomplete
#= require user/articles
#= require user/sort
#= require cocoon
#= require select2-full

document.addEventListener 'turbolinks:load', ->
  $('.js-select2').select2
    allowClear: true
    width: 'resolve'
		theme: 'bootstrap'

