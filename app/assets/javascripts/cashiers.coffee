# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#cashiers').dataTable
    pageLength: 50
    ordering: false

  $('#cashiers-aberto').dataTable
    ordering: false
    paging: false
    lengthChange: false
