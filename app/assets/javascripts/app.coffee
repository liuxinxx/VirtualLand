$ ->
  #验证码
  $(".rucaptcha-image").click ->
    img = $(this)
    currentSrc = img.attr('src');
    img.attr('src', currentSrc.split('?')[0] + '?' + (new Date()).getTime());
    return false

