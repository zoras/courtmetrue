$ ->
  $('a[title]').tooltip()
  $('.userProfile .btn-submit').on 'click', (e) ->
    formname = $(this).attr('name')
    tabname = $(this).attr('href')
    if $('#' + formname)[0].checkValidity()
      e.preventDefault()
      $('ul.nav li a[href="' + tabname + '"]').parent().removeClass 'disabled'
      $('ul.nav li a[href="' + tabname + '"]').trigger 'click'
    return
  $('ul.nav li').on 'click', (e) ->
    if $(this).hasClass('disabled')
      e.preventDefault()
      return false
    return
  return
