module RQRCodePNG
  module QRCodeExtensions 
    # This method returns a 33x33 .png of the code
    def to_img(bg_color = ChunkyPNG::Color::WHITE)
      return Image.new(self).render(bg_color)
    end
  end
end

