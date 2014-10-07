$(document).on "ready page:load", ->
  $("[data-role='slider']").slider
    min: 0
    max: 10
    slide: (event, ui) ->
      target = $(this).data("target")
      target_display = $(this).data("target-display")
      val = ui.value
      $(target).val(val)
      $(target_display).text(val)
    step: 0.5

  $(document).on "click", "[data-role='rating-button']", (evt) ->
    evt.preventDefault()
    $("[data-type='#{$(this).data("type")}']").removeClass("selected")
    $(this).addClass("selected")
    target = $(this).data("target")
    $(target).val($(this).data("value"))

