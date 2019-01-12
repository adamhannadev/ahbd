

function eventCalendar() {
  return $('#calendar').fullCalendar({
    header: {
      left: 'prev,next',
      center: 'title',
      right: 'month, agendaWeek, agendaDay'
    },
    selectable: true,
    selectHelper: true,
    editable: true,
    eventLimit: true,
    nowIndicator: true,
    navLinks: true,
    slotDuration: "00:60:00",
    minTime: "09:30:00",
    maxTime: "22:00:00",
    timeFormat: "h:mma",
    defaultView: $(window).width() < 765 ? 'agendaDay':'month',
    businessHours: [ // specify an array instead
      {
        dow: [2, 3, 5], // Monday, Tuesday, Wednesday
        start: '09:30', // 8am
        end: '18:00' // 6pm
      }
    ],
    events: {
      url: '/lessons.json',
      startParam: 'lesson_date',
      endParam: 'end_date',
      color: '#a5c7ff',
      textColor: 'black',
      error: function() {
        alert('There was an error retrieving the lessons.');
      }
    },

  });
};

function clearCalendar() {
  $('#calendar').fullCalendar('delete');
  $('#calendar').html('');
};
