module RQRCodePNG
  class Image
    BLACK = ::ChunkyPNG::Color::BLACK
    WHITE = ::ChunkyPNG::Color::WHITE		

    def initialize(qr_code)
      @sequence = Sequence.new(qr_code)
    end

    # Returns an image file of the QR Code
    def render
      png = blank_img()
      @sequence.dark_squares_only do |x, y|
        png[y + @sequence.border_width(), x + @sequence.border_width()] = BLACK
      end
      return png
    end

    private

    # Returns the size of the image
    def img_size()
      @img_size ||= @sequence.img_size() + @sequence.border_width() * 2
    end

    # Returns an appropriately sized, blank (white) image
    def blank_img
      ::ChunkyPNG::Image.new(img_size(), img_size(), WHITE)
    end
  end
end

