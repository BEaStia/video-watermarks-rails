class WaterMarkerWorker
  include Sidekiq::Worker

  def perform(watermark)
    granite = Magick::ImageList.new('xc:white')
    canvas = Magick::ImageList.new
    canvas.new_image(300, 100, Magick::TextureFill.new(granite))

    text = Magick::Draw.new
    text.font_family = 'helvetica'
    text.pointsize = 52
    text.gravity = Magick::CenterGravity

    text.annotate(canvas, 0, 0, 2, 2, watermark) {
      self.fill = 'black'
    }

    canvas.write('rubyname.gif')
  end
end
