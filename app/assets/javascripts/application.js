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
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require moment 
//= require fullcalendar
//= require daterangepicker
//= require_tree .


$(document).ready(function() {



  $('.calendar').each(function(){
    var calendar = $(this);
    calendar.fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay'
      },
      selectable: true,
      selectHelper: true,
      editable: true,
      eventLimit: true,
      eventSources: [{
        url: '/events.json'
    }]

      //events: '/events.json',

        /**events: [
    {
      title: String(event.user_id),
      start: '2018-09-19T13:13:55.008',
      end: '2015-09-19T13:14:55.008'
    },
    {
      title: 'Event Title2',
      start: '2018-10-17T13:13:00-0400',
      end: '2018-10-19T13:14:00-0400'
    }
  ]

  $.getJSON("events.json", function(data) {
    var events = data.events;
    var allevents;
    for (i = 0; i < events.length; i++) {
    allevents = "  events: [    {      title: String(events[i].description),      start: '2018-09-19T13:13:55.008',      end: '2015-09-19T13:14:55.008'    },"
    }
    events: allevents;
  });**/

    });
  })
});