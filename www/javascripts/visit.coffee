steroids.on 'ready', ->

  document.addEventListener 'visibilitychange', ->
    if document.hidden
      # hidden
    else
      # shown
      # steroids.view.navigationBar.hide()
      steroids.view.navigationBar.show 'Hi, Jiho'
      steroids.view.setBackgroundColor '#f5f5f5'
      steroids.statusBar.show 
        style: 'light'
  , false 

  $('#hey').click ->
    view = new steroids.views.WebView
      id: 'reservation'
      location: 'reservation.html'
    steroids.layers.push view