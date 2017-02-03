module VideosHelper
  def videojs_tag(object)
    video_tag object.file.url, object.file(:thumb), controls: true, class: 'video-js vjs-default-skin', id: 'myVideo', 'data-watermark-url' => object.file(:thumb)
  end
end
