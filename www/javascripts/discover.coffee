steroids.on 'ready', ->

  document.addEventListener 'visibilitychange', ->
    if document.hidden
      # hidden
    else
      # shown
      # steroids.view.navigationBar.hide()
      steroids.view.navigationBar.show 'Discover New'
      steroids.view.setBackgroundColor '#f5f5f5'
      steroids.statusBar.show 
        style: 'light'
  , false 