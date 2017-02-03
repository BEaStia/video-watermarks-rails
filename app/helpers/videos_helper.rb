module VideosHelper
  def videojs_tag(object, type)
    video_tag type, object.file(:thumb),
              controls: true,
              class: 'video-js vjs-default-skin',
              id: 'myVideo',
              'data-watermark-text' => object.watermark
  end
end
