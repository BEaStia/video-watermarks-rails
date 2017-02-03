# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


setTimeout(()=>
  if $('#myVideo').length > 0
    console.log("starting video player...")
    watermark_url = $('#myVideo').data('watermark-url')
    player = videojs('myVideo')
    player.watermark
      type: 'text'
      text: $('#myVideo').data('watermark-text')
      position: 'center'
      no_fade: true
      size: '320x240'
, 1000)
