$(->

  scene = $('#scene')
  definition = $('#definition')
  definition.css('position','absolute')
  definition.css('left', (($(scene).width() - definition.outerWidth()) / 2) + $(scene).scrollLeft() + 'px')
  definition.css('top', '250px')

  logo = $('#einfachming')
  logo.css('position','absolute')
  logo.css('top', (($(scene).height() - logo.outerHeight()) / 2) + $(scene).scrollTop() + 'px')
  logo.css('left', (($(scene).width() - logo.outerWidth()) / 2) + $(scene).scrollLeft() + 'px')

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
      step: -> logo.css('left', (($(scene).width() - logo.outerWidth()) / 2) + $(scene).scrollLeft() + 'px')
      complete: -> definition.fadeIn()
    })
  )
)
