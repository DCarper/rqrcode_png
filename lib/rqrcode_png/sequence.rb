module RQRCodePNG
  class Sequence
    def initialize(qr_code)
      @qr_code = qr_code
    end

    # This method yields the vertices of the dark squares
    def dark_squares_only(&block)
      @qr_code.modules.each_index do |row|
        @qr_code.modules.each_index do |column|
          if @qr_code.dark?(row, column)
            yield row, column
          end
        end
      end
    end

    # returns the image size by looking at how long the first line of the code is
    def img_size
      @img_size ||= @qr_code.to_s.split("\n").first.size()
    end

    # Returns the border, 1/10 of the img size
    def border_width()
      @border ||= img_size() / 10
    end
  end
end

