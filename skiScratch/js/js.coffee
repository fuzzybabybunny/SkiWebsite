$ ->

  videoID = ["_BwwkFjAxzU", "YFp4X5Ivixs", "VkMiaSc4F4o", "b2dam2LjUV0", "YoiE_8Pu7zo", "c9VOjwb1tQ4"]
  console.log "videoID[1]: " + videoID[1]

  embedCodeGenerator = (thumbNumber) ->
    '<iframe width="1366" height="768" src="http://www.youtube.com/embed/' + videoID[thumbNumber] + '" frameborder="0" allowfullscreen></iframe>'

  thumbnailCodeGenerator = (thumbNumber) ->
    "<img src='http://img.youtube.com/vi/#{videoID[thumbNumber]}/0.jpg'></img>"

  console.log "embedCodeGenerator: " + embedCodeGenerator(1)

  console.log "thumbnailCodeGenerator: " + thumbnailCodeGenerator(1)

  $(".thumbnails").on "click", (e) ->

    id = $(@).attr("id")

    $('.mainVideo').html( embedCodeGenerator(id) )



  # $('.thumbnails').append( thumbnailCodeGenerator(1) )