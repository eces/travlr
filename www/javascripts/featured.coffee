steroids.on 'ready', ->
  steroids.view.navigationBar.show 'HOSTEL LABS'

  document.addEventListener 'visibilitychange', ->
    if document.hidden
      # hidden
    else
      # shown
      steroids.view.setBackgroundColor '#f5f5f5'
      steroids.statusBar.show 
        style: 'light'
  , false 