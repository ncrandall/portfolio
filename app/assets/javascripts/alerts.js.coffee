$(document).ready ->
  if $(".alert").length > 0
    setTimeout (->
      $(".alert").hide()
    ), 3000