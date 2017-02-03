class VideoDecorator < Draper::Decorator
  delegate_all

  decorates :video

  def size
    object.file_meta['size']
  end

  def length
    object.file_meta['duration']
  end

  def file_size
    ((object.file_file_size) / 1024.0 / 1024.0).round(2)
  end

  def watermark
    h.word_wrap(object.watermark)
  end
end
