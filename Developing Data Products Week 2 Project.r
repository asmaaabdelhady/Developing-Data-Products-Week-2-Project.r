set.seed(2016)
library(leaflet)


dfzx    <- data.frame( lat = c(33.545246, 33.541919, 33.541857, 33.531265)
                     , lng = c(-117.003393, -117.010387, -117.034893, -117.014693) )

wineryPopups <- c(
  "<a href='http://www.masiadelavinya.com/'>Masia de la Vinya Winery</a>",
  "<a href='http://www.frangipaniwinery.com/'>Frangipani Estate Winery</a>",
  "<a href='http://www.palumbofamilyvineyards.com/'>Palumbo Family Vineyard</a>",
  "<a href='http://www.danzadelsolwinery.com/'>Danza del Sol Winery</a>"
)
 
wineryIcon <- makeIcon(
"https://raw.githubusercontent.com/zoplex/DevelopingDataProducts/master/WineGlass-50.png", 48, 48)  


mp <- dfzx %>% 
  leaflet() %>%
  addTiles() %>% setView(lng = -117.014693, lat = 33.531265,  zoom = 13) %>% 
  addMarkers(icon=wineryIcon, popup = wineryPopups)
mp
