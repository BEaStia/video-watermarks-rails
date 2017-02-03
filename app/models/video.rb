class Video < ApplicationRecord
  has_attached_file :file, styles: {
      medium: { geometry: '640x480', format: 'flv' },
      mobile: { geometry: '640x480', format: 'mp4' },
      thumb: { geometry: '100x100#', format: 'jpg', time: 10 }
  }, processors: [:transcoder]

  validates_attachment_content_type :file, content_type: /\Avideo\/.*\z/
end
