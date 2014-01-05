$(->

  definition = $('#definition')
  definition.css('position','absolute')
  definition.css('left', (($(window).width() - definition.outerWidth()) / 2) + $(window).scrollLeft() + 'px')
  definition.css('top', '250px')

  logo = $('#einfachming')
  logo.css('position','absolute')
  logo.css('top', (($(window).height() - logo.outerHeight()) / 2) + $(window).scrollTop() + 'px')
  logo.css('left', (($(window).width() - logo.outerWidth()) / 2) + $(window).scrollLeft() + 'px')

  logo.fadeIn(1000, ->
    logo.animate({
      top: '50'
    }, {
      queue: false
      duration: 1000
    })

    $('img', '#einfachming').animate({
      height: '150'
      width: '129'
    }, {
      queue: false
      duration: 1000
      step: -> logo.css('left', (($(window).width() - logo.outerWidth()) / 2) + $(window).scrollLeft() + 'px')
      complete: -> definition.fadeIn()
    })
  )
)
