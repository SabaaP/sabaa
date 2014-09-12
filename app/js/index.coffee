$ ->
  linksSelector = '#navigation li'
  links = $(linksSelector)
  $("#{linksSelector}, .carousel-control").tooltip()
  Mousetrap.bind 'left', ->
    move 'prev'
    return
  Mousetrap.bind 'right', ->
    move 'next'
    return
  Mousetrap.bind 'h', ->
    navigateTo 'home'
    return
  Mousetrap.bind 's', ->
    navigateTo 'services'
    return
  Mousetrap.bind 'c', ->
    navigateTo 'contact'
    return
  Mousetrap.bind 'a', ->
    navigateTo 'about'
    return
  $('a.clickMe').click ->
    navigateTo($(this).data('link'))
    false
  navigateTo = (to)->
    links.removeClass 'active'
    $(".#{to}").addClass 'active'
    $('body').scrollTo($("##{to}"), 400)
    return
  move = (to)->
    $('#myCarousel').carousel to
    return
  return
