# For an explanation of the steroids.config properties, see the guide at
# http://guides.appgyver.com/steroids/guides/project_configuration/config-application-coffee/

steroids.config.name = "travlr"

# ## Start Location
steroids.config.location = "http://localhost/index.html"

## Tab Bar
steroids.config.tabBar.enabled = true
steroids.config.tabBar.tabs = [
  {
    title: "Featured"
    icon: "icons/star-outline@2x.png"
    location: "http://localhost/featured.html"
  },
  {
    title: "Discover"
    icon: "icons/location-outline@2x.png"
    location: "http://localhost/discover.html"
  },
  {
    title: "Visit"
    icon: "icons/pricetag-outline@2x.png"
    location: "http://localhost/visit.html"
  }
]

steroids.config.tabBar.tintColor = "#ffffff"
steroids.config.tabBar.tabTitleColor = "#444444"
steroids.config.tabBar.selectedTabTintColor = "#34ba9c"
# steroids.config.tabBar.selectedTabBackgroundImage = "icons/tab_bg@2x.png"
# steroids.config.tabBar.backgroundImage = ""

# ## Preloads
steroids.config.preloads = [
  {
    id: "featured"
    location: "http://localhost/featured.html"
  }
  {
    id: "discover"
    location: "http://localhost/discover.html"
  }
  {
    id: "visit"
    location: "http://localhost/visit.html"
  }
  {
    id: "reservation"
    location: "http://localhost/reservation.html"
  }
]

# ## Drawers
# steroids.config.drawers =
#   left:
#     id: "leftDrawer"
#     location: "http://localhost/leftDrawer.html"
#     showOnAppLoad: true
#     widthOfDrawerInPixels: 200
#   right:
#     id: "rightDrawer"
#     location: "http://localhost/rightDrawer.html"
#     showOnAppLoad: false
#     widthOfDrawerInPixels: 200
#   options:
#     centerViewInteractionMode: "Full"
#     closeGestures: ["PanNavBar", "PanCenterView", "TapCenterView"]
#     openGestures: ["PanNavBar", "PanCenterView"]
#     showShadow: true
#     stretchDrawer: true
#     widthOfLayerInPixels: 0

# ## Initial View
# steroids.config.initialView =
#   id: "initialView"
#   location: "http://localhost/initialView.html"

# ## Navigation Bar
steroids.config.navigationBar.tintColor = "#34ba9c"
steroids.config.navigationBar.titleColor = "#ffffff"
steroids.config.navigationBar.buttonTintColor = "#f5f5f5"

steroids.config.navigationBar.borderColor = "#3CAB93"
steroids.config.navigationBar.borderSize = 1

# steroids.config.navigationBar.landscape.backgroundImage = ""
# steroids.config.navigationBar.portrait.backgroundImage = ""

# ## Android Loading Screen
steroids.config.loadingScreen.tintColor = "#262626"

# ## iOS Status Bar
steroids.config.statusBar.enabled = true
steroids.config.statusBar.style = "light"

# ## File Watcher
# steroids.config.watch.exclude = ["www/my_excluded_file.js", "www/my_excluded_dir"]

# ## Pre- and Post-Make Hooks
# steroids.config.hooks.preMake.cmd = "echo"
# steroids.config.hooks.preMake.args = ["running yeoman"]
# steroids.config.hooks.postMake.cmd = "echo"
# steroids.config.hooks.postMake.args = ["cleaning up files"]

# ## Default Editor
# steroids.config.editor.cmd = "subl"
# steroids.config.editor.args = ["."]
