// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery/dist/jquery.min.js
//= require jquery-ujs
//= require popper.js/dist/umd/popper.js
//= require bootstrap/dist/js/bootstrap.min.js
//= require dom-factory/dist/dom-factory.js
//= require material-design-kit/dist/material-design-kit.js
//= require bootstrap-datepicker
//= require activestorage
//= require Chart.bundle
//= require chartkick
//= require turbolinks
//= require moment 
//= require fullcalendar
//= require daterangepicker
//= require cocoon
//= require datatables
//= require_tree .

//template dashboard
$('.dropdown.notifications ul a.nav-link').click(function (e) {
  e.stopPropagation();
  $(this).tab('show');
});
// Self Initialize DOM Factory Components
domFactory.handler.autoInit()
// Connect button(s) to drawer(s)
var sidebarToggle = Array.prototype.slice.call(document.querySelectorAll('[data-toggle="sidebar"]'))
sidebarToggle.forEach(function (toggle) {
  toggle.addEventListener('click', function (e) {
    var selector = e.currentTarget.getAttribute('data-target') || '#default-drawer'
    var drawer = document.querySelector(selector)
    if (drawer) {
      drawer.mdkDrawer.toggle()
    }
  })
})

  $('[data-toggle="tooltip"]').tooltip({ container: 'body' });
  $('[data-toggle="popover"]').popover();
  
  $('.dropdown.notifications ul a.nav-link').click(function (e) {
    e.stopPropagation();
    $(this).tab('show');
  });
  
document.addEventListener("turbolinks:load", function() {
  domFactory.handler.upgradeAll()
})


///////////////////////////////////////////////////
//calendar
$(document).ready(function() {



  $('.calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay',
      },
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      eventSources: [{
        url: '/events.json'
    }]

    });
  })
});

$('.datepicker').datepicker();



$(document).on('turbolinks:load', function() {

  $('form').on('click', '.remove_record', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('tr').hide();
    return event.preventDefault();
  });

  $('form').on('click', '.add_fields', function(event) {
    var regexp, time;
    time = new Date().getTime();
    regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });







    $("table[role='datatable']").each(function(){
    $(this).DataTable({
      processing: true,
      serverSide: true,
      ajax: $(this).data('url')
    });
  });
  
});



