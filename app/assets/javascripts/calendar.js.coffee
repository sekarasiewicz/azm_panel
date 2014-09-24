$ ->
  $('.date').datetimepicker
    format: "YYYY-MM-DD"
    viewMode: "days"
    pickTime: false
  $('.year').datetimepicker
    format: "YYYY"
    viewMode: "years"
    minViewMode: "years"
    pickTime: false
