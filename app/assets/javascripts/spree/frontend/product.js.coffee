Spree.ready ($) ->
  Spree.addImageHandlers = ->
    thumbnails = ($ '#product-images ul.thumbnails')
    ($ '#main-image').data 'selectedThumb', ($ '#main-image img').attr('src')
    thumbnails.find('li').eq(0).addClass 'selected'
    thumbnails.find('a').on 'click', (event) ->
      ($ '#main-image').data 'selectedThumb', ($ event.currentTarget).attr('href')
      ($ '#main-image').data 'selectedThumbId', ($ event.currentTarget).parent().attr('id')
      thumbnails.find('li').removeClass 'selected'
      ($ event.currentTarget).parent('li').addClass 'selected'
      false

    thumbnails.find('li').on 'mouseenter', (event) ->
      ($ '#main-image img[itemprop]').attr 'src', ($ event.currentTarget).find('a').attr('href')
      ($ '#main-image img[itemprop]').attr 'data-original', ($ this).find('a').first().attr('data-original')


    thumbnails.find('li').on 'mouseleave', (event) ->
      ($ '#main-image img[itemprop]').attr 'src', ($ '#main-image').data('selectedThumb')

  Spree.showVariantImage = (variantId) ->
    thumbLink = ($ 'li.tmb-' + variantId + ' a')
    src = thumbLink.attr 'href'
    if src
      ($ '#main-image img[itemprop]').attr 'src', src

#     ($ 'li.vtmb').hide()
#     alert(variantId)
#     ($ 'li.tmb-' + variantId).show()
#     currentThumb = ($ '#' + ($ '#main-image').data('selectedThumbId'))
#     if not currentThumb.hasClass('vtmb-' + variantId)
#       thumb = ($ ($ '#product-images ul.thumbnails li:visible.vtmb').eq(0))
#       thumb = ($ ($ '#product-images ul.thumbnails li:visible').eq(0)) unless thumb.length > 0
#       newImg = thumb.find('a').attr('href')
#       ($ '#product-images ul.thumbnails li').removeClass 'selected'
#       thumb.addClass 'selected'
#       ($ '#main-image img').attr 'src', newImg
#       ($ '#main-image').data 'selectedThumb', newImg
#       ($ '#main-image').data 'selectedThumbId', thumb.attr('id')

  Spree.updateVariantPrice = (variant) ->
    variantPrice = variant.data('price')
    ($ '.price.selling').text(variantPrice) if variantPrice
  radios = ($ '#product-variants input[type="radio"]')

  if radios.length > 0
    selectedRadio = ($ '#product-variants input[type="radio"][checked="checked"]')
    Spree.showVariantImage selectedRadio.attr('value')
    Spree.updateVariantPrice selectedRadio

  Spree.addImageHandlers()

  radios.click (event) ->
    Spree.showVariantImage @value
    Spree.updateVariantPrice ($ this)

