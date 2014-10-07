$(document).on "ready page:load", ->
  $("[data-role='slider']").slider
    min: 1
    max: 10
    slide: (event, ui) ->
      target = $(this).data("target")
      console.log(target)
      val = ui.value
      console.log("setting the value: #{val}")
      $(target).val(val)

